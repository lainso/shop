package main.java.com.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
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
        response.sendRedirect(request.getContextPath() + "/login.jsp"); // 使用context path来避免硬编码
    }
}
