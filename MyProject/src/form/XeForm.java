/*
HCD-Fresher180
Feb 27, 2019
*/
package form;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import model.bean.Xe;

@SuppressWarnings("serial")
public class XeForm extends ActionForm {
	private String maXe;
	private String tenXe;
	private String bienSo;
	private int soGhe;
	private String tenNhaXe;
	private List<Xe> listXe;
	private String action;
	private String thongBao;
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
	public String getTenNhaXe() {
		return tenNhaXe;
	}
	public void setTenNhaXe(String tenNhaXe) {
		this.tenNhaXe = tenNhaXe;
	}
	public List<Xe> getListXe() {
		return listXe;
	}
	public void setListXe(List<Xe> listXe) {
		this.listXe = listXe;
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
	
	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}

}
