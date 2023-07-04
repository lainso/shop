<%--
  Created by IntelliJ IDEA.
  User: zzz
  Date: 2023/7/4
  Time: 13:22
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
	<title>店铺主页</title>
</head>
<body>
<div class="nav-logo" style="cursor: pointer;"><i class="iconfont" style="color: blue;">&#xe66f;</i>店铺管理</div>
<nav>
	<ol class="nav-bar">
		<li class="click-pro"><span><i class="iconfont" style="color: #fff;">&#xe6a3;</i>商品</span> </li>
		<li>
			<span class="click-cus"><i class="iconfont">&#xe600;</i>分类</span>
		</li>
		<li class="top-bar"><span><i class="iconfont">&#xeb36;</i>渠道</span>
			<ul class="drop-menu hidden">
				<li class="drop-item click-chan"><i class="iconfont">&#xeca7;</i>渠道入口1</li>
				<div class="line"></div>
				<li class="drop-item click-chan"><i class="iconfont">&#xeca7;</i>渠道入口2</li>
			</ul>
		</li>
		<li><span class="click-order"><i class="iconfont">&#xe897;</i>订单</span></li>
		<li class="top-bar"><span><i class="iconfont">&#xe626;</i>统计</span>
			<ul class="drop-menu hidden">
				<li class="drop-item click-count">🥇 统计1</li>
				<div class="line"></div>
				<li class="drop-item click-count">🥈 统计2</li>
			</ul>
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
	<li class="menu-item click-pro"><i class="iconfont" style="color: #000;">&#xe6a3;</i></span>商品</li>
	<li class="menu-item click-cus"><i class="iconfont">&#xe600;</i>分类</li>
	<li class="menu-item openable side-bar"><i class="iconfont">&#xeb36;</i>渠道
		<ul class="sub-menu hidden">
			<li class="menu-item click-chan">渠道入口1</li>
			<li class="menu-item click-chan">渠道入口2</li>
		</ul>
	</li>
	<li class="menu-item click-order"><i class="iconfont">&#xe897;</i>订单</li>
	<li class="menu-item openable side-bar"><i class="iconfont">&#xe626;</i>统计
		<ul class="sub-menu hidden">
			<li class="menu-item click-count">🥇 统计1</li>
			<li class="menu-item click-count">🥈 统计2</li>
		</ul>
	</li>
</ul>
<main>
	<div class="menu">
		<button type="button" class="btn btn-outline-info">查询</button>
		<button type="button" class="btn btn-outline-info">添加</button>
	</div>

	<table class="table">
		<thead>
		<tr>
			<th scope="col">商品编号</th>
			<th scope="col">商品名称</th>
			<th scope="col">商品价格</th>
			<th scope="col">剩余数量</th>
			<th scope="col">商品详情</th>
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

	<div class="page" aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<li class="page-item disabled">
				<a class="page-link">&lt;</a>
			</li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">...</a></li>
			<li class="page-item">
				<a class="page-link" href="#">&gt;</a>
			</li>
		</ul>
	</div>
</main>
</body>
</html>
