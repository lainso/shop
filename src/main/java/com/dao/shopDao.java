package main.java.com.dao;

import main.java.com.bean.shopBean;
import main.java.com.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class shopDao {
    public static boolean add(int sid, String sname){
        Connection con = DBUtil.getCon();
        String sql = "INSERT INTO `shop`.`shop` (`sid`, `sname`) VALUES (?, ?);";
        PreparedStatement ps;
        int sta;
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, sid);
            ps.setString(2,sname);
            sta = ps.executeUpdate();
            return sta != 0;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }finally {
            DBUtil.closeDB(con);
        }
    }

    public static boolean delete(int sid){
        Connection con = DBUtil.getCon();
        String sql = "DELETE FROM `shop`.`shop` WHERE `sid`=?;";
        PreparedStatement ps;
        int sta;
        try{
            ps = con.prepareStatement(sql);
            ps.setInt(1,sid);
            sta = ps.executeUpdate();
            return sta != 0;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }finally {
            DBUtil.closeDB(con);
        }
    }

    public static boolean update(String sname,int sid){
        Connection con = DBUtil.getCon();
        String sql = "UPDATE `shop`.`shop` SET `sname`=? WHERE `sid`=?";
        PreparedStatement ps;
        int sta;
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, sname);
            ps.setInt(2, sid);
            sta = ps.executeUpdate();
            return sta != 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            DBUtil.closeDB(con);
        }
    }

    public static ArrayList<shopBean> getList(){
        ArrayList<shopBean> tag_array = new ArrayList<>();
        Connection con = DBUtil.getCon();
        String sql = "SELECT  `sid`,  `sname` FROM `shop`.`shop`;";
        ResultSet rs;
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                shopBean tag = new shopBean();
                tag.setSid(rs.getInt("sid"));
                tag.setSname(rs.getString("sname"));
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

    public static ArrayList<shopBean> getList(int sid){
        ArrayList<shopBean> tag_array = new ArrayList<>();
        Connection con = DBUtil.getCon();
        String sql = "SELECT  `sid`,  `sname` FROM `shop`.`shop` WHERE sid=?;";
        ResultSet rs;
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            ps.setLong(1,sid);
            rs = ps.executeQuery();
            while(rs.next()) {
                shopBean tag = new shopBean();
                tag.setSid(rs.getInt("pid"));
                tag.setSname(rs.getString("pname"));
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
