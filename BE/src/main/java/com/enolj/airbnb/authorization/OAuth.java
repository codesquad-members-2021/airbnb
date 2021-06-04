package com.enolj.airbnb.authorization;

import com.enolj.airbnb.web.dto.EmailDTO;
import com.enolj.airbnb.web.dto.TokenDTO;
import com.enolj.airbnb.web.dto.UserInfoDTO;

public interface OAuth {

    TokenDTO getToken(String code, int typeCode);

    UserInfoDTO getUserInfo(String token);

    EmailDTO getEmail(String token);
}
