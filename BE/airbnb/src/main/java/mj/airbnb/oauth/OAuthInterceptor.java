package mj.airbnb.oauth;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.auth0.jwt.interfaces.JWTVerifier;
import mj.airbnb.util.OauthUtil;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OAuthInterceptor implements HandlerInterceptor {

    private final JWTVerifier verifier;
    private final String TOKEN_TYPE = "Bearer";

    public OAuthInterceptor(OauthUtil oauthUtil) {

        Algorithm algorithm = Algorithm.HMAC256(oauthUtil.getJwtSecret());
        verifier = JWT.require(algorithm)
                .withIssuer(oauthUtil.getJwtIssuer())
                .build();
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String token = getJwtToken(request);
        try {
            DecodedJWT jwt = verifier.verify(token);
            GitHubUser user = new GitHubUser();
            user.setId(jwt.getClaim("login").asString());
            user.setName(jwt.getClaim("name").asString());
            request.setAttribute("user", user);
            return true;
        } catch (JWTVerificationException exception) {
            //Invalid signature/claims
            throw new RuntimeException(exception);
        }
    }

    private String getJwtToken(HttpServletRequest request) {
        String authorization = request.getHeader("Authorization");
        if (authorization.startsWith(TOKEN_TYPE)) {
            return authorization.substring(TOKEN_TYPE.length()).trim();
        }
        throw new RuntimeException("토큰 없음");
    }
}
