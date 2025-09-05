package com.example.casestudy.dao;

import com.example.casestudy.model.Product;
import com.example.casestudy.service.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    private static final String SELECT_ALL_PRODUCTS = "SELECT * FROM products";

    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        try (Connection connection = DBConnection.getConnection()) {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL_PRODUCTS);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(
                        rs.getInt("id"),
                        rs.getString("image"),
                        rs.getString("name"),
                        rs.getDouble("price")
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }
}

