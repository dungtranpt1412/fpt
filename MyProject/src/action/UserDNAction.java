package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.UserDNForm;
import model.bo.UserBO;

public class UserDNAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		UserDNForm userDNForm= (UserDNForm)form;
		String userID=userDNForm.getUserID();
		String password=userDNForm.getPassword();
		UserBO ub= new UserBO();
		if(ub.checkLogin(userID, password))
			return mapping.findForward("thanhCong");
		userDNForm.setThongBao("Đăng nhập thất bại !");
		return mapping.findForward("thatBai");
	}
	
}
