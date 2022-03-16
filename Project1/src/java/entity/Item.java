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
public class Item {
    private Product sp;
    private int quantity;
    private double price;

    public Item() {
    }

    public Item(Product sp, int quantity, double price) {
        this.sp = sp;
        this.quantity = quantity;
        this.price = price;
    }

    public Product getSp() {
        return sp;
    }

    public void setSp(Product sp) {
        this.sp = sp;
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
        return "Item{" + "sp=" + sp + ", quantity=" + quantity + ", price=" + price + '}';
    }
}
