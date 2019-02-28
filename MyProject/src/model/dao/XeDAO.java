package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.bean.Xe;

public class XeDAO {
	public List<Xe> getAllXe(){
		List<Xe> arr= new ArrayList<>();
		DbConnect.getConnect();
		String sql="select * from Xe";
		PreparedStatement stmt=null;
		ResultSet rs=null;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			rs=stmt.executeQuery();
			while(rs.next()) {
				arr.add(new Xe(rs.getString("maXe"), rs.getString("tenXe"), rs.getString("bienSo"), rs.getInt("soGhe")));
			}
			rs.close();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return arr;
	}
	public int addXe(String maXe, String tenXe, String bienSo, int soGhe) {
		DbConnect.getConnect();
		String sql="insert into Xe(maXe, tenXe, bienSo, soGhe) values(?, ?, ?, ?)";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, maXe);
			stmt.setString(2, tenXe);
			stmt.setString(3, bienSo);
			stmt.setInt(4, soGhe);
			c= stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;		
	}
	public int updateXe(String maXe, String tenXe, String bienSo, int soGhe) {
		DbConnect.getConnect();
		String sql="update Xe set tenXe=?, bienSo=?, soGhe=? where maXe=?";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, tenXe);
			stmt.setString(2, bienSo);
			stmt.setInt(3, soGhe);
			stmt.setString(4, maXe);
			c= stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;		
	}
	public int deleteXe(String maXe) {
		DbConnect.getConnect();
		String sql="delete from Xe where maXe=?";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, maXe);
			c= stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;	
	}
}
