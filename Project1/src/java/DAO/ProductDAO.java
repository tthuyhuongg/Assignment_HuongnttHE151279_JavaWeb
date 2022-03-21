/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.Account;
import entity.Categories;
import entity.Oderdetail;
import entity.Order;
import entity.Product;
import entity.Ship;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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

    public ArrayList<Product> getHCM(int id) {
        ArrayList<Product> list = new ArrayList<>();
        String sql = "select * from Product where Id = ?";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setMasp(rs.getInt("masp"));
                p.setNamesp(rs.getString("Name"));
                p.setImage(rs.getString("Picture"));
                p.setPrice(rs.getFloat("price"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("Description"));
                p.setDate(rs.getString("dateup"));
                p.setIdcate(rs.getInt("Id"));
                p.setQuantity(rs.getInt("quantity"));
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

    public void editsp(String msp, String name, String image, double price, String title, String des, String date, int quan, int caid) {
        String sql = "UPDATE [projectt].[dbo].[Product]\n"
                + "   SET [Name] =?\n"
                + "      ,[Picture] =?\n"
                + "      ,[price] =?\n"
                + "      ,[title] =?\n"
                + "      ,[Description] =?\n"
                + "      ,[dateup] =?\n"
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
            ps.setInt(7, quan);
            ps.setInt(8, caid);
            ps.setString(9, msp);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void addproduct(int masp,String name, String image, double price, String title, String des, String date, int id, int quan) {
        String sql = "insert into Product values(?,?,?,?,?,?,?,?,?)";
        try {
            ps = connection.prepareStatement(sql);
            ps.setInt(1, masp);
            ps.setString(2, name);
            ps.setString(3, image);
            ps.setDouble(4, price);
            ps.setString(5, title);
            ps.setString(6, des);
            ps.setString(7, date);
            ps.setInt(8, id);
            ps.setInt(9, quan);
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
            String sql = "select top 4* from Product where masp >? order by masp";
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
                p.setDate(rs.getString("dateup"));
                p.setIdcate(rs.getInt("Id"));
                p.setQuantity(rs.getInt("quantity"));
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

    public void ship(String name, String phone, String adderss) throws SQLException {
        try {
            String sql = "INSERT INTO [projectt].[dbo].[Ship]\n"
                    + "           ([name]\n"
                    + "           ,[phone]\n"
                    + "           ,[address])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";
            ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, adderss);
            ps.executeUpdate();
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void Oderdetail(String name, String phone, String adderss) throws SQLException {
        try {
            String sql = "INSERT INTO [projectt].[dbo].[Ship]\n"
                    + "           ([name]\n"
                    + "           ,[phone]\n"
                    + "           ,[address])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";
            ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, adderss);
            ps.executeUpdate();
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public int oder(Order o) {
        try {
            String sql = "INSERT INTO [projectt].[dbo].[Oder]\n"
                    + "           ([cusid]\n"
                    + "           ,[orderdate]\n"
                    + "           ,[totalmoney]\n"
                    + "           ,[shipid])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?)";
            ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, o.getId());
            ps.setString(2, o.getDate());
            ps.setDouble(3, o.getTotal());
            ps.setInt(4, o.getShip());
            ps.executeUpdate();
            rs = ps.getGeneratedKeys();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

}
