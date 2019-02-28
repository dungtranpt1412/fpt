package form;

import java.util.List;

import org.apache.struts.action.ActionForm;

import model.bean.ChuyenXe;

@SuppressWarnings("serial")
public class ChuyenXeForm extends ActionForm{
	private String maChuyenXe;
	private List<ChuyenXe> lstChuyenXe;
	public String getMaChuyenXe() {
		return maChuyenXe;
	}
	public void setMaChuyenXe(String maChuyenXe) {
		this.maChuyenXe = maChuyenXe;
	}
	public List<ChuyenXe> getLstChuyenXe() {
		return lstChuyenXe;
	}
	public void setLstChuyenXe(List<ChuyenXe> lstChuyenXe) {
		this.lstChuyenXe = lstChuyenXe;
	}
	
}
