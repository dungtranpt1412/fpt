package form;

import java.util.List;
import java.util.Set;

import org.apache.struts.action.ActionForm;

import model.bean.VChuyenXe;

@SuppressWarnings("serial")
public class TimXeForm extends ActionForm{
	private Set<String> lstDiemDi;
	private Set<String> lstDiemDen;
	private String diemDi;
	private String diemDen;
	private String ngayXuatPhat;
	private List<VChuyenXe> lstVChuyenXe;
	public Set<String> getLstDiemDi() {
		return lstDiemDi;
	}
	public void setLstDiemDi(Set<String> lstDiemDi) {
		this.lstDiemDi = lstDiemDi;
	}
	public Set<String> getLstDiemDen() {
		return lstDiemDen;
	}
	public void setLstDiemDen(Set<String> lstDiemDen) {
		this.lstDiemDen = lstDiemDen;
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
	public String getNgayXuatPhat() {
		return ngayXuatPhat;
	}
	public void setNgayXuatPhat(String ngayXuatPhat) {
		this.ngayXuatPhat = ngayXuatPhat;
	}
	public List<VChuyenXe> getLstVChuyenXe() {
		return lstVChuyenXe;
	}
	public void setLstVChuyenXe(List<VChuyenXe> lstVChuyenXe) {
		this.lstVChuyenXe = lstVChuyenXe;
	}
	
	
	
	
}
