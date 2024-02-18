package com.controll;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvdao.MvDao;

/**
 * Servlet implementation class Cart
 * @param <E>
 */
@WebServlet("/Cart")
public class Cart<E> extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con = MvDao.connect();
		try{
			String sql = "select * from cart;";
			ResultSet rs = MvDao.getLog(sql);
			int i = 0;
			PreparedStatement ps = con.prepareStatement("insert into orders values(?,?,?,?);");
			Date d = new Date();
			String s = ""+d;
			while(rs.next()){
				ps.setString(1, rs.getString(1));
				ps.setString(2, rs.getString(2));
				ps.setInt(3, rs.getInt(3));
				ps.setString(4, s);
				i = ps.executeUpdate();
			}
			if(i == 1){
				response.sendRedirect("Orders.jsp");
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
}
