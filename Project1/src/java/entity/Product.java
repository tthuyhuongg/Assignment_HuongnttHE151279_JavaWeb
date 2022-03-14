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
    private String masp;
    private String namesp;
    private String image;
    private double price;
    private String title;
    private String description;
    private String date;
    private int spkm;
    private double pricekm;
    private int quantity;

    public Product() {
    }

    public Product(String masp, String namesp, String image, double price, String title, String description, String date, int spkm, double pricekm, int quantity) {
        this.masp = masp;
        this.namesp = namesp;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;
        this.date = date;
        this.spkm = spkm;
        this.pricekm = pricekm;
        this.quantity = quantity;
    }

    

    public String getMasp() {
        return masp;
    }

    public void setMasp(String masp) {
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

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getSpkm() {
        return spkm;
    }

    public void setSpkm(int spkm) {
        this.spkm = spkm;
    }

    public double getPricekm() {
        return pricekm;
    }

    public void setPricekm(double pricekm) {
        this.pricekm = pricekm;
    }

    @Override
    public String toString() {
        return "Product{" + "masp=" + masp + ", namesp=" + namesp + ", image=" + image + ", price=" + price + ", title=" + title + ", description=" + description + ", date=" + date + ", spkm=" + spkm + ", pricekm=" + pricekm + ", quantity=" + quantity + '}';
    }

}
