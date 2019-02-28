package form;

import java.util.List;

import org.apache.struts.action.ActionForm;

import model.bean.TaiXe;

@SuppressWarnings("serial")
public class TaiXeForm extends ActionForm{
	private String maTaiXe;
	private List<TaiXe> lstTaiXe;
	public String getMaTaiXe() {
		return maTaiXe;
	}
	public void setMaTaiXe(String maTaiXe) {
		this.maTaiXe = maTaiXe;
	}
	public List<TaiXe> getLstTaiXe() {
		return lstTaiXe;
	}
	public void setLstTaiXe(List<TaiXe> lstTaiXe) {
		this.lstTaiXe = lstTaiXe;
	}
	
}
