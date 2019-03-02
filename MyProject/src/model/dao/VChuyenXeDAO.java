package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import model.bean.VChuyenXe;

public class VChuyenXeDAO {
	public List<VChuyenXe> timChuyenXe(String diemDi, String diemDen, LocalDate ngayXuatPhat){
		List<VChuyenXe> arr= new ArrayList<>();
		String sql="select x.TenNhaXe, tx.DiemDi, tx.DiemDen,cx.GioDi,cx.GioDen, tx.BangGia from TuyenXe as tx inner join ChuyenXe as cx" + 
				" on tx.MaTuyen=cx.MaTuyen inner join Xe as x" + 
				" on cx.MaXe=x.MaXe where tx.DiemDi=? and tx.DiemDen=? and cx.NgayXuatPhat=?";
		DbConnect.getConnect();
		PreparedStatement stmt=null;
		ResultSet rs=null;
		try {
			stmt=DbConnect.cnn.prepareStatement(sql);
			stmt.setString(1, diemDi);
			stmt.setString(2, diemDen);
			stmt.setString(3, ngayXuatPhat.toString());
			rs=stmt.executeQuery();
			while(rs.next()) {
				int bangGia=Integer.parseInt(rs.getString("bangGia"));
				LocalTime gioDi=LocalTime.parse(rs.getTime("gioDi").toString(), DateTimeFormatter.ofPattern("HH:mm:ss"));
				LocalTime gioDen=LocalTime.parse(rs.getTime("gioDen").toString(), DateTimeFormatter.ofPattern("HH:mm:ss"));
				arr.add(new VChuyenXe(rs.getString("tenNhaXe"), rs.getString("diemDi"), rs.getString("diemDen"), gioDi, gioDen, bangGia));
			}
			rs.close();
			stmt.close();
			DbConnect.cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return arr;
	}	
}
