<%--
  Created by IntelliJ IDEA.
  User: peng
  Date: 2023/6/9
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册界面</title>
    <style>
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
            width: 600px;
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
            color: white;
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
    <script src="./static/js/regist.js"></script>
</head>
<body>
<div id="box">
    <form action="add.jsp" id="form">
        <h2>注册页面</h2>
        <table>
            <tr>
                <td class="text"><span>用户名:</span></td>
                <td class="input"> <input type="text" placeholder="请输入1到12位用户名" name="username" id="username" required>
                    <label id="label_username"></label>
                </td>
            </tr>

            <tr>
                <td class="text"><span>密码:</span></td>
                <td class="input"><input type="password" placeholder="请输入6到12位密码" name="password" id="password" required>
                    <label id="label_password"></label></td>
            </tr>

            <tr>
                <td class="text"><span>确认密码:</span></td>
                <td class="input"><input type="password" placeholder="请再次输入密码" name="checkpassword" id="checkpassword" required>
                    <label id="label_checkpassword"></label></td>
            </tr>
            <tr>
                <td><span></span></td>
                <td>
                    <p>已有账号？ <a href="login.jsp">点击登录</a></p>
                    <button type="submit" onclick="regist()">注册</button>
                </td>
            </tr>
        </table>


    </form>
</div>
</body>
</html>

