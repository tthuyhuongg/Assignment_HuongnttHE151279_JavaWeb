/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author thuy huong
 */
public class Oderdetail {
    private int id;
    private String pname;
    private String image;
    private int quantity;
    private double price;

    public Oderdetail() {
    }

    public Oderdetail(int id, String pname, String image, int quantity, double price) {
        this.id = id;
        this.pname = pname;
        this.image = image;
        this.quantity = quantity;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Oderdetail{" + "id=" + id + ", pname=" + pname + ", image=" + image + ", quantity=" + quantity + ", price=" + price + '}';
    }

    
}
