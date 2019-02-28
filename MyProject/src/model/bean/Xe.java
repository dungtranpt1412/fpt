package model.bean;

public class Xe {
	private String maXe;
	private String tenXe;
	private String bienSo;
	private int soGhe;
	public String getMaXe() {
		return maXe;
	}
	public void setMaXe(String maXe) {
		this.maXe = maXe;
	}
	public String getTenXe() {
		return tenXe;
	}
	public void setTenXe(String tenXe) {
		this.tenXe = tenXe;
	}
	public String getBienSo() {
		return bienSo;
	}
	public void setBienSo(String bienSo) {
		this.bienSo = bienSo;
	}
	public int getSoGhe() {
		return soGhe;
	}
	public void setSoGhe(int soGhe) {
		this.soGhe = soGhe;
	}
	public Xe(String maXe, String tenXe, String bienSo, int soGhe) {
		super();
		this.maXe = maXe;
		this.tenXe = tenXe;
		this.bienSo = bienSo;
		this.soGhe = soGhe;
	}
	public Xe() {
		
	}
}
