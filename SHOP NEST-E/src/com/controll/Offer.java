package com.controll;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvdao.MvDao;

/**
 * Servlet implementation class Offer
 */
@WebServlet("/Offer")
public class Offer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Offer() {
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
		String product = request.getParameter("product");
		int discount = Integer.parseInt(request.getParameter("dis"));
		
		String sql = "update offer set Discount="+discount+" where Product='"+product+"'";
		int i = MvDao.updateOffer(sql);
		if(i == 1){
			response.sendRedirect("OfferSuccess.jsp");
		}else{
			System.out.println("Hello");
			response.sendRedirect("OfferSuccess.jsp");
		}
	}

}
