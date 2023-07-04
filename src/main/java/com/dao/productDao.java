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
    public static boolean add(int pid, String pname, float pprice, String pimg){
        Connection con = DBUtil.getCon();
        String sql = "INSERT INTO `shop`.`product` (`pid`, `pname`, `pprice`, `pimg`) VALUES (?, ?, ?, ?);";
        PreparedStatement ps;
        int sta;
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, pid);
            ps.setString(2,pname);
            ps.setFloat(3,pprice);
            ps.setString(4,pimg);
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

    public static boolean update(String pname, float pprice, String pimg, int pid){
        Connection con = DBUtil.getCon();
        String sql = "UPDATE `shop`.`product` SET `pname`=?, `pprice`=?, `pimg`=? WHERE `pid`=?";
        PreparedStatement ps;
        int sta;
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, pname);
            ps.setFloat(2, pprice);
            ps.setString(3, pimg);
            ps.setInt(4, pid);
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
        String sql = "SELECT  `pid`,  `pname`, `pprice`, `pimg`, `pclass` FROM `shop`.`product`;";
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
                tag.setPimg(rs.getString("pimg"));
                tag.setPclass(rs.getString("pclass"));
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
        String sql = "SELECT  `pid`,  `pname`, `pprice`, `pimg` FROM `shop`.`product` WHERE pid=?;";
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
                tag.setPimg(rs.getString("pimg"));
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
