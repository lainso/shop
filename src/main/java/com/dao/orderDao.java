package main.java.com.dao;

import main.java.com.bean.orderBean;
import main.java.com.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class orderDao {
    public static boolean add(int oid, String otime, long uid, String sname, String olist, String ocondition){
        Connection con = DBUtil.getCon();
        String sql = "INSERT INTO `shop`.`order` (`oid`, `otime`, `uid`, `sname`, `olist`, `ocondition`) VALUES (?, ?, ?, ?, ?, ?);";
        PreparedStatement ps;
        int sta;
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, oid);
            ps.setString(2,otime);
            ps.setLong(3,uid);
            ps.setString(4,sname);
            ps.setString(5,olist);
            ps.setString(6,ocondition);
            sta = ps.executeUpdate();
            return sta != 0;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }finally {
            DBUtil.closeDB(con);
        }
    }

    public static boolean delete(int oid){
        Connection con = DBUtil.getCon();
        String sql = "DELETE FROM `shop`.`order` WHERE `oid`=?;";
        PreparedStatement ps;
        int sta;
        try{
            ps = con.prepareStatement(sql);
            ps.setInt(1,oid);
            sta = ps.executeUpdate();
            return sta != 0;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }finally {
            DBUtil.closeDB(con);
        }
    }

    public static boolean update(String otime, long uid, String sname, String olist, String ocondition, int oid){
        Connection con = DBUtil.getCon();
        String sql = "UPDATE `shop`.`order` SET `otime`=?, `uid`=?, `sname`=?, `olist`=?, `ocondition`=? WHERE `oid`=?";
        PreparedStatement ps;
        int sta;
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, otime);
            ps.setLong(2, uid);
            ps.setString(3, sname);
            ps.setString(4, olist);
            ps.setString(5, ocondition);
            ps.setInt(6, oid);
            sta = ps.executeUpdate();
            return sta != 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            DBUtil.closeDB(con);
        }
    }

    public static ArrayList<orderBean> getList(){
        ArrayList<orderBean> tag_array = new ArrayList<>();
        Connection con = DBUtil.getCon();
        String sql = "SELECT * FROM `shop`.`order`;";
        ResultSet rs;
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                orderBean tag = new orderBean();
                tag.setOid(rs.getInt("oid"));
                tag.setOtime(rs.getString("otime"));
                tag.setUid(rs.getLong("uid"));
                tag.setSname(rs.getString("sname"));
                tag.setOlist(rs.getString("olist"));
                tag.setOcondition(rs.getString("ocondition"));
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

    public static ArrayList<orderBean> getList(long uid){
        ArrayList<orderBean> tag_array = new ArrayList<>();
        Connection con = DBUtil.getCon();
        String sql = "SELECT * FROM `shop`.`order` WHERE uid=?;";
        ResultSet rs;
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            ps.setLong(1,uid);
            rs = ps.executeQuery();
            while(rs.next()) {
                orderBean tag = new orderBean();
                tag.setOid(rs.getInt("oid"));
                tag.setOtime(rs.getString("otime"));
                tag.setUid(rs.getLong("uid"));
                tag.setSname(rs.getString("sname"));
                tag.setOlist(rs.getString("olist"));
                tag.setOcondition(rs.getString("ocondition"));
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

    public static ArrayList<orderBean> getList(String otime){
        ArrayList<orderBean> tag_array = new ArrayList<>();
        Connection con = DBUtil.getCon();
        String key = "%"+otime+"%";
        String sql = "SELECT  * FROM `shop`.`order` WHERE otime LIKE ?;";
        ResultSet rs;
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1,key);
            rs = ps.executeQuery();
            while(rs.next()) {
                orderBean tag = new orderBean();
                tag.setOid(rs.getInt("oid"));
                tag.setOtime(rs.getString("otime"));
                tag.setUid(rs.getLong("uid"));
                tag.setSname(rs.getString("sname"));
                tag.setOlist(rs.getString("olist"));
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
