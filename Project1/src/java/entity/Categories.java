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
public class Categories {
    private int caid;
    private String caname;

    public Categories() {
    }

    public Categories(int caid, String caname) {
        this.caid = caid;
        this.caname = caname;
    }

    public int getCaid() {
        return caid;
    }

    public void setCaid(int caid) {
        this.caid = caid;
    }

    public String getCaname() {
        return caname;
    }

    public void setCaname(String caname) {
        this.caname = caname;
    }

    @Override
    public String toString() {
        return "Categories{" + "caid=" + caid + ", caname=" + caname + '}';
    }
    
    
}
