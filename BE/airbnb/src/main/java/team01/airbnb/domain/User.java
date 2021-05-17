package team01.airbnb.domain;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

import java.sql.Timestamp;

@Builder
@Getter
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class User {

    private Long id;
    private String username;
    private String email;
    private RoleType role; // ADMIN, USER
    private Timestamp createDate;

}
