package airbnb.auth;

import airbnb.auth.jwt.JwtUtil;
import airbnb.domain.User;
import airbnb.service.UserService;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

@RestController
@RequiredArgsConstructor
public class LoginController {
    private final AuthService authService;
    private final UserService userService;
    private final JwtUtil jwtUtil;

    @GetMapping("/auth/social/callback/github")
    public RedirectView loginFE(@RequestParam(value = "code") String code) {
        String accessToken = authService.getAccessToken(code);
        GithubUser githubUser = authService.getGithubUser(accessToken);
        User loginUser = userService.findLoginUser(githubUser);
        return new RedirectView(jwtUtil.createQueryString(loginUser));
    }

    @GetMapping("/github/login")
    public LoginResponse loginIOS(@RequestParam String token) {
        GithubUser githubUser = authService.getGithubUser(token);
        User loginUser = userService.findLoginUser(githubUser);
        return jwtUtil.createLoginResponse(loginUser);
    }
}
