package com.codesquad.coco.global;

import com.codesquad.coco.global.auth.AuthInterceptor;
import com.codesquad.coco.global.auth.GitHubDeviceTypeConvertor;
import com.codesquad.coco.global.auth.UserIdHandlerMethodResolver;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.List;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    private AuthInterceptor authInterceptor;
    private UserIdHandlerMethodResolver userIdHandlerMethodResolver;

    public WebConfig(AuthInterceptor authInterceptor, UserIdHandlerMethodResolver userIdHandlerMethodResolver) {
        this.authInterceptor = authInterceptor;
        this.userIdHandlerMethodResolver = userIdHandlerMethodResolver;
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(authInterceptor)
                .addPathPatterns("/rooms/**");
    }

    @Override
    public void addArgumentResolvers(List<HandlerMethodArgumentResolver> resolvers) {
        resolvers.add(userIdHandlerMethodResolver);
    }

    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverter(new GitHubDeviceTypeConvertor());
    }
}
