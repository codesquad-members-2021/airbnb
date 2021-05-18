package team01.airbnb.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import team01.airbnb.config.auth.LoginUser;
import team01.airbnb.config.auth.dto.SessionUser;
import team01.airbnb.utils.KakaoLoginUtils;

@Controller
public class HomeController {

    private final KakaoLoginUtils kakaoLoginUtils;

    public HomeController(KakaoLoginUtils kakaoLoginUtils) {
        this.kakaoLoginUtils = kakaoLoginUtils;
    }

    @GetMapping("/")
    public ModelAndView home(@LoginUser SessionUser user) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("index");
        mav.addObject("kakao-client-id", kakaoLoginUtils.getClientId());
        mav.addObject("kakao-redirect-uri", kakaoLoginUtils.getRedirectUri());
        if (user != null) {
            mav.addObject("username", user.getUsername());
        }
        return mav;
    }
}
