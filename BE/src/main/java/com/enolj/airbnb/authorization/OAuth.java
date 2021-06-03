package com.enolj.airbnb.authorization;

import com.enolj.airbnb.web.dto.EmailDTO;
import com.enolj.airbnb.web.dto.TokenDTO;
import com.enolj.airbnb.web.dto.UserInfoDTO;

public interface OAuth {

    TokenDTO tokenReceiveAPI(String code, int typeCode);

    UserInfoDTO userInfoReceiveAPI(String token);

    EmailDTO emailReceiveAPI(String token);
}
