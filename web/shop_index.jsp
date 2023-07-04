<%--
  Created by IntelliJ IDEA.
  User: lains
  Date: 2023/7/4
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="main.java.com.bean.orderBean" %>
<%@ page import="main.java.com.dao.orderDao" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="./static/css/bootstrap.min.css" rel="stylesheet">
	<script src="./static/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="./static/css/store.css">
	<title>店铺管理</title>
</head>

<body>
<div class="nav-logo" style="cursor: pointer;"><i class="iconfont" style="color: blue;">&#xe66f;</i>店铺管理</div>
<nav>
	<ol class="nav-bar">
		<li class="click-pro"><span><i class="iconfont" style="color: orange">&#xe614;</i>订单处理</span> </li>
		<li>
			<span class="click-cus"><i class="iconfont" style="color: orange">&#xf837;</i>店铺信息</span>
		</li>
	</ol>

	<ol class="nav-bar" style="margin-left: auto; margin-right:1.5rem">
		<li class="top-bar top-right"><span>🙍‍♂️ 店家版</span>
			<ul class="drop-menu hidden" style="right:0;">
				<li class="drop-item click-mgr">📰 账号管理</li>
				<div class="line"></div>
				<li class="drop-item click-signout">🔐 退出登录</li>
			</ul>
		</li>
	</ol>
</nav>
<ul class="side-menu">
	<li class="menu-item click-pro"><i class="iconfont" style="color: orange">&#xe614;</i>订单处理</li>
	<li class=" menu-item click-cus"><i class="iconfont" style="color: orange">&#xf837;</i>店铺信息</li>
</ul>
<main>
	<div class="menu" style="margin-bottom: 30px;">
		<button type="button" class="btn btn-outline-info">查询</button>
		<button type="button" class="btn btn-outline-info">添加</button>
	</div>
	<table class="table show">
		<thead>
		<tr>
			<th scope="col">订单编号</th>
			<th scope="col">订单时间</th>
			<th scope="col">购买店铺</th>
			<th scope="col">订单详情</th>
		</tr>
		</thead>
		<tbody>
		<%
			String uid2 = (String) session.getAttribute("uuid");
			long uid = Long.parseLong(uid2);
			ArrayList<orderBean> orderList = orderDao.getList(uid);
			for (orderBean o : orderList){
		%>
		<tr>
			<th scope="row"><%=o.getOid()%></th>
			<td><%=o.getOtime()%></td>
			<td><%=o.getSname()%></td>
			<td><%=o.getOlist()%></td>
		</tr>
		<%}%>
		</tbody>
	</table>
</main>

</body>
</html>
