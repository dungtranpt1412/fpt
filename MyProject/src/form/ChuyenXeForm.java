package form;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import model.bean.ChuyenXe;

@SuppressWarnings("serial")
public class ChuyenXeForm extends ActionForm{
	private String maChuyenXe;
	private String maTuyen;
	private String gioDi;
	private String gioDen;
	private String userID;
	private int choTrong;
	private String maTaiXe;
	private String maXe;
	private String ngayXuatPhat;
	private List<ChuyenXe> listChuyenXe;
	private String action;
	private String thongBao;
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
	public String getGioDi() {
		return gioDi;
	}
	public void setGioDi(String gioDi) {
		this.gioDi = gioDi;
	}
	public String getGioDen() {
		return gioDen;
	}
	public void setGioDen(String gioDen) {
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
	public String getMaXe() {
		return maXe;
	}
	public void setMaXe(String maXe) {
		this.maXe = maXe;
	}
	public String getNgayXuatPhat() {
		return ngayXuatPhat;
	}
	public void setNgayXuatPhat(String ngayXuatPhat) {
		this.ngayXuatPhat = ngayXuatPhat;
	}
	public List<ChuyenXe> getListChuyenXe() {
		return listChuyenXe;
	}
	public void setListChuyenXe(List<ChuyenXe> listChuyenXe) {
		this.listChuyenXe = listChuyenXe;
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
