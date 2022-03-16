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
    private String omsp;
    private int quantity;
    private double price;

    public Oderdetail() {
    }

    public Oderdetail(int id, String omsp, int quantity, double price) {
        this.id = id;
        this.omsp = omsp;
        this.quantity = quantity;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOmsp() {
        return omsp;
    }

    public void setOmsp(String omsp) {
        this.omsp = omsp;
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
        return "Oderdetail{" + "id=" + id + ", omsp=" + omsp + ", quantity=" + quantity + ", price=" + price + '}';
    }

    
}
