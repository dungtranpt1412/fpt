/*
HCD-Fresher180
Feb 27, 2019
*/
package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.XeForm;
import model.bo.XeBO;

public class XeAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		XeForm xeForm = (XeForm) form;
		XeBO ub = new XeBO();
		xeForm.setListXe(ub.getAllXe());
		return mapping.findForward("danhSachXe");
	}

}
