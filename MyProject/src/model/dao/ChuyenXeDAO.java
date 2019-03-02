package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import model.bean.ChuyenXe;

public class ChuyenXeDAO {
	public List<ChuyenXe> getAllChuyenXe(){
		String sql="select * from chuyenxe";
		List<ChuyenXe> arr= new ArrayList<>();
		DbConnect.getConnect();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			rs=stmt.executeQuery();
			while(rs.next()) {
				
				LocalTime gioDi=LocalTime.parse(rs.getTime("gioDi").toString(), DateTimeFormatter.ofPattern("HH:mm:ss"));
				LocalTime gioDen=LocalTime.parse(rs.getTime("gioDi").toString(), DateTimeFormatter.ofPattern("HH:mm:ss"));
				LocalDate ngayXuatPhat=LocalDate.parse(rs.getString("ngayXuatPhat"), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				arr.add(new ChuyenXe(rs.getString("macx"), rs.getString("maTuyen"), gioDi, gioDen, rs.getString("userID"), rs.getInt("choTrong"), rs.getString("maTaiXe"), rs.getString("maXe"), ngayXuatPhat));			
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return arr;
	}
	public int addChuyenXe(String maChuyenXe, String maTuyen, LocalTime gioDi, LocalTime gioDen, String userID, 
			int choTrong, String maTaiXe, String maXe, LocalDate ngayXuatPhat) {
		DbConnect.getConnect();
		String sql="insert into chuyenxe(maCX, maTuyen, gioDi, gioDen, userID, choTrong, maTaiXe, maXe, ngayXuatPhat)"
				+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		int c=0;
		PreparedStatement stmt=null;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, maChuyenXe);
			stmt.setString(2, maTuyen);
			stmt.setString(3, gioDi.toString());
			stmt.setString(4, gioDen.toString());
			stmt.setString(5, userID);
			stmt.setInt(6, choTrong);
			stmt.setString(7, maTaiXe);
			stmt.setString(8, maXe);
			stmt.setString(9, ngayXuatPhat.toString());
			c=stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return c;
	}
	public int updateChuyenXe(String maChuyenXe, String maTuyen, LocalTime gioDi, LocalTime gioDen, String userID, 
			int choTrong, String maTaiXe, String maXe, LocalDate ngayXuatPhat) {
		DbConnect.getConnect();
		String sql="update ChuyenXe set maTuyen=?, gioDi=?, gioDen=?, userID=?, choTrong=?, maTaiXe=?, maXe=?, ngayXuatPhat=?"
				+ " where macx=?";	
		int c=0;
		PreparedStatement stmt=null;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, maTuyen);
			stmt.setString(2, gioDi.toString());
			stmt.setString(3, gioDen.toString());
			stmt.setString(4, userID);
			stmt.setInt(5, choTrong);
			stmt.setString(6, maTaiXe);
			stmt.setString(7, maXe);
			stmt.setString(8, ngayXuatPhat.toString());
			stmt.setString(9, maChuyenXe);
			c=stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return c;
	}
	public int deleteChuyenXe(String maChuyenXe) {
		DbConnect.getConnect();
		String sql="delete from ChuyenXe where maCX=?";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, maChuyenXe);
			c=stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}
	
	

}
