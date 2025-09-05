package com.example.casestudy.service;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBConnection {

    public static Connection getConnection() {
        Connection connection = null;

        try {
            Properties properties = new Properties();
            InputStream inputStream = DBConnection.class.getClassLoader().getResourceAsStream("db.properties");

            if (inputStream == null) {
                throw new IOException("Không tìm thấy file db.properties trong classpath.");
            }

            properties.load(inputStream);

            String url = properties.getProperty("db.url");
            String user = properties.getProperty("db.username");
            String password = properties.getProperty("db.password");

            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, password);

        } catch (IOException e) {
            System.err.println("Lỗi khi đọc file db.properties");
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            System.err.println("Không tìm thấy MySQL JDBC Driver");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("Kết nối CSDL thất bại");
            e.printStackTrace();
        }

        return connection;
    }
}
