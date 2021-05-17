package team01.airbnb.domain;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class User {

    private Long id;
    private String username;
    private String email;
    private RoleType role; // ADMIN, USER
    private Timestamp createDate;

}
