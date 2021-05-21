package com.enolj.airbnb.authorization;

import com.enolj.airbnb.web.dto.EmailDTO;
import com.enolj.airbnb.web.dto.TokenDTO;
import com.enolj.airbnb.web.dto.UserInfoDTO;
import com.enolj.airbnb.web.utils.GitHubType;

public interface OAuth {

    TokenDTO getTokenAPI(String code, GitHubType gitHubType);

    UserInfoDTO getUserInfoAPI(String token);

    EmailDTO getEmailAPI(String token);
}
