package team01.airbnb.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import team01.airbnb.config.auth.dto.SessionUser;
import team01.airbnb.domain.User;
import team01.airbnb.dto.SocialProfile;
import team01.airbnb.service.UserService;

import javax.servlet.http.HttpSession;

@RequiredArgsConstructor
@Controller
public class UserController {

    private final UserService userService;
    private final HttpSession httpSession;

    @GetMapping("/auth/kakao/callback")
    public String kakaoCallBack(@RequestParam("code") String code) {
        String accessToken = userService.getAccessToken(code);
        SocialProfile kakaoProfile = userService.getKakaoProfile(accessToken);
        User kakaoUser = User.fromSocialProfile(kakaoProfile);
        httpSession.setAttribute("user", new SessionUser(kakaoUser));
        httpSession.setAttribute("access_token", accessToken);
        return "redirect:/";
    }

    @GetMapping("/logout")
    public String kakaoLogout() {
        String accessToken = (String) httpSession.getAttribute("access_token");
        httpSession.removeAttribute("user");
        httpSession.removeAttribute("access_token");
        userService.kakaoLogout(accessToken);
        return "redirect:/";
    }
}
