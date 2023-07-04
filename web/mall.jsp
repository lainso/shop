<%--
  Created by IntelliJ IDEA.
  User: peng
  Date: 2023/7/3
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            text-align: center;
        }


        .product {
            display: inline-block;
            width: 300px;
            margin: 20px;
            padding: 10px;
            border: 1px solid white;
            background-color: rgb(247,249,250);
            border-radius: 12px;
            position: relative;
        }
        .product:hover{
            border: 1px solid orange;
        }

        .product img {
            width: 150px;
            height: 150px;
            margin-bottom: 10px;
            border-radius: 5px;
            left: 10px;
        }
        .product-info {
            text-align: left;
            position: absolute;
            top: 0;
            left: 210px;
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
        if (session.getAttribute("username")==null){
    %>
    <font style="position: absolute;right: 220px;top: 6px">欢迎光临，请<a href="login.jsp" style="color: gray">登录</a> </font>
    <ul>
        <a href="regist.jsp"> <li style="position: absolute;right: 130px;top: 6px"><span style="color: blue">立即注册</span>  </li></a>
    </ul>

    <%
    }else {
    %>
    <font style="position: absolute;right: 230px;top: 6px">欢迎 <strong style="color: gray;font-size: 14px"><%=session.getAttribute("username")%></strong>, 光临</font>
    <a href="login.jsp"> <li style="position: absolute;right: 170px;top: 6px"><span style="color: darkred">退出</span>  </li></a>
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
        <a href="#"><li>电子产品</li></a>
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


    <div class="product">
        <img src="img/仰望U8.jpg" alt="Product 1">
        <div class="product-info">
            <h3>仰望U8</h3>
            <p>商品描述信息</p>

        </div>
        <a href="#">添加到购物车</a>
    </div>

    <div class="product">
        <img src="img/仰望U8.jpg" alt="Product 2">
        <div class="product-info">
            <h3>仰望U8</h3>
            <p>商品描述信息</p>
        </div>
        <a href="#">添加到购物车</a>
    </div>

    <div class="product">
        <img src="img/海豹.jpg" alt="Product 3">
        <div class="product-info">
            <h3>海豹</h3>
            <p>商品描述信息</p>

        </div>
        <a href="#">添加到购物车</a>
    </div>

    <div class="product">
        <img src="img/海豹.jpg" alt="Product 4">
        <div class="product-info">
            <h3>海豹</h3>
            <p>商品描述信息</p>

        </div>
        <a href="#">添加到购物车</a>
    </div>

    <div class="product">
        <img src="img/10pro.png" alt="Product 5">
        <div class="product-info">
            <h3>华为nova10pro</h3>
            <p>商品描述信息</p>

        </div>
        <a href="#">添加到购物车</a>
    </div>

    <div class="product">
        <img src="img/10pro.png" alt="Product 6">
        <div class="product-info">
            <h3>华为nova10pro</h3>
            <p>商品描述信息</p>

        </div>
        <a href="#">添加到购物车</a>
    </div>




</section>
</body>
</html>

