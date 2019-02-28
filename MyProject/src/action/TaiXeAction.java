package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.TaiXeForm;
import model.bo.TaiXeBO;

public class TaiXeAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TaiXeForm taiXeForm= (TaiXeForm)form;
		TaiXeBO txb= new TaiXeBO();
		taiXeForm.setLstTaiXe(txb.getAllTaiXe());
		return mapping.findForward("danhSachTaiXe");
	}
	
}
