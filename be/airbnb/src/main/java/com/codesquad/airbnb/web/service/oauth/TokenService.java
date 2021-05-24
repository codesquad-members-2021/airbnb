package com.codesquad.airbnb.web.service.oauth;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.codesquad.airbnb.web.config.properties.JwtSecret;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.util.Date;

import static com.codesquad.airbnb.web.constants.TokenConstants.CLAIM_KEY_USER_ID;

@Service
public class TokenService {
    private final JwtSecret jwtSecret;
    private final JWTVerifier jwtVerifier;

    public TokenService(JwtSecret jwtSecret) {
        this.jwtSecret = jwtSecret;
        jwtVerifier = JWT.require(Algorithm.HMAC256(jwtSecret.getSecretKey()))
                .withIssuer(jwtSecret.getIssuer())
                .build();
    }

    public String createToken(int userId) {
        LocalDateTime expireAt = LocalDateTime.now().plusSeconds(jwtSecret.getExpireSecond());
        return JWT.create()
                .withIssuer(jwtSecret.getIssuer())
                .withClaim(CLAIM_KEY_USER_ID, userId)
                .withExpiresAt(toDate(expireAt))
                .sign(Algorithm.HMAC256(jwtSecret.getSecretKey()));
    }

    private Date toDate(LocalDateTime localDateTime) {
        return Date.from(localDateTime.toInstant(ZoneOffset.of("+9")));
    }

    public void verifyToken(String jwt) {
        jwtVerifier.verify(jwt);
    }


}
