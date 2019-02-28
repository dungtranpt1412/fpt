package model.bean;

import java.time.LocalDate;

public class TaiXe {
	private String maTaiXe;
	private String tenTaiXe;
	private LocalDate ngaySinh;
	private String gioiTinh;
	private String cmnd;
	private String dienThoai;
	public String getMaTaiXe() {
		return maTaiXe;
	}
	public void setMaTaiXe(String maTaiXe) {
		this.maTaiXe = maTaiXe;
	}
	public String getTenTaiXe() {
		return tenTaiXe;
	}
	public void setTenTaiXe(String tenTaiXe) {
		this.tenTaiXe = tenTaiXe;
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
	public TaiXe(String maTaiXe, String tenTaiXe, LocalDate ngaySinh, String gioiTinh, String cmnd, String dienThoai) {
		super();
		this.maTaiXe = maTaiXe;
		this.tenTaiXe = tenTaiXe;
		this.ngaySinh = ngaySinh;
		this.gioiTinh = gioiTinh;
		this.cmnd = cmnd;
		this.dienThoai = dienThoai;
	}
	public TaiXe() {
		
	}
}
