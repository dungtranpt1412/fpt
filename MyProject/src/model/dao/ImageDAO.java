package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import model.bean.Image;

public class ImageDAO {
	public List<Image> getAllImage(){
		List<Image> arr= new ArrayList<>();
		DbConnect.getConnect();
		String sql="select * from Image";
		PreparedStatement stmt=null;
		ResultSet rs=null;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			rs=stmt.executeQuery();
			while(rs.next()) {
				arr.add(new Image(rs.getString("maXe"), rs.getString("image"), rs.getString("idImage")));
			}
			rs.close();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return arr;
	}
	public int addImage(String maXe, String image, String idImage) {
		DbConnect.getConnect();
		String sql="insert into Image(maXe, image, idImage) values(?, ?, ?)";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, maXe);
			stmt.setString(2, image);
			stmt.setString(3, idImage);
			c= stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}
	public int updateImage(String maXe, String image, String idImage) {
		DbConnect.getConnect();
		String sql="update Image set maXe=?, image=? where idImage=?";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, maXe);
			stmt.setString(2, image);
			stmt.setString(3, idImage);
			c= stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}
	public int deleteImage(String maXe, String image, String idImage) {
		DbConnect.getConnect();
		String sql="delete Image where idImage=?";
		PreparedStatement stmt=null;
		int c=0;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, idImage);
			c= stmt.executeUpdate();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}

}
