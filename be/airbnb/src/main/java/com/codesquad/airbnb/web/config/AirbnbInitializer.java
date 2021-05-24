package com.codesquad.airbnb.web.config;

import com.codesquad.airbnb.web.config.properties.GithubApi;
import com.codesquad.airbnb.web.config.properties.ServerSecret;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class AirbnbInitializer implements CommandLineRunner {

    private final ServerSecret serverSecret;
    private final GithubApi githubApi;

    public AirbnbInitializer(ServerSecret serverSecret, GithubApi githubApi) {
        this.serverSecret = serverSecret;
        this.githubApi = githubApi;
    }

    @Override
    public void run(String... args) throws Exception {
        log.info("Start Airbnb initializer");
        log.info("serverSecret : {}", serverSecret);
        log.info("githubApi : {}", githubApi);
    }
}
