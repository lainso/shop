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
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="./static/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="./static/css/store.css">
	<script src="./static/js/bootstrap.bundle.min.js"></script>
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
		<li class="top-bar top-right"><span>🙍‍♂️ 管理员</span>
			<ul class="drop-menu hidden" style="right:0;">
				<li class="drop-item click-mgr">📰 账号管理</li>
				<div class="line"></div>
				<li class="drop-item click-signout">🔐 退出登录</li>
			</ul>
		</li>
	</ol>
</nav>
<ul class="side-menu">
	<!-- <li class="menu-header" style="padding-top: 15px;">操作菜单 👇</li> -->
	<li class="menu-item click-pro"><i class="iconfont" style="color: orange">&#xe614;</i></span>订单处理</li>
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
			<th scope="col">货物名称</th>
			<th scope="col">订单价格</th>
			<th scope="col">订单数量</th>
			<th scope="col">订单详情</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<th scope="row">1</th>
			<td>可口可乐</td>
			<td>3￥</td>
			<td>99</td>
			<td>喝的</td>
		</tr>
		<tr>
			<th scope="row">2</th>
			<td>橙汁</td>
			<td>3￥</td>
			<td>112</td>
			<td>喝的</td>
		</tr>
		<tr>
			<th scope="row">3</th>
			<td>椰汁</td>
			<td>4￥</td>
			<td>88</td>
			<td>喝的</td>
		</tr>
		<tr>
			<th scope="row">1</th>
			<td>可口可乐</td>
			<td>3￥</td>
			<td>99</td>
			<td>喝的</td>
		</tr>
		<tr>
			<th scope="row">1</th>
			<td>可口可乐</td>
			<td>3￥</td>
			<td>99</td>
			<td>喝的</td>
		</tr>
		<tr>
			<th scope="row">1</th>
			<td>可口可乐</td>
			<td>3￥</td>
			<td>99</td>
			<td>喝的</td>
		</tr>
		<tr>
			<th scope="row">1</th>
			<td>可口可乐</td>
			<td>3￥</td>
			<td>99</td>
			<td>喝的</td>
		</tr>
		<tr>
			<th scope="row">1</th>
			<td>可口可乐</td>
			<td>3￥</td>
			<td>99</td>
			<td>喝的</td>
		</tr>
		<tr>
			<th scope="row">1</th>
			<td>可口可乐</td>
			<td>3￥</td>
			<td>99</td>
			<td>喝的</td>
		</tr>
		</tbody>
	</table>
</main>


</body>
</html>
