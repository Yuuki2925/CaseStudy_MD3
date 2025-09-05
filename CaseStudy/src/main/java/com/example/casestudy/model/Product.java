package com.example.casestudy.model;

public class Product {
    private int id;
    private final String name;
    private final double price;
    private final String image;

    public Product(String image, String name, double price) {
        this.name = name;
        this.price = price;
        this.image = image;
    }

    public Product(int id, String image, String name, double price) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public String getImage() {
        return image;
    }

}
