package com.codesquad.coco.user;

import com.codesquad.coco.oauth.ServerKey;
import com.codesquad.coco.oauth.gitoauth.GitOauth;
import com.codesquad.coco.oauth.gitoauth.GitUserInfoDTO;
import com.codesquad.coco.user.model.dto.ReservationDTO;
import jwt.JWT;
import jwt.JWTUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

import static com.codesquad.coco.oauth.gitoauth.GitURI.*;

@PropertySource("classpath:/secretKey.properties")
@RestController
public class UserController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    private UserService userService;
    private GitOauth deskTopGitGitOauth;
    private GitOauth iOSGitGitOauth;
    private ServerKey serverKey;


    public UserController(UserService userService, ServerKey serverKey) {
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

    @PostMapping("/rooms/{roomId}/reservations")
    public void reservation(@PathVariable Long roomId, @Valid @RequestBody ReservationDTO reservationDTO) {
        //todo userId를 얻어서 같이 줘야함 일단 ID가 1인 유저
        logger.debug(reservationDTO.toString());
        userService.reservation(roomId, 1L, reservationDTO);
    }

    @DeleteMapping("/rooms/{roomId}/reservations/{reservationId}")
    public void deleteReservation(@PathVariable Long roomId,
                                  @PathVariable Long reservationId) {
        //todo userId를 얻어서 같이 줘야함 일단 ID가 1인 유저
        userService.cancelReservation(roomId, reservationId, 1L);
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
