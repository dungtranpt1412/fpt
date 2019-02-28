package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import model.bean.VeXe;

public class VeXeDAO {
	public List<VeXe> getAllVeXe(){
		DbConnect.getConnect();
		List<VeXe> arr= new ArrayList<>();
		String sql="seletct * from VeXe";
		PreparedStatement stmt=null;
		ResultSet rs=null;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			rs=stmt.executeQuery();
			while(rs.next()) {
				arr.add(new VeXe(rs.getInt("maVe"), rs.getString("tenVe"), rs.getString("userID"), rs.getString("maChuXe"), rs.getString("viTri"), rs.getString("maXe"), rs.getDate("ngayDat")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return arr;
	}
	public int addVeXe(String tenVe, String userID, String maChuXe, String viTri, String maXe, Date ngayDat) {
		DbConnect.getConnect();
		String sql="insert into VeXe(tenVe, userID, maChuXe, viTri, maXe, ngayDat) values(?, ?, ?, ?, ?, ?)";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, tenVe);
			stmt.setString(2, userID);
			stmt.setString(3, maChuXe);
			stmt.setString(4, viTri);
			stmt.setString(5, maXe);
			stmt.setString(6, ngayDat.toString());
			c=stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}
	public int updateVeXe(int maVe, String tenVe, String userID, String maChuXe, String viTri, String maXe, Date ngayDat) {
		DbConnect.getConnect();
		String sql="update VeXe set tenVe=?, userID=?, maChuXe=?, viTri=?, maXe=?, ngayDat=? where maVe=?";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, tenVe);
			stmt.setString(2, userID);
			stmt.setString(3, maChuXe);
			stmt.setString(4, viTri);
			stmt.setString(5, maXe);
			stmt.setString(6, ngayDat.toString());
			stmt.setInt(7, maVe);
			c=stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}
	public int deleteVeXe(int maVe) {
		DbConnect.getConnect();
		String sql="delete from VeXe where maVe=?";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setInt(1, maVe);
			c=stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}
}
