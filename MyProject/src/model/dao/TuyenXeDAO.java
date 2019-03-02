package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.bean.TuyenXe;

public class TuyenXeDAO {
	public List<TuyenXe> getAllTuyenXe(){
		List<TuyenXe> arr= new ArrayList<>();
		String sql="select * from TuyenXe";
		DbConnect.getConnect();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			rs=stmt.executeQuery();
			while(rs.next()) {
				arr.add(new TuyenXe(rs.getString("maTuyen"), rs.getString("tenTuyen"), rs.getString("diemDi"), rs.getString("diemDen"), rs.getInt("bangGia")));
			}
			rs.close();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return arr;	
	}
	public int addTuyenXe(String maTuyen, String tenTuyen, String diemDi, String diemDen, int bangGia) {
		DbConnect.getConnect();
		String sql="insert into TuyenXe(maTuyen, tenTuyen, diemDi, diemDen, bangGia) values(?, ?, ?, ?, ?)";
		int c=0;
		PreparedStatement stmt=null;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, maTuyen);
			stmt.setString(2, tenTuyen);
			stmt.setString(3, diemDi);
			stmt.setString(4, diemDen);
			stmt.setInt(5, bangGia);
			c=stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;	
	}
	public int updateTuyenXe(String maTuyen, String tenTuyen, String diemDi, String diemDen, int bangGia) {
		DbConnect.getConnect();
		String sql="update TuyenXe set tenTuyen=?, diemDi=?, diemDen=?, bangGia=? where maTuyen=?";
		int c=0;
		PreparedStatement stmt=null;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, tenTuyen);
			stmt.setString(2, diemDi);
			stmt.setString(3, diemDen);
			stmt.setInt(4, bangGia);
			stmt.setString(5, maTuyen);
			c=stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;	
	}
	public int deleteTuyenXe(String maTuyen) {
		DbConnect.getConnect();
		String sql="delete from TuyenXe where maTuyen=?";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, maTuyen);
			c= stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;	
	}
}
