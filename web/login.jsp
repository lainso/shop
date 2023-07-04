<%--
  Created by IntelliJ IDEA.
  User: lains
  Date: 2023/7/4
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: peng
  Date: 2023/6/9
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>会员登录</title>
    <style type="text/css">
        body {
            background-color: #f1f1f1;
            background-size: 1480px 745px;
        }
        #box{
            display: flex;
            flex-direction: column;
            align-items: center;
            border: 2px solid #dbdada;
            border-radius: 2%;
            width: 500px;
            margin: 100px auto;
            padding-bottom: 40px;
        }
        form {
            padding-top: 40px;
            text-align: center;
        }
        input {
            width: 300px;
            height: 50px;
            margin: 10px;
            font-size: 18px;
            border-radius: 5px;
            border: none;
            outline: none;
            padding-left: 10px;
        }
        button {
            background-color: orange;
            color:white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            width: 120px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: orangered;
        }
    </style>
</head>
<body>
<div id="box">
    <form action="LoginServlet" method="post">
        <h2>用户登录</h2>
        <input type="text" placeholder="请输入用户名" name="uid" required>
        <br>
        <input type="password" placeholder="请输入密码" name="upass" required>
        <br>

        <p>没有账号? <a href="regist.jsp">立即注册</a></p>
        <button type="submit">登录 </button>
    </form>
</div>
</body>
</html>
