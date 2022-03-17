/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.ArrayList;

/**
 *
 * @author thuy huong
 */
public class Order {
    private int id;
    private String cusid;
    private String date;
    private double Total;
    private int ship;

    public Order() {
    }

    public Order(int id, String cusid, String date, double Total, int ship) {
        this.id = id;
        this.cusid = cusid;
        this.date = date;
        this.Total = Total;
        this.ship = ship;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCusid() {
        return cusid;
    }

    public void setCusid(String cusid) {
        this.cusid = cusid;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public double getTotal() {
        return Total;
    }

    public void setTotal(double Total) {
        this.Total = Total;
    }

    public int getShip() {
        return ship;
    }

    public void setShip(int ship) {
        this.ship = ship;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", cusid=" + cusid + ", date=" + date + ", Total=" + Total + ", ship=" + ship + '}';
    }

    
}
