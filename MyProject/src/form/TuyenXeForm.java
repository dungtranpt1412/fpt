package form;

import java.util.List;

import org.apache.struts.action.ActionForm;

import model.bean.TuyenXe;

@SuppressWarnings("serial")
public class TuyenXeForm extends ActionForm {
	private String maTuyen;
	private List<TuyenXe> listTuyenXe;

	public String getMaTuyen() {
		return maTuyen;
	}

	public void setMaTuyen(String maTuyen) {
		this.maTuyen = maTuyen;
	}

	public List<TuyenXe> getListTuyenXe() {
		return listTuyenXe;
	}

	public void setListTuyenXe(List<TuyenXe> listTuyenXe) {
		this.listTuyenXe = listTuyenXe;
	}

}
