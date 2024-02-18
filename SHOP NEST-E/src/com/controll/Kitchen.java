package com.controll;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bean.AppliancesBean;
import com.mvdao.MvDao;

/**
 * Servlet implementation class Kitchen
 */
@MultipartConfig(maxFileSize=16177215)
@WebServlet("/Kitchen")
public class Kitchen extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Kitchen() {
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
		String product = request.getParameter("pdt");
		String pid = request.getParameter("pid");
		String pname = request.getParameter("pname");
		String pcom = request.getParameter("pcom");
		String pfeatures = request.getParameter("pftr");
		int pcost = Integer.parseInt(request.getParameter("pcost"));
		int qun = Integer.parseInt(request.getParameter("qun"));
		InputStream inpstm=null;
		Part img=request.getPart("pimg");
		if(img!=null){
			inpstm=img.getInputStream();
		}
		Double rate = Double.parseDouble(request.getParameter("rate"));
		AppliancesBean ab = new AppliancesBean();
		ab.setPid(pid);
		ab.setProduct(product);
		ab.setPname(pname);
		ab.setPcom(pcom);
		ab.setPfeatures(pfeatures);
		ab.setPcost(pcost);
		ab.setPhoto(inpstm);
		ab.setQuantity(qun);
		ab.setRate(rate);
		String sql = "insert into kitchen values(?,?,?,?,?,?,?,?,?)";
		int i = MvDao.setAppliances(sql, ab);
		if(i == 1){
			response.sendRedirect("ProductUpdate.jsp");
		}
	}

}
