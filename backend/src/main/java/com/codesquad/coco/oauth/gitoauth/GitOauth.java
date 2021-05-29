package com.codesquad.coco.oauth.gitoauth;

import oauth.AccessToken;
import oauth.Oauth;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;

public class GitOauth extends Oauth {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    public GitOauth(String clientId, String clientSecret, String redirectUri, String accessTokenUri, String userInfoUri) {
        super(clientId, clientSecret, redirectUri, accessTokenUri, userInfoUri);
    }

    // code 요청은 FE나 ios가 직접한다.
    @Override
    public GitUserInfoDTO requestUserInfo(AccessToken token) {
        HttpHeaders headers = httpHeaderTypeJson();
        headers.setBearerAuth(token.getAccessToken());
        HttpEntity<?> userInfo = new HttpEntity<>(headers);
        return getTemplate().exchange(userInfoUri, HttpMethod.GET, userInfo, GitUserInfoDTO.class).getBody();
    }

}
