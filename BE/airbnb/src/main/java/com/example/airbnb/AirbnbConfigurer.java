package com.example.airbnb;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class AirbnbConfigurer implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOrigins("*")
                .allowedMethods("GET", "POST");
        // delete 메서드 대응 안됨
        // pre-flight 문제 : post 메서드에서는 먼저 접근할 수 있는지를 확인, 옵션을 확인해야함. (메서드가  Options형)
    }
}
