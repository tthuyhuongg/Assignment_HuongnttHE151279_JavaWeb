/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import DAO.ProductDAO;
import java.util.ArrayList;

/**
 *
 * @author thuy huong
 */
public class test {
    public static void main(String[] args) {
        ProductDAO p = new ProductDAO();
        Product d = p.getsp(9);
        System.out.println(d);
        
//        ArrayList<Product> a = p.getpage(2);
//        for (Product pr : a) {
//            System.out.println(pr);
//        }
//        ArrayList<Categories> a = p.getAllCa();
//        for (Categories pro : a) {
//            System.out.println(pro);
//        }
//        for (Product pro : a) {
//            System.out.println(pro);
//        }
//    Product pa = p.getsp("H001");
//        System.out.println(pa);
//        Account a =p.login("Admin", "Admin12345");
//        System.out.println(a);
//        p.signup("thuyhuong", "huong1234");
        
//        ArrayList<Product> a = p.getAll();
//         System.out.println(a);
//        p.delete("H001");
//        System.out.println(a);
//      

    }
}
