package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.TuyenXeForm;
import model.bo.TuyenXeBO;

public class TuyenXeAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TuyenXeForm tuyenXeForm = (TuyenXeForm) form;
		TuyenXeBO tuyenXeBO = new TuyenXeBO();
		tuyenXeForm.setListTuyenXe(tuyenXeBO.getAllTuyenXe());
		return mapping.findForward("danhSachTuyenXe");
	}
}
