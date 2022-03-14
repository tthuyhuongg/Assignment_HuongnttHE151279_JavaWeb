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
public class Cart {
    private ArrayList<Item> list;

    public Cart() {
        list = new ArrayList<>();
    }
    
    public Cart(ArrayList<Item> items) {
        this.list = items;
    }

    public ArrayList<Item> getList() {
        return list;
    }

    public void setList(ArrayList<Item> list) {
        this.list = list;
    }
    
    public Item getitembymsp(String masp){
        for (Item i: list) {
            if(i.getSp().getMasp().equals(masp)){
                return i;
            }
        }
        return null;
    }
    public int quantity(String masp ){
        int qua = 0;
        for (Item i : list) {
            if(i.getSp().getMasp().equals(masp)){
                qua = i.getSp().getQuantity();
            }
        }
        return qua;
    }
    public void additems(Item t){
        if(getitembymsp(t.getSp().getMasp()) != null){
            Item i = getitembymsp(t.getSp().getMasp());
            i.setQuantity(i.getQuantity()+t.getQuantity());
        }else{
            list.add(t);
        }
    }
    public void remove(String masp){
        if(getitembymsp(masp)!= null){
            list.remove(getitembymsp(masp));
        }
    }
    public double total(){
        double rs = 0;
        for (Item i: list) {
            rs+= i.getPrice()*i.getQuantity();
        }
        return rs;
    }

}
