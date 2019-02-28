package form;

import java.util.List;

import org.apache.struts.action.ActionForm;

import model.bean.User;

@SuppressWarnings("serial")
public class UserForm extends ActionForm{
	private String userID;
	private String password;
	private String hoTen;
	private String ngaySinh;
	private String gioiTinh;
	private String cmnd;
	private String dienThoai;
	private String email;
	private String maQuyen;
	private List<User> lstUser;
	private String action;
	private String thongBao;
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(String ngaySinh) {
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
	public String getMaQuyen() {
		return maQuyen;
	}
	public void setMaQuyen(String maQuyen) {
		this.maQuyen = maQuyen;
	}
	public List<User> getLstUser() {
		return lstUser;
	}
	public void setLstUser(List<User> lstUser) {
		this.lstUser = lstUser;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public String getThongBao() {
		return thongBao;
	}
	public void setThongBao(String thongBao) {
		this.thongBao = thongBao;
	}
	
	
	
	
	
}
