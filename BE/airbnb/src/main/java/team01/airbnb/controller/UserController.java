package team01.airbnb.controller;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

@Controller
public class UserController {

    @GetMapping("/auth/kakao/callback")
    public @ResponseBody
    String kakaoCallBack(String code) {

        // POST방식으로 key=value 데이터를 요청 (카카오 쪽으로)
        RestTemplate rt = new RestTemplate();

        // HttpHeader 오브젝트 생성
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

        // bodyBody 오브젝트 생성
        MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
        // 변수화 할 것
        params.add("grant_type", "authorization_code");
        params.add("client_id", "c0485ea057fe29a3dc72ae79e4047529");
        params.add("edirect_uri", "http://localhost:8080/auth/kakao/callback");
        params.add("code", code);

        // HttpHeader와 HttpBody를 하나의 오브젝트에 담기
        HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest = new HttpEntity<>(params, headers);

        // Http 요청하기 - Post 방식으로 - 그리고 response 변수의 응답 받음
        ResponseEntity<String> response = rt.exchange(
                "https://kauth.kakao.com/oauth/token",
                HttpMethod.POST,
                kakaoTokenRequest,
                String.class
        );

        return "카카오 토큰 요청 완료! 토큰 요청에 대한 응답 : " + response;
    }
}
