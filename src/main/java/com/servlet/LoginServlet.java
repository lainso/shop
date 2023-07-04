package main.java.com.servlet;

import main.java.com.dao.userDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String uid2 = request.getParameter("uid");
        String upass = request.getParameter("upass");
        long uid = Long.parseLong(uid2);

        boolean shop = userDao.shop_login(uid, upass);
        boolean isp = userDao.isp_login(uid, upass);
        boolean user = userDao.user_login(uid, upass);

        if (shop) {
            request.getSession().setAttribute("identity", "SHOP");
            request.getSession().setAttribute("uuid", uid2);
            response.sendRedirect("shop_index.jsp");
        } else if(isp){
            request.getSession().setAttribute("identity", "ISP");
            request.getSession().setAttribute("uuid", uid2);
            response.sendRedirect("isp_index.jsp");
        } else if(user){
            request.getSession().setAttribute("identity", "USER");
            request.getSession().setAttribute("uuid", uid2);
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
    }
}