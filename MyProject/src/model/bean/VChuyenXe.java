package model.bean;

import java.time.LocalTime;

public class VChuyenXe {
	private String tenNhaXe;
	private String diemDi;
	private String diemDen;
	private LocalTime gioDi;
	private LocalTime gioDen;
	private int bangGia;
	public String getTenNhaXe() {
		return tenNhaXe;
	}
	public void setTenNhaXe(String tenNhaXe) {
		this.tenNhaXe = tenNhaXe;
	}
	public String getDiemDi() {
		return diemDi;
	}
	public void setDiemDi(String diemDi) {
		this.diemDi = diemDi;
	}
	public String getDiemDen() {
		return diemDen;
	}
	public void setDiemDen(String diemDen) {
		this.diemDen = diemDen;
	}
	public LocalTime getGioDi() {
		return gioDi;
	}
	public void setGioDi(LocalTime gioDi) {
		this.gioDi = gioDi;
	}
	public LocalTime getGioDen() {
		return gioDen;
	}
	public void setGioDen(LocalTime gioDen) {
		this.gioDen = gioDen;
	}
	public int getBangGia() {
		return bangGia;
	}
	public void setBangGia(int bangGia) {
		this.bangGia = bangGia;
	}
	public VChuyenXe(String tenNhaXe, String diemDi, String diemDen, LocalTime gioDi, LocalTime gioDen, int bangGia) {
		super();
		this.tenNhaXe = tenNhaXe;
		this.diemDi = diemDi;
		this.diemDen = diemDen;
		this.gioDi = gioDi;
		this.gioDen = gioDen;
		this.bangGia = bangGia;
	}
	public VChuyenXe() {
	}
	
	
	

}
