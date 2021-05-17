package team01.airbnb.domain;

import lombok.*;

import java.util.Date;

@Builder
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class User {

    private Long id;
    private String username;
    private String email;
    private RoleType role; // ADMIN, USER
    private Date createDate;

}
