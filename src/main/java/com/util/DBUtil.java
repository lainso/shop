package main.java.com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    // 连接数据库的用户名
    public static String username = "shop";
    // 数据库用户密码
    public static String password = "lingyeqin";
    // 数据库名
    public static String database = "shop";
    // 使用字符串拼接完善连接url
    public static String url = "jdbc:mysql://8.134.179.231:3306/"+database+"?allowPublicKeyRetrieval=true&characterEncoding=utf-8&serverTimezone=Asia/Shanghai&useSSL=false";

    static {
        // 有可能出问题，try...catch保障完备性
        try {
            // 尝试查找驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch (ClassNotFoundException e){
            // 捕获，打印出错信息
            e.printStackTrace();
        }
    }

    // 建立连接函数
    public static Connection getCon(){
        // 定义connection类
        Connection con = null;
        try {
            // try...catch尝试获取连接
            con = DriverManager.getConnection(url,username,password);
        }catch (SQLException e){
            // 捕获打印错误
            e.printStackTrace();
        }
        // 返回connection对象供使用
        return con;
    }

    // 关闭连接函数
    public static void closeDB(Connection con){
        // 连接不为空则关闭
        if(con != null){
            try {
                con.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
    }

//    public static void main(String[] args) {
//        Connection con = DBUtil.getCon();
//        System.out.println(con);
//        DBUtil.closeDB(con);
//    }
}
