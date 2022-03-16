/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.Account;
import entity.Cart;
import entity.Categories;
import entity.Item;
import entity.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

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
                p.setMasp(rs.getInt("masp"));
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
                p.setMasp(rs.getInt("masp"));
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

    public Product getsp(int msp) {
        String sql = "select * from Product where masp=?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, msp);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(
                        rs.getInt("masp"),
                        rs.getString("Name"),
                        rs.getString("Picture"),
                        rs.getFloat("price"),
                        rs.getString("title"),
                        rs.getString("Description"),
                        rs.getString("dateup"),
                        rs.getInt("quantity"),
                        rs.getInt("Id"));
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
                p.setMasp(rs.getInt("masp"));
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
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));
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
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void signup(String name, String pass) {
        String sql = "insert into Acount values(?,?,0)";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, pass);
            //   ps.setInt(3,isAdmin);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addcategory(String name, String image) {
        String sql = "insert into Categories(Cname,Picture) values\n"
                + "(?,?)";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void delete(String msp) {
        String sql = "DELETE FROM [projectt].[dbo].[Product]\n"
                + "      WHERE masp = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, msp);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editsp(String msp, String name, String image, double price, String title, String des, String date, int pkm, double giakm, int quan, int caid) {
        String sql = "UPDATE [projectt].[dbo].[Product]\n"
                + "   SET [Name] =?\n"
                + "      ,[Picture] =?\n"
                + "      ,[price] =?\n"
                + "      ,[title] =?\n"
                + "      ,[Description] =?\n"
                + "      ,[dateup] =?\n"
                + "      ,[Pkm] =?\n"
                + "      ,[pricekm] = ?\n"
                + "      ,[quantity] =?\n"
                + "      ,[Id] =?\n"
                + " WHERE masp=?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setDouble(3, price);
            ps.setString(4, title);
            ps.setString(5, des);
            ps.setString(6, date);
            ps.setInt(7, pkm);
            ps.setDouble(8, giakm);
            ps.setInt(9, quan);
            ps.setInt(10, caid);
            ps.setString(11, msp);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void addproduct(String masp, String name, String image, double price, String title, String des, String date, int pkm, double pricekm, int quan, int id) {
        String sql = "insert into Product(masp,Name,Picture,price,title,[Description],dateup,Pkm,pricekm,quantity,Id) values\n"
                + "(?,?,?,?,?,?,?,?,?,?,?)";
        try {
            ps = connection.prepareStatement(sql);
            ps.setString(1, masp);
            ps.setString(2, name);
            ps.setString(3, image);
            ps.setDouble(4, price);
            ps.setString(5, title);
            ps.setString(6, des);
            ps.setString(7, date);
            ps.setInt(8, pkm);
            ps.setDouble(9, pricekm);
            ps.setInt(10, quan);
            ps.setInt(11, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public int Total() {
        int total = 0;
        try {
            String sql = "select COUNT(*) from Product";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return total;
    }

    public ArrayList<Product> getpage(int page) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "select top 4* from Product where idd>? order by idd ";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, (page - 1) * 4);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setMasp(rs.getInt("masp"));
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

    public ArrayList<Product> getFlNew() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "select top 5* from Product order by dateup";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setMasp(rs.getInt("masp"));
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

    public ArrayList<Product> getFlP() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT TOP 4* from Product\n"
                    + "order by price desc ";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setMasp(rs.getInt("masp"));
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

}
