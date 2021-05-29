package com.codesquad.coco.user;

import com.codesquad.coco.oauth.ServerKey;
import com.codesquad.coco.oauth.gitoauth.GitOauth;
import com.codesquad.coco.oauth.gitoauth.GitUserInfoDTO;
import jwt.JWT;
import jwt.JWTUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import static com.codesquad.coco.oauth.gitoauth.GitURI.*;

@Controller
public class LoginController {

    private ServerKey serverKey;
    private GitOauth deskTopGitGitOauth;
    private GitOauth iOSGitGitOauth;
    private UserService userService;

    public LoginController(ServerKey serverKey, UserService userService) {
        this.userService = userService;
        this.serverKey = serverKey;
        this.deskTopGitGitOauth = new GitOauth(
                serverKey.getDeskTopClientId(),
                serverKey.getDeskTopClientSecret(),
                DESKTOP_REDIRECT_URI.getUri(), ACCESS_TOKEN_URI.getUri(), USER_INFO_URI.getUri());
        this.iOSGitGitOauth = new GitOauth(
                serverKey.getiOSClientId(),
                serverKey.getiOSClientSecret(),
                DESKTOP_REDIRECT_URI.getUri(), ACCESS_TOKEN_URI.getUri(), USER_INFO_URI.getUri());
    }


    @PostMapping("/user/auth")
    public JWT loginDeskTop(@RequestParam String code) {
        GitUserInfoDTO userInfo = userService.loginByGitOauth(deskTopGitGitOauth, code);
        String jwt = JWTUtils.createJWTTypeBearer(userInfo, serverKey.getJwtServerKey());
        return new JWT(jwt);
    }

    @PostMapping("/user/auth/app")
    public JWT loginIOS(String code) {
        GitUserInfoDTO userInfo = userService.loginByGitOauth(iOSGitGitOauth, code);
        String jwt = JWTUtils.createJWTTypeBearer(userInfo, serverKey.getJwtServerKey());
        return new JWT(jwt);
    }
}
