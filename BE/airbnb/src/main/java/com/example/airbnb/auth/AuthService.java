package com.example.airbnb.auth;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.example.airbnb.exception.JWTCreationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Optional;

@Service
public class AuthService {
    private final Logger logger = LoggerFactory.getLogger(AuthService.class);

    public AuthDTO githubToken(String code) {

        logger.info("code : {}", code);
        RestTemplate gitHubRequest = new RestTemplate();

        GithubAccessTokenResponse accessToken = getAccessToken(code, gitHubRequest)
                .orElseThrow(() -> new RuntimeException("바디 없음"));


        User user = getUserFromGitHub(accessToken, gitHubRequest)
                .orElseThrow(() -> new RuntimeException("바디 없음"));

        String jwt = getJwt(user);
        logger.info("accessToken : {}", accessToken);
        logger.info("gitHubRequest : {}", gitHubRequest);
        logger.info("jwt : {}", jwt);
        logger.info("user : {} ", user);
        return new AuthDTO(jwt, user.getAvatar_url(), user.getLogin());
    }

    private String getJwt(User user) {

        try {
            Algorithm algorithm = Algorithm.HMAC256("secret");
            String ISSUER = "";
            return JWT.create()
                    .withClaim("login", user.getLogin())
                    .withClaim("name", user.getName())
                    .withIssuer(ISSUER)
                    .sign(algorithm);
        } catch (JWTCreationException exception) {
            //Invalid Signing configuration /or/ Couldn't convert Claims.
            throw new RuntimeException(exception);
        }
    }

    private Optional<User> getUserFromGitHub(GithubAccessTokenResponse accessToken, RestTemplate gitHubRequest) {

        String GITHUB_USER_URI = "https://api.github.com/user";

        RequestEntity<Void> request = RequestEntity
                .get(GITHUB_USER_URI)
                .header("Accept", "application/json")
                .header("Authorization", "token " + accessToken.getAccessToken())
                .build();

        ResponseEntity<User> response = gitHubRequest
                .exchange(request, User.class);

        return Optional.ofNullable(response.getBody());
    }

    private Optional<GithubAccessTokenResponse> getAccessToken(String code, RestTemplate gitHubRequest) {

        String GITHUB_ACCESS_TOKEN_URI = "https://github.com/login/oauth/access_token";
        String CLIENT_ID = "c7adc71d1700acad7b68";
        String CLIENT_SECRET = "비번";

        RequestEntity<GithubAccessTokenRequest> request = RequestEntity
                .post(GITHUB_ACCESS_TOKEN_URI)
                .header("Accept", "application/json")
                .body(new GithubAccessTokenRequest(CLIENT_ID, CLIENT_SECRET, code));

        ResponseEntity<GithubAccessTokenResponse> response = gitHubRequest
                .exchange(request, GithubAccessTokenResponse.class);

        return Optional.ofNullable(response.getBody());
    }
}
