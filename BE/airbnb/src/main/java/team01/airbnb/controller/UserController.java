package team01.airbnb.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
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
import team01.airbnb.domain.KakaoProfile;
import team01.airbnb.domain.OAuthToken;
import team01.airbnb.domain.RoleType;
import team01.airbnb.domain.User;
import team01.airbnb.service.UserService;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

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

        // Json 데이터를 자바 오브젝트로 처리
        ObjectMapper objectMapper = new ObjectMapper();
        OAuthToken oauthToken = null;
        try {
            oauthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        System.out.println("카카오 엑세스 토큰 : " + oauthToken.getAccess_token());

        RestTemplate rt2 = new RestTemplate();

        // HttpHeader 오브젝트 생성
        HttpHeaders headers2 = new HttpHeaders();
        headers2.add("Authorization", "Bearer " + oauthToken.getAccess_token());
        headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

        // HttpHeader와 HttpBody를 하나의 오브젝트에 담기
        HttpEntity<MultiValueMap<String, String>> kakaoProfileRequest2 = new HttpEntity<>(headers2);

        // Http 요청하기 - Post 방식으로 - 그리고 response 변수의 응답 받음
        ResponseEntity<String> response2 = rt2.exchange(
                "https://kapi.kakao.com/v2/user/me",
                HttpMethod.POST,
                kakaoProfileRequest2,
                String.class
        );

        System.out.println(response2.getBody());

        // Json 데이터를 자바 오브젝트로 처리
        ObjectMapper objectMapper2 = new ObjectMapper();
        KakaoProfile kakaoProfile = null;

        try {
            kakaoProfile = objectMapper2.readValue(response2.getBody(), KakaoProfile.class);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        System.out.println("카카오 아이디(번호) : " + kakaoProfile.getId());
        System.out.println("카카오 닉네임 : " + kakaoProfile.getProperties().getNickname());
        System.out.println("카카오 이메일 : " + kakaoProfile.getKakao_account().getEmail());

        System.out.println("유저네임 : " + kakaoProfile.getProperties().getNickname());
        System.out.println("이메일 : " + kakaoProfile.getKakao_account().getEmail());

        User user = User.builder()
                .username(kakaoProfile.getProperties().getNickname())
                .email(kakaoProfile.getKakao_account().getEmail())
                .role(RoleType.USER)
                .build();

        int result = userService.join(user);
        System.out.println("result : " + result);

        return response2.getBody();
    }
}
