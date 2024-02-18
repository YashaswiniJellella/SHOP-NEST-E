package com.controll;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvdao.MvDao;

/**
 * Servlet implementation class UserLog
 */
@WebServlet("/UserLog")
public class UserLog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLog() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ui = request.getParameter("ui");
		String pwd = request.getParameter("pwd");
		String sql = "select * from user;";
		ResultSet rs = MvDao.getLog(sql);
		int i = 0;
		try {
			while(rs.next()){
				if(ui.equalsIgnoreCase(rs.getString(3)) && pwd.equals(rs.getString(4))){
					i++;
					HttpSession session = request.getSession();
					session.setAttribute("user", rs.getString(1));
				}
			}
			if(i == 1){
				response.sendRedirect("User.jsp");
			}else{
				response.sendRedirect("UserLog.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
