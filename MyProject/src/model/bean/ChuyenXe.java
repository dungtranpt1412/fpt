package model.bean;

import java.time.LocalTime;

public class ChuyenXe {
	private String maChuyenXe;
	private String maTuyen;
	private LocalTime gioDi;
	private LocalTime gioDen;
	private String userID;
	private int choTrong;
	private String maTaiXe;
	public String getMaChuyenXe() {
		return maChuyenXe;
	}
	public void setMaChuyenXe(String maChuyenXe) {
		this.maChuyenXe = maChuyenXe;
	}
	public String getMaTuyen() {
		return maTuyen;
	}
	public void setMaTuyen(String maTuyen) {
		this.maTuyen = maTuyen;
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
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public int getChoTrong() {
		return choTrong;
	}
	public void setChoTrong(int choTrong) {
		this.choTrong = choTrong;
	}
	public String getMaTaiXe() {
		return maTaiXe;
	}
	public void setMaTaiXe(String maTaiXe) {
		this.maTaiXe = maTaiXe;
	}
	public ChuyenXe(String maChuyenXe, String maTuyen, LocalTime gioDi, LocalTime gioDen, String userID, int choTrong,
			String maTaiXe) {
		super();
		this.maChuyenXe = maChuyenXe;
		this.maTuyen = maTuyen;
		this.gioDi = gioDi;
		this.gioDen = gioDen;
		this.userID = userID;
		this.choTrong = choTrong;
		this.maTaiXe = maTaiXe;
	}
	public ChuyenXe() {
	}

}
