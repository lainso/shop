<%--
  Created by IntelliJ IDEA.
  User: zzz
  Date: 2023/7/4
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  <div class="info">
    <p id="super">尊敬的店铺管理员 <span id="uname"></span> ，您好！</p>
    <div class="my-main-list">
      <div class='my-main-list-item'>
        <p><span class='my-item-head'>店铺账号</span><span id="uaccount">123</span></p>
        <p><span class='my-item-head'>店铺类型</span><span id="utype">百货</span></p>
        <p><span class='my-item-head'>店铺信息</span><span id="uinfo">十年老店</span></p>
        <p><span class='my-item-head'>电子邮件</span><span id="umail">852963@798.com</span></p>
        <p class="bttn">
          <button class="my-fix-btn">修改店铺信息</button>
          <button class="fix-pass">修改店铺类型</button>
          <button class="my-del-btn">删除账号并退出</button>
        </p>
      </div>
    </div>
    <div class="my-fix-area hidden">
      <p>修改账户信息</p>
      <p><span class='item-head'>用户账号</span><input type="text" id="fix-account" class="input-M" disabled></p>
      <p><span class='item-head'>用户名</span><input type="text" id="fix-name" class="input-M"></p>
      <p><span class='item-head'>电子邮件</span><input type="text" id="fix-mail" class="input-M"></p>
      <p><button id="fix-submit">确认</button><button id="fix-cancel">取消</button></p>
    </div>
    <div class="fix-area hidden" style="left: 52%; top: 40%;">
      <p>处理中，请稍后</p>
    </div>
  </div>
</main>


<script>
  document.querySelector('.click-pro').addEventListener('click', () => {
    location.href = "shop_index.jsp"
  })

  document.querySelector('.side-menu').addEventListener('click', e => {
    if (e.target.classList.contains('click-pro')) {
      location.href = "shop_index.jsp"
    }
  })
</script>
</body>
</html>
