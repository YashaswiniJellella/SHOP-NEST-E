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

import com.bean.RegBean;
import com.mvdao.MvDao;

/**
 * Servlet implementation class UserRegistration
 */
@MultipartConfig(maxFileSize=16177215)
@WebServlet("/UserRegistration")
public class UserRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegistration() {
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
		String fname = request.getParameter("fn");
		String lname = request.getParameter("ln");
		String email = request.getParameter("email");
		String pass = request.getParameter("pwd");
		String mob = request.getParameter("mob");
		String gen = request.getParameter("gen");
		String dob = request.getParameter("dob");
		String add = request.getParameter("add");
		InputStream inpstm=null;
		Part img=request.getPart("photo");
		if(img!=null){
			inpstm=img.getInputStream();
		}
		String sql = "insert into user values(?,?,?,?,?,?,?,?,?)";
		RegBean rb = new RegBean();
		rb.setFname(fname);
		rb.setLname(lname);
		rb.setEmail(email);
		rb.setPass(pass);
		rb.setMob(mob);
		rb.setGen(gen);
		rb.setDob(dob);
		rb.setAdd(add);
		rb.setPhoto(inpstm);
		int i = MvDao.userRegister(sql, rb);
		if(i == 1){
			response.sendRedirect("UserRegSuccess.jsp");
		}else{
			response.sendRedirect("RegisterError.jsp");
		}
	}

}
