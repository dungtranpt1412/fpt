/*
HCD-Fresher180
Feb 27, 2019
*/
package form;

import java.util.List;

import org.apache.struts.action.ActionForm;

import model.bean.Xe;

@SuppressWarnings("serial")
public class XeForm extends ActionForm {
	private String MaXe;

	public String getMaXe() {
		return MaXe;
	}

	public void setMaXe(String maXe) {
		MaXe = maXe;
	}

	public List<Xe> getListXe() {
		return listXe;
	}

	public void setListXe(List<Xe> listXe) {
		this.listXe = listXe;
	}

	private List<Xe> listXe;

}
