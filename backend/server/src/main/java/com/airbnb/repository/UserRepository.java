package com.airbnb.repository;

import com.airbnb.domain.User;
import com.airbnb.exception.SqlException;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@Repository
public class UserRepository {
    private final DataSource dataSource;

    public UserRepository(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void save(User user) {
        String sql = "INSERT INTO `user` (`login`, `name`) values (?, ?) "
                + "ON DUPLICATE KEY UPDATE `name` = ?";

        try (Connection conn = dataSource.getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getLogin());
            pstmt.setString(2, user.getName());
            pstmt.setString(3, user.getName());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new SqlException("유저 저장에 실패했습니다.");
        }
    }
}
