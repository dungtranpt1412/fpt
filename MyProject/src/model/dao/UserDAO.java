package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import model.bean.User;

public class UserDAO {
	public List<User> getAllUser() {
		DbConnect.getConnect();
		String sql="select * from [user]";
		List<User> arr= new ArrayList<>();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			rs=stmt.executeQuery();
			while(rs.next()) {
				LocalDate ngaySinh= LocalDate.parse(rs.getString("ngaySinh"), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				arr.add(new User(rs.getString("userID"), rs.getString("hoTen"), ngaySinh, rs.getString("gioiTinh"), rs.getString("cmnd"), rs.getString("dienThoai"), rs.getString("email"), rs.getInt("maQuyen"), rs.getString("password")));
			}
			rs.close();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return arr;	
	}
	public boolean checkLogin(String userID, String password) {
		DbConnect.getConnect();
		String sql="select * from [user] where userID=? and password=?";
		PreparedStatement stmt=null;
		ResultSet rs=null;
		boolean l=false;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, userID);
			stmt.setString(2, password);
			rs=stmt.executeQuery();
			l=rs.next();
			rs.close();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return l;
	}
	public int addUser(String userID, String password, String hoTen, LocalDate ngaySinh, String gioiTinh, String cmnd, String dienThoai, String email,
			int maQuyen) {
		DbConnect.getConnect();
		String sql="insert into [user](userID, password, hoTen, ngaySinh, gioiTinh, cmnd, dienThoai, email, maQuyen)"
				+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?)";		
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, userID);
			stmt.setString(2, password);
			stmt.setString(3, hoTen);
			stmt.setString(4, ngaySinh.toString());
			stmt.setString(5, gioiTinh);
			stmt.setString(6, cmnd);
			stmt.setString(7, dienThoai);
			stmt.setString(8, email);
			stmt.setInt(9, maQuyen);
			c=stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return c;
	}
	public int updateUser(String userID, String password, String hoTen, LocalDate ngaySinh, String gioiTinh, String cmnd, String dienThoai, String email,
			int maQuyen) {
		DbConnect.getConnect();
		String sql="update [user] set password=?, hoTen=?, ngaySinh=?, gioiTinh=?, cmnd=?, dienThoai=?,"
				+ " email=?, maQuyen=? where userID=?";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, password);
			stmt.setString(2, hoTen);
			stmt.setString(3, ngaySinh.toString());
			stmt.setString(4, gioiTinh);
			stmt.setString(5, cmnd);
			stmt.setString(6, dienThoai);
			stmt.setString(7, email);
			stmt.setInt(8, maQuyen);
			stmt.setString(9, userID);
			c=stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}
	public int deleteUser(String userID) {
		DbConnect.getConnect();
		String sql="delete from [user] where userID=?";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, userID);
			c=stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return c;
	}
	public static void main(String[] args) {
		new UserDAO().updateUser("1", "123", "123", LocalDate.now(), "123", "123", "123", "123", 0);
	}

}
