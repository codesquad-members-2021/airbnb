package com.codesquad.airbnb.web.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class AirbnbInitializer implements CommandLineRunner {

    private final ServerSecret serverSecret;

    public AirbnbInitializer(ServerSecret serverSecret) {
        this.serverSecret = serverSecret;
    }

    @Override
    public void run(String... args) throws Exception {
        log.info("Start Airbnb initializer");
        log.info("clientId : {}", serverSecret.getId());
        log.info("clientSecret : {}", serverSecret.getSecret());
    }
}
