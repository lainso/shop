package main.java.com.dao;

import main.java.com.bean.orderBean;
import main.java.com.bean.productBean;
import main.java.com.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class productDao {
    public static boolean add(int pid, String pname, float pprice){
        Connection con = DBUtil.getCon();
        String sql = "INSERT INTO `shop`.`product` (`pid`, `pname`, `pprice`) VALUES (?, ?, ?);";
        PreparedStatement ps;
        int sta;
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, pid);
            ps.setString(2,pname);
            ps.setFloat(3,pprice);
            sta = ps.executeUpdate();
            return sta != 0;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }finally {
            DBUtil.closeDB(con);
        }
    }

    public static boolean delete(int pid){
        Connection con = DBUtil.getCon();
        String sql = "DELETE FROM `shop`.`product` WHERE `pid`=?;";
        PreparedStatement ps;
        int sta;
        try{
            ps = con.prepareStatement(sql);
            ps.setInt(1,pid);
            sta = ps.executeUpdate();
            return sta != 0;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }finally {
            DBUtil.closeDB(con);
        }
    }

    public static boolean update(String pname, float pprice,int pid){
        Connection con = DBUtil.getCon();
        String sql = "UPDATE `shop`.`product` SET `pname`=?, `pprice`=? WHERE `pid`=?";
        PreparedStatement ps;
        int sta;
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, pname);
            ps.setFloat(2, pprice);
            ps.setInt(3, pid);
            sta = ps.executeUpdate();
            return sta != 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            DBUtil.closeDB(con);
        }
    }

    public static ArrayList<productBean> getList(){
        ArrayList<productBean> tag_array = new ArrayList<>();
        Connection con = DBUtil.getCon();
        String sql = "SELECT  `pid`,  `pname`,  `pprice` FROM `shop`.`product`;";
        ResultSet rs;
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                productBean tag = new productBean();
                tag.setPid(rs.getInt("pid"));
                tag.setPname(rs.getString("pname"));
                tag.setPprice(rs.getLong("pprice"));
                tag_array.add(tag);
            }
            rs.close();
            ps.close();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DBUtil.closeDB(con);
        }
        return tag_array;
    }

    public static ArrayList<productBean> getList(int pid){
        ArrayList<productBean> tag_array = new ArrayList<>();
        Connection con = DBUtil.getCon();
        String sql = "SELECT  `pid`,  `pname`,  `pprice` FROM `shop`.`product` WHERE pid=?;";
        ResultSet rs;
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            ps.setLong(1,pid);
            rs = ps.executeQuery();
            while(rs.next()) {
                productBean tag = new productBean();
                tag.setPid(rs.getInt("pid"));
                tag.setPname(rs.getString("pname"));
                tag.setPprice(rs.getLong("pprice"));
                tag_array.add(tag);
            }
            rs.close();
            ps.close();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DBUtil.closeDB(con);
        }
        return tag_array;
    }
}
