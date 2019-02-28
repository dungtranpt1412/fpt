package model.bean;

import java.time.LocalDate;

public class User {
	private String userID;
	private String hoTen;
	private LocalDate ngaySinh;
	private String gioiTinh;
	private String cmnd;
	private String dienThoai;
	private String email;
	private int maQuyen;
	private String password;
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public LocalDate getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(LocalDate ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public String getGioiTinh() {
		return gioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	public String getCmnd() {
		return cmnd;
	}
	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}
	public String getDienThoai() {
		return dienThoai;
	}
	public void setDienThoai(String dienThoai) {
		this.dienThoai = dienThoai;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getMaQuyen() {
		return maQuyen;
	}
	public void setMaQuyen(int maQuyen) {
		this.maQuyen = maQuyen;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public User(String userID, String hoTen, LocalDate ngaySinh, String gioiTinh, String cmnd, String dienThoai,
			String email, int maQuyen, String password) {
		super();
		this.userID = userID;
		this.hoTen = hoTen;
		this.ngaySinh = ngaySinh;
		this.gioiTinh = gioiTinh;
		this.cmnd = cmnd;
		this.dienThoai = dienThoai;
		this.email = email;
		this.maQuyen = maQuyen;
		this.password = password;
	}
	public User() {
		
	}

}
