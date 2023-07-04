package main.java.com.dao;

import main.java.com.bean.userBean;
import main.java.com.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class userDao {
    public static boolean add(long uid, String uname, String upass, String utel, String utype, int umoney){
        Connection con = DBUtil.getCon();
        String sql = "INSERT INTO `shop`.`user` (`uid`, `uname`, `upass`, `utel`, `utype`, `umoney`) VALUES (?, ?, ?, ?, ?, ?);";
        PreparedStatement ps;
        int sta;
        try {
            ps = con.prepareStatement(sql);
            ps.setLong(1, uid);
            ps.setString(2,uname);
            ps.setString(3,upass);
            ps.setString(4,utel);
            ps.setString(5,utype);
            ps.setInt(6,umoney);
            sta = ps.executeUpdate();
            return sta != 0;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }finally {
            DBUtil.closeDB(con);
        }
    }

    public static boolean delete(long uid){
        Connection con = DBUtil.getCon();
        String sql = "DELETE FROM `shop`.`user` WHERE `uid`=?;";
        PreparedStatement ps;
        int sta;
        try{
            ps = con.prepareStatement(sql);
            ps.setLong(1,uid);
            sta = ps.executeUpdate();
            return sta != 0;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }finally {
            DBUtil.closeDB(con);
        }
    }

    public static boolean update(String uname, String upass, String utel, String utype, int umoney, long uid){
        Connection con = DBUtil.getCon();
        String sql = "UPDATE `shop`.`user` SET `uname`=?, `upass`=?, `utel`=?, `utype`=?, `umoney`=? WHERE `uid`=?";
        PreparedStatement ps;
        int sta;
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, uname);
            ps.setString(2, upass);
            ps.setString(3, utel);
            ps.setString(4, utype);
            ps.setLong(5, uid);
            ps.setInt(6,umoney);
            sta = ps.executeUpdate();
            return sta != 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            DBUtil.closeDB(con);
        }
    }

    public static ArrayList<userBean> getList(){
        ArrayList<userBean> tag_array = new ArrayList<>();
        Connection con = DBUtil.getCon();
        String sql = "SELECT `uid`,  `uname`,  `upass`,  `utel`, `utype`, `umoney` FROM `shop`.`user`;";
        ResultSet rs;
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                userBean tag = new userBean();
                tag.setUid(rs.getLong("uid"));
                tag.setUname(rs.getString("uname"));
                tag.setUpass(rs.getString("upass"));
                tag.setUtel(rs.getString("utel"));
                tag.setUtype(rs.getString("utype"));
                tag.setUmoney(rs.getInt("umoney"));
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

    public static ArrayList<userBean> getList(int uid){
        ArrayList<userBean> tag_array = new ArrayList<>();
        Connection con = DBUtil.getCon();
        String sql = "SELECT  `uid`,  `uname`,  `upass`,  `utel`, `utype`, `umoney` FROM `shop`.`user` WHERE uid=?;";
        ResultSet rs;
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            ps.setLong(1,uid);
            rs = ps.executeQuery();
            while(rs.next()) {
                userBean tag = new userBean();
                tag.setUid(rs.getLong("uid"));
                tag.setUname(rs.getString("uname"));
                tag.setUpass(rs.getString("upass"));
                tag.setUtel(rs.getString("utel"));
                tag.setUtype(rs.getString("utype"));
                tag.setUmoney(rs.getInt("umoney"));
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

    public static boolean isp_login(long uid, String upass){
        Connection con = DBUtil.getCon();
        String sql = "SELECT * FROM shop.user WHERE uid =? AND upass =? AND utype = '运营商';";
        PreparedStatement ps;
        ResultSet rs;
        boolean sta;
        try {
            ps = con.prepareStatement(sql);
            ps.setLong(1, uid);
            ps.setString(2, upass);
            rs=ps.executeQuery();
            sta = rs.next();
            return sta;
        }catch(SQLException e) {
            e.printStackTrace();
            return false;
        }finally {
            DBUtil.closeDB(con);
        }
    }

    public static boolean shop_login(long uid, String upass){
        Connection con = DBUtil.getCon();
        String sql = "SELECT * FROM shop.user WHERE uid =? AND upass =? AND utype = '店家';";
        PreparedStatement ps;
        ResultSet rs;
        boolean sta;
        try {
            ps = con.prepareStatement(sql);
            ps.setLong(1, uid);
            ps.setString(2, upass);
            rs=ps.executeQuery();
            sta = rs.next();
            return sta;
        }catch(SQLException e) {
            e.printStackTrace();
            return false;
        }finally {
            DBUtil.closeDB(con);
        }
    }

    public static boolean user_login(long uid, String upass){
        Connection con = DBUtil.getCon();
        String sql = "SELECT * FROM shop.user WHERE uid =? AND upass =? AND utype = '顾客';";
        PreparedStatement ps;
        ResultSet rs;
        boolean sta;
        try {
            ps = con.prepareStatement(sql);
            ps.setLong(1, uid);
            ps.setString(2, upass);
            rs=ps.executeQuery();
            sta = rs.next();
            return sta;
        }catch(SQLException e) {
            e.printStackTrace();
            return false;
        }finally {
            DBUtil.closeDB(con);
        }
    }
}
