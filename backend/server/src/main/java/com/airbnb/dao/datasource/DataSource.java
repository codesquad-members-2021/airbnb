package com.airbnb.dao.datasource;

import com.airbnb.exception.DataSourceException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public abstract class DataSource {
    private Logger logger = LoggerFactory.getLogger(DataSource.class);

    abstract String getUrl();

    abstract String getUsername();

    abstract String getPassword();

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(getUrl(), getUsername(), getPassword());
        } catch (ClassNotFoundException e) {
            throw new DataSourceException("jdbc.Driver class not found");
        } catch (SQLException e) {
            throw new DataSourceException("getConnection error: " + e.getMessage());
        }
    }
}
