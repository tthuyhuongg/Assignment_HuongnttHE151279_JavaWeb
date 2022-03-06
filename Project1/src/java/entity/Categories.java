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
    int caid;
    String caname;
    String image;

    public Categories() {
    }

    public Categories(int caid, String caname, String image) {
        this.caid = caid;
        this.caname = caname;
        this.image = image;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Categories{" + "caid=" + caid + ", caname=" + caname + ", image=" + image + '}';
    }

   
  
}
