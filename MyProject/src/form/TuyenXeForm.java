package form;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import model.bean.TuyenXe;


public class TuyenXeForm extends ActionForm {
	private static final long serialVersionUID = -2744356639745585438L;
	
	private String maTuyen;
	private String tenTuyen;
	private String diemDi;
	private String diemDen;
	private int bangGia;
	private List<TuyenXe> listTuyenXe;
	private String action;
	private String thongBao;
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
	public List<TuyenXe> getListTuyenXe() {
		return listTuyenXe;
	}
	public void setListTuyenXe(List<TuyenXe> listTuyenXe) {
		this.listTuyenXe = listTuyenXe;
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
