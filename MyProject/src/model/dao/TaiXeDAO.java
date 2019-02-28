package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import model.bean.TaiXe;

public class TaiXeDAO {
	public List<TaiXe> getAllTaiXe(){
		DbConnect.getConnect();
		String sql="select * from TaiXe";
		List<TaiXe> arr= new ArrayList<>();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			rs=stmt.executeQuery();
			while(rs.next()) {
				LocalDate ngaySinh= LocalDate.parse(rs.getString("ngaySinh"), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				arr.add(new TaiXe(rs.getString("maTaiXe"), rs.getString("tenTaiXe"), ngaySinh, rs.getString("gioiTinh"), rs.getString("cmnd"), rs.getString("dienThoai")));
			}
			rs.close();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return arr;
	}
	public int addTaiXe(String maTaiXe, String tenTaiXe, LocalDate ngaySinh, String gioiTinh, String cmnd, String dienThoai) {
		DbConnect.getConnect();
		String sql="insert into TaiXe(maTaiXe, tenTaiXe, ngaySinh, gioiTinh, cmnd, dienThoai) values(?, ?, ?, ?, ?, ?)";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, maTaiXe);
			stmt.setString(2, tenTaiXe);
			stmt.setString(3, ngaySinh.toString());
			stmt.setString(4, gioiTinh);
			stmt.setString(5, cmnd);
			stmt.setString(6, dienThoai);
			c=stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;	
	}
	public int updateTaiXe(String maTaiXe, String tenTaiXe, LocalDate ngaySinh, String gioiTinh, String cmnd, String dienThoai) {
		DbConnect.getConnect();
		String sql="update TaiXe set tenTaiXe=?, ngaySinh=?, gioiTinh=?, cmnd=?, dienThoai=?) where maTaiXe=?";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, tenTaiXe);
			stmt.setString(2, ngaySinh.toString());
			stmt.setString(3, gioiTinh);
			stmt.setString(4, cmnd);
			stmt.setString(5, dienThoai);
			stmt.setString(6, maTaiXe);
			c=stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;	
	}
	public int deleteTaiXe(String maTaiXe) {
		DbConnect.getConnect();
		String sql="delete from TaiXe where maTaiXe=?";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, maTaiXe);
			c=stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;	
	}
}
