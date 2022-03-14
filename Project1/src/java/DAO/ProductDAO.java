/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.Account;
import entity.Cart;
import entity.Categories;
import entity.Customer;
import entity.Item;
import entity.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author thuy huong
 */
public class ProductDAO extends BaseDAO<Product> {

    PreparedStatement ps;
    ResultSet rs;

    @Override
    public ArrayList<Product> getAll() {
        ArrayList<Product> list = new ArrayList<>();
        String sql = "select* from Product";
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setMasp(rs.getString("masp"));
                p.setNamesp(rs.getString("Name"));
                p.setImage(rs.getString("Picture"));
                p.setPrice(rs.getFloat("price"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("Description"));
                list.add(p);
            }
        } catch (SQLException e) {
        }
        return list;

    }

    public ArrayList<Categories> getAllCa() {
        ArrayList<Categories> list = new ArrayList<>();
        String sql = "select* from Categories";
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Categories c = new Categories();
                c.setCaid(rs.getInt("CategoryID"));
                c.setCaname(rs.getString("Cname"));
                c.setImage(rs.getString("Picture"));
                list.add(c);
            }
        } catch (SQLException e) {
        }
        return list;

    }

    public ArrayList<Product> getHCM(String id) {
        ArrayList<Product> list = new ArrayList<>();
        String sql = "select * from Product where Id=?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setMasp(rs.getString("masp"));
                p.setNamesp(rs.getString("Name"));
                p.setImage(rs.getString("Picture"));
                p.setPrice(rs.getFloat("price"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("Description"));
                list.add(p);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public Product getsp(String msp) {
        String sql = "select * from Product where masp=?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, msp);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getString("masp"),
                        rs.getString("Name"),
                        rs.getString("Picture"),
                        rs.getFloat("price"),
                        rs.getString("title"),
                        rs.getString("Description"),
                        rs.getInt("quantity"));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public ArrayList<Product> search(String txt) {
        ArrayList<Product> list = new ArrayList<>();
        String sql = "select * from Product where Name like ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + txt + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setMasp(rs.getString("masp"));
                p.setNamesp(rs.getString("Name"));
                p.setImage(rs.getString("Picture"));
                p.setPrice(rs.getFloat("price"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("Description"));
                list.add(p);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public Account login(String name, String pass) {
        String sql = "select * from Acount where username =? and pass=?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;

    }

    public Account checkacc(String name) {
        String sql = "select * from Acount where username =?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void signup(String name, String pass) {
        String sql = "insert into Acount values(?,?,1,0)";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void delete(String msp) {
        String sql = "delete from Product where masp =?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, msp);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addoder(Customer cus, Cart cart) throws SQLException {
        LocalDate date = java.time.LocalDate.now();
        String datet = date.toString();
        String sql = "insert into Oder(cusid,orderdate,totalmoney) values(?,?,?)";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, datet);
            ps.setInt(2, cus.getId());
            ps.setDouble(3, cart.total());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        String sql1 = "select top 1 oderid from Oder order by oderid desc ";
        try {
            PreparedStatement ps1 = connection.prepareStatement(sql1);
            rs = ps1.executeQuery();
            while (rs.next()) {
                int oid = rs.getInt(1);
                for (Item o : cart.getList()) {
                    String sql2 = "insert into Oderdetail(masp,price,Quantity) values\n"
                            + "(?,?,?,?)";
                    PreparedStatement ps2 = connection.prepareStatement(sql2);
                    ps2.setInt(1, oid);
                    ps2.setString(2, o.getSp().getMasp());
                    ps2.setDouble(3, o.getPrice());
                    ps2.setInt(4, o.getQuantity());
                    ps2.executeUpdate();
                }
            }
        } catch (Exception e) {
        }

    }

}
