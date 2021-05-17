package team01.airbnb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

    @GetMapping("/auth/kakao/callback")
    public @ResponseBody String kakaoCallBack(String code) {
        return "카카오 인증 완료! 코드값 : " + code;
    }
}
