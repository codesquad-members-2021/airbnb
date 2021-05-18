package team01.airbnb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import team01.airbnb.domain.KakaoProfile;
import team01.airbnb.domain.User;
import team01.airbnb.service.UserService;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/auth/kakao/callback")
    public @ResponseBody String kakaoCallBack(String code) {
        String accessToken = userService.getAccessToken(code);
        KakaoProfile kakaoProfile = userService.getKakaoProfile(accessToken);
        User kakaoUser = User.fromKakaoProfile(kakaoProfile);
        // 가입자 혹은 비가입자 체크해서 처리
        User originUser = userService.findByUser(kakaoUser);
        if (originUser == null) {
            userService.join(kakaoUser);
        }
        // todo: 로그인 처리

        return "카카오 프로필로 회원가입 완료";
    }
}
