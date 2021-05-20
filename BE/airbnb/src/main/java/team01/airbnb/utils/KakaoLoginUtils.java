package team01.airbnb.utils;

import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

@PropertySource("classpath:custom-oauth.properties")
@RequiredArgsConstructor
@Configuration
public class KakaoLoginUtils {

    private final Environment environment;

    public HttpEntity<MultiValueMap<String, String>> getTokenRequestEntity(String code) {
        // HttpHeader 오브젝트 생성
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
        // HttpBody 오브젝트 생성
        MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
        params.add("grant_type", getGrantType());
        params.add("client_id", getClientId());
        params.add("redirect_uri", getRedirectUri());
        params.add("code", code);
        // HttpHeader와 HttpBody를 하나의 오브젝트에 담기
        return new HttpEntity<>(params, headers);
    }

    public HttpEntity<MultiValueMap<String, String>> getKakaoProfileRequestEntity(String accessToken) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "Bearer " + accessToken);
        headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
        return new HttpEntity<>(headers);
    }

    public HttpEntity<MultiValueMap<String, String>> getLogoutRequestEntity(String accessToken) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "Bearer " + accessToken);
        return new HttpEntity<>(headers);
    }

    public String getGrantType() {
        return environment.getProperty("kakao-grant-type");
    }

    public String getClientId() {
        return environment.getProperty("kakao-client-id");
    }

    public String getRedirectUri() {
        return environment.getProperty("kakao-redirect-uri");
    }

    public String getCodeUri() {
        return environment.getProperty("kakao-code-uri");
    }

    public String getTokenUri() {
        return environment.getProperty("kakao-token-uri");
    }

    public String getProfileUri() {
        return environment.getProperty("kakao-profile-uri");
    }

    public String getLogoutUri() {
        return environment.getProperty("kakao-logout-uri");
    }
}
