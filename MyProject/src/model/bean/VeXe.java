package model.bean;

import java.util.Date;

public class VeXe {
	private int maVe;
	private String tenVe;
	private String userID;
	private String maCX;
	private String viTri;
	private Date ngayDat;
	public int getMaVe() {
		return maVe;
	}
	public void setMaVe(int maVe) {
		this.maVe = maVe;
	}
	public String getTenVe() {
		return tenVe;
	}
	public void setTenVe(String tenVe) {
		this.tenVe = tenVe;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getMaCX() {
		return maCX;
	}
	public void setMaCX(String maCX) {
		this.maCX = maCX;
	}
	public String getViTri() {
		return viTri;
	}
	public void setViTri(String viTri) {
		this.viTri = viTri;
	}
	public Date getNgayDat() {
		return ngayDat;
	}
	public void setNgayDat(Date ngayDat) {
		this.ngayDat = ngayDat;
	}
	public VeXe(int maVe, String tenVe, String userID, String maCX, String viTri, Date ngayDat) {
		super();
		this.maVe = maVe;
		this.tenVe = tenVe;
		this.userID = userID;
		this.maCX = maCX;
		this.viTri = viTri;
		this.ngayDat = ngayDat;
	}
	public VeXe() {
		
	}
}
