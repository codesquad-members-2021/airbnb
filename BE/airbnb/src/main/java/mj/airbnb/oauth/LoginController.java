package mj.airbnb.oauth;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import mj.airbnb.util.OauthUtil;
import mj.airbnb.util.UriUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.Optional;

@RestController
@RequestMapping("/api/login")
public class LoginController {

    private static final String WEB_CLIENT = "web";
    private static final String iOS_CLIENT = "ios";

    private final Logger logger = LoggerFactory.getLogger(LoginController.class);
    private final UriUtil uriUtil;
    private final OauthUtil oauthUtil;
    private String clientId;
    private String secretId;

    public LoginController(UriUtil uriUtil, OauthUtil oauthUtil) {
        this.uriUtil = uriUtil;
        this.oauthUtil = oauthUtil;
    }

    @GetMapping("/auth")
    public ResponseEntity<Jwt> callbackByOauth(@RequestParam String client, @RequestParam String code) {
        logger.info("code: {}", code);

        RestTemplate gitHubRequest = new RestTemplate();

        if (client.equals(iOS_CLIENT)) {
            clientId = oauthUtil.getClientIdForIos();
            secretId = oauthUtil.getSecretIdForIos();
        }

        if (client.equals(WEB_CLIENT)) {
            clientId = oauthUtil.getClientId();
            secretId = oauthUtil.getSecretId();
        }

        GithubAccessTokenResponse accessToken = getTokenByTempCode(code, gitHubRequest, clientId, secretId)
                .orElseThrow(() -> new RuntimeException("no access Token"));

        GitHubUser gitHubUser = getUserInfo(accessToken, gitHubRequest)
                .orElseThrow(() -> new RuntimeException("no Github User"));

        String jwt = getJwt(gitHubUser);

        return ResponseEntity.ok(new Jwt(jwt));
    }

    private String getJwt(GitHubUser gitHubUser) {
        Algorithm algorithm = Algorithm.HMAC256(oauthUtil.getJwtSecret());

        return JWT.create()
                .withClaim("id", gitHubUser.getId())
                .withClaim("name", gitHubUser.getName())
                .withIssuer(oauthUtil.getJwtIssuer())
                .withExpiresAt(toDate(LocalDateTime.now().plusSeconds(oauthUtil.getJwtExpireSecs())))
                .sign(algorithm);
    }

    private Optional<GithubAccessTokenResponse> getTokenByTempCode(String code, RestTemplate gitHubRequest, String clientId, String secretId) {
        RequestEntity<GithubAccessTokenRequest> request = RequestEntity
                .post(uriUtil.getTokenUri())
                .header("Accept", "application/json")
                .body(new GithubAccessTokenRequest(clientId, secretId, code));

        ResponseEntity<GithubAccessTokenResponse> response = gitHubRequest
                .exchange(request, GithubAccessTokenResponse.class);

        return Optional.ofNullable(response.getBody());
    }

    private Date toDate(LocalDateTime localDateTime) {
        return Date.from(localDateTime.atZone(ZoneId.systemDefault()).toInstant());
    }

    private Optional<GitHubUser> getUserInfo(GithubAccessTokenResponse accessToken, RestTemplate gitHubRequest) {

        RequestEntity<Void> request = RequestEntity
                .get(uriUtil.getUserInfoUri())
                .header("Accept", "application/json")
                .header("Authorization", "token " + accessToken.getAccessToken())
                .build();

        ResponseEntity<GitHubUser> response = gitHubRequest
                .exchange(request, GitHubUser.class);

        return Optional.ofNullable(response.getBody());
    }
}
