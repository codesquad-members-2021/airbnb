package com.airbnb.dao;

import com.airbnb.dao.datasource.SessionDataSource;
import com.airbnb.domain.Token;
import com.airbnb.domain.User;
import com.airbnb.exception.SqlException;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Optional;

@Repository
public class TokenDao {
    private final SessionDataSource sessionDataSource;

    public TokenDao(SessionDataSource sessionDataSource) {
        this.sessionDataSource = sessionDataSource;
    }

    public void save(User user, Token token) {
        String sql = "INSERT INTO `token` (`user_login`, `access_token`, `token_type`, `scope`) values (?, ?, ?, ?) "
                + "ON DUPLICATE KEY UPDATE `access_token` = ?, `token_type` = ?, `scope` = ?";

        try (Connection conn = sessionDataSource.getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getLogin());
            pstmt.setString(2, token.getAccessToken());
            pstmt.setString(3, token.getTokenType());
            pstmt.setString(4, token.getScope());
            pstmt.setString(5, token.getAccessToken());
            pstmt.setString(6, token.getTokenType());
            pstmt.setString(7, token.getScope());
            pstmt.executeUpdate();
        } catch (SQLException throwables) {
            throw new SqlException("토큰 저장에 실패했습니다.");
        }
    }

    public Optional<Token> findByUser(User user) {
        String sql = "SELECT `access_token`, `token_type`, `scope` FROM `token` WHERE `user_login` = ?";
        try (Connection conn = sessionDataSource.getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getLogin());
            ResultSet rs = pstmt.executeQuery();

            if (!rs.next()) {
                return Optional.empty();
            }
            return Optional.of(new Token(
                    rs.getString("access_token"),
                    rs.getString("token_type"),
                    rs.getString("scope")
            ));
        } catch (SQLException e) {
            throw new SqlException("토큰 조회에 실패했습니다.");
        }
    }
}
