package com.codesquad.airbnb.web.config;

import com.codesquad.airbnb.web.config.properties.GithubApi;
import com.codesquad.airbnb.web.config.properties.JwtSecret;
import com.codesquad.airbnb.web.config.properties.OAuthSecret;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class AirbnbInitializer implements CommandLineRunner {

    private final OAuthSecret OAuthSecret;
    private final GithubApi githubApi;
    private final JwtSecret jwtSecret;

    public AirbnbInitializer(com.codesquad.airbnb.web.config.properties.OAuthSecret OAuthSecret, GithubApi githubApi, JwtSecret jwtSecret) {
        this.OAuthSecret = OAuthSecret;
        this.githubApi = githubApi;
        this.jwtSecret = jwtSecret;
    }

    @Override
    public void run(String... args) throws Exception {
        log.info("Start Airbnb initializer");
        log.info("serverSecret : {}", OAuthSecret);
        log.info("githubApi : {}", githubApi);
        log.info("jwtSecret : {}", jwtSecret);
    }
}
