/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.Date;

/**
 *
 * @author thuy huong
 */
public class Product {
    private int masp;
    private String namesp;
    private String image;
    private double price;
    private String title;
    private String description;
    private String date;
    private int quantity;
    private int idcate;

    public Product() {
    }

    public Product(int masp, String namesp, String image, double price, String title, String description, String date, int quantity, int idcate) {
        this.masp = masp;
        this.namesp = namesp;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;
        this.date = date;
        this.quantity = quantity;
        this.idcate = idcate;
    }

    public int getMasp() {
        return masp;
    }

    public void setMasp(int masp) {
        this.masp = masp;
    }

    public String getNamesp() {
        return namesp;
    }

    public void setNamesp(String namesp) {
        this.namesp = namesp;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getIdcate() {
        return idcate;
    }

    public void setIdcate(int idcate) {
        this.idcate = idcate;
    }

    @Override
    public String toString() {
        return "Product{" + "masp=" + masp + ", namesp=" + namesp + ", image=" + image + ", price=" + price + ", title=" + title + ", description=" + description + ", date=" + date + ", quantity=" + quantity + ", idcate=" + idcate + '}';
    }

}
