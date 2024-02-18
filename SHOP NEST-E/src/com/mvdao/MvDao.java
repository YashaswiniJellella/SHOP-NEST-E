package com.mvdao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.AppliancesBean;
import com.bean.CartBean;
import com.bean.RegBean;
import com.bean.ViewBean;

public class MvDao {
	public static Connection connect()
	{
		Connection con = null;
		try{  
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vtjdm02_2022","root","root");
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
	}

	public static int setAppliances(String sql, AppliancesBean ab) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection con = connect();
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, ab.getPid());
			ps.setString(2, ab.getProduct());
			ps.setString(3, ab.getPname());
			ps.setString(4, ab.getPcom());
			ps.setString(5, ab.getPfeatures());
			ps.setDouble(6, ab.getPcost());
			InputStream inpstm=ab.getPhoto();
			 if(inpstm !=null)
			 {
					ps.setBinaryStream(7, inpstm,16177215 );
				}
			ps.setInt(8, ab.getQuantity());
			ps.setDouble(9, ab.getRate());
			i = ps.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return i;
	}

	public static int userRegister(String sql, RegBean rb) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection con = connect();
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, rb.getFname());
			ps.setString(2, rb.getLname());
			ps.setString(3, rb.getEmail());
			ps.setString(4, rb.getPass());
			ps.setString(5, rb.getMob());
			ps.setString(6, rb.getGen());
			ps.setString(7, rb.getDob());
			ps.setString(8, rb.getAdd());
			InputStream inpstm=rb.getPhoto();
			 if(inpstm !=null)
			 {
					ps.setBinaryStream(9, inpstm,16177215 );
				}
			i = ps.executeUpdate();
		}catch(Exception e){
			return 0;
		}
		return i;
	}

	public static ResultSet getLog(String sql) {
		// TODO Auto-generated method stub
		Connection con = connect();
		ResultSet rs = null;
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rs;
	}
	public static int setView(ViewBean vb, String sql1){
		int i = 0;
		Connection con = connect();
		try{
			PreparedStatement ps = con.prepareStatement(sql1);
			ps.setString(1, vb.getUser());
			ps.setString(2, vb.getProductId());
			ps.setInt(3, vb.getCount());
			i = ps.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return i;
	}

	public static int updateOffer(String sql) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection con = connect();
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			i = ps.executeUpdate();
			System.out.println(i);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return i;
	}

	public static int addCart(CartBean cb, String sql) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection con = connect();
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, cb.getUid());
			ps.setString(2, cb.getPid());
			ps.setInt(3, cb.getPrice());
			i = ps.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return i;
	}
	public static void deleteCart(String sql){
		Connection con = connect();
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.execute();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}
