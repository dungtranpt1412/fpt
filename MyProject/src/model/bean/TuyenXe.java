package model.bean;



public class TuyenXe {
	private String maTuyen;
	private String tenTuyen;
	private String diemDi;
	private String diemDen;
	private int bangGia;
	public String getMaTuyen() {
		return maTuyen;
	}
	public void setMaTuyen(String maTuyen) {
		this.maTuyen = maTuyen;
	}
	public String getTenTuyen() {
		return tenTuyen;
	}
	public void setTenTuyen(String tenTuyen) {
		this.tenTuyen = tenTuyen;
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
	public int getBangGia() {
		return bangGia;
	}
	public void setBangGia(int bangGia) {
		this.bangGia = bangGia;
	}
	public TuyenXe(String maTuyen, String tenTuyen, String diemDi, String diemDen, int bangGia) {
		super();
		this.maTuyen = maTuyen;
		this.tenTuyen = tenTuyen;
		this.diemDi = diemDi;
		this.diemDen = diemDen;
		this.bangGia = bangGia;
	}
	public TuyenXe() {
	}

}
