<%--
  Created by IntelliJ IDEA.
  User: peng
  Date: 2023/7/4
  Time: 17:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    // 移除 session
    HttpSession identity = request.getSession(false); // 通过参数false确保不会创建新session
    if (identity != null) {
        identity.removeAttribute("identity");
        identity.invalidate(); // 使当前 session 失效
    }

    HttpSession uuid = request.getSession(false);
    if (uuid != null) {
        uuid.removeAttribute("uuid");
        uuid.invalidate();
    }

    // 重定向到 login.jsp 页面
    response.sendRedirect("index.jsp"); // 使用context path来避免硬编码
%>
</body>
</html>
