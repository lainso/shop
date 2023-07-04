<%--
  Created by IntelliJ IDEA.
  User: peng
  Date: 2023/7/3
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="main.java.com.bean.productBean" %>
<%@ page import="main.java.com.dao.productDao" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>购物商城</title>
    <style>
        body {
            background-color: #dbdada;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #ff5500;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        nav {
            background-color: #f5f5f5;
            padding: 10px;
            text-align: center;
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        li {
            display: inline-block;
            margin-right: 20px;
        }
        li:hover {
            color: red;
        }
        a {
            color: #333;
            text-decoration: none;
            cursor: pointer;
        }

        section {
            background-color: white;
            width: 1190px;
            margin: 0 auto;
            border-radius: 18px 18px 18px 18px;
            position: relative;
            padding: 20px;
            /*text-align: center;*/
        }


        .product {
            display: inline-block;
            /*width: 160px;*/
            margin: 5px;
            padding: 10px;
            border: 1px solid white;
            background-color: rgb(247,249,250);
            border-radius: 12px;
            /*position: relative;*/
        }
        .product:hover{
            border: 1px solid orange;
        }

        #img1 {
            width: 260px;
            height: 260px;
            margin-bottom: 10px;
            border-radius: 5px;
            left: 10px;
        }
        h2{
            color: #ff5000;
        }
        #img2 {
            width: 20px;
            height: 20px;
            margin-right: 2px;
        }
        .product-info {
            position: relative;
            bottom: 0;
            left: 130px;
        }

        .login-form {
            text-align: center;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .login-form input[type="text"] {
            padding: 9px 5px;
            width: 300px;
            margin-right: 10px;
        }

        .login-form input[type="submit"] {
            padding: 9px 18px;
            border-radius: 5px;
            background-color: #ff5500;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>

<header>
<div class="box13">
    <h2 style="color: white">网上商城</h2>


    <%
        if (session.getAttribute("uuid")==null){
    %>
    <font style="position: absolute;right: 220px;top: 6px">欢迎光临，请<a href="login.jsp" style="color: gray">登录</a> </font>
    <ul>
        <a href="regist.jsp"> <li style="position: absolute;right: 130px;top: 6px"><span style="color: blue">立即注册</span>  </li></a>
    </ul>

    <%
    }else {
    %>
    <font style="position: absolute;right: 230px;top: 6px">欢迎 <strong style="color: gray;font-size: 14px"><%=session.getAttribute("uuid")%></strong>, 光临</font>
    <a href="logout.jsp"><span style="position: absolute;right: 170px;top: 6px;color: darkred">退出</span></a>

<%--    <button onclick="exit()" style="position: absolute;right: 170px;top: 6px;color: darkred"> 退出 </button>--%>
    <ul>
        <a href="cart.jsp"> <li style="position: absolute;right: 50px;top: 6px"><span style="color: blue">我的购物车</span>  </li></a>
    </ul>
    <%}%>




</div>
</header>
<nav>
    <ul>
        <a href="#"><li>首页</li></a>
        <li>|</li>
        <a href="#"><li>服装</li></a>
        <li>|</li>
        <a href="#"><li>美食</li></a>
        <li>|</li>
        <a href="#"><li>数码</li></a>
        <li>|</li>
        <a href="#"><li>家居</li></a>
        <li>|</li>
        <a href="#"><li>美妆</li></a>


    </ul>
</nav>

<div class="login-form">

    <form action="#" method="post">
        <input type="text" name="username" placeholder="华为mate40pro">
        <input type="submit" value="搜索">
    </form>
</div>

<section>

    <%

        ArrayList<productBean> pList = productDao.getList();
        for (productBean p : pList){
    %>
    <div class="product">
        <img src="<%=p.getPimg()%>" id="img1">

            <h3><%=p.getPname()%></h3>
            <h2>¥<%=p.getPprice()%></h2>
<%--        <h3><%=p.getPid()%></h3>--%>


        <div class="product-info">
        <a href="#"><img src="https://bpic.588ku.com/element_origin_min_pic/19/06/15/e6a3b7c7bfb6b6d595be46723f5c81a7.jpg" id="img2" >添加到购物车</a>
        </div>
        </div>
        <%}%>



</section>
</body>
<script>
    function exit(){
        document.location.href = "LogoutServlet";
    }
</script>
</html>

