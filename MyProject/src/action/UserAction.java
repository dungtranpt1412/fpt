package action;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.UserForm;
import model.bean.User;
import model.bo.UserBO;

public class UserAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		UserForm userForm=(UserForm)form;
		String action=userForm.getAction();
		UserBO ub=new UserBO();
		if("them".equals(action))
			return mapping.findForward("themNguoiDung");
		if("xoa".equals(action)) {
			String userID=userForm.getUserID();
			ub.getAllUser();
			User us=ub.findUser(userID);
			userForm.setPassword(us.getPassword());
			userForm.setHoTen(us.getHoTen());
			userForm.setNgaySinh(us.getNgaySinh().toString());
			userForm.setGioiTinh(us.getGioiTinh());
			userForm.setCmnd(us.getCmnd());
			userForm.setDienThoai(us.getDienThoai());
			userForm.setEmail(us.getEmail());
			userForm.setMaQuyen((Integer.toString(us.getMaQuyen())));
			return mapping.findForward("xoaNguoiDung");
		}
		if("sua".equals(action)) {
			String userID=userForm.getUserID();
			ub.getAllUser();
			User us=ub.findUser(userID);
			userForm.setPassword(us.getPassword());
			userForm.setHoTen(us.getHoTen());
			userForm.setNgaySinh(us.getNgaySinh().toString());
			userForm.setGioiTinh(us.getGioiTinh());
			userForm.setCmnd(us.getCmnd());
			userForm.setDienThoai(us.getDienThoai());
			userForm.setEmail(us.getEmail());
			userForm.setMaQuyen((Integer.toString(us.getMaQuyen())));
			return mapping.findForward("suaNguoiDung");
		}	
		if(request.getParameter("them")!=null) {
			String userID=userForm.getUserID();
			String password=userForm.getPassword();
			String hoTen=userForm.getHoTen();
			LocalDate ngaySinh= LocalDate.parse(userForm.getNgaySinh(),DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			String gioiTinh=userForm.getGioiTinh();
			String cmnd=userForm.getCmnd();
			String dienThoai=userForm.getDienThoai();
			String email=userForm.getEmail();
			int maQuyen=Integer.parseInt(userForm.getMaQuyen());
			ub.getAllUser();
			int c= ub.addUser(userID, password, hoTen, ngaySinh, gioiTinh, cmnd, dienThoai, email, maQuyen);
			if(c==1) {
				userForm.setThongBao("Thêm thành công!");
				userForm.setLstUser(ub.getAllUser());
				return mapping.findForward("themNguoiDungThanhCong");
			}else {
				userForm.setThongBao("UserID đã tồn tại!");
				return mapping.findForward("themNguoiDungLoi");
			}
			
		}
		if(request.getParameter("sua")!=null) {
			String userID=userForm.getUserID();
			String password=userForm.getPassword();
			String hoTen=userForm.getHoTen();
			LocalDate ngaySinh= LocalDate.parse(userForm.getNgaySinh(),DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			String gioiTinh=userForm.getGioiTinh();
			String cmnd=userForm.getCmnd();
			String dienThoai=userForm.getDienThoai();
			String email=userForm.getEmail();
			int maQuyen=Integer.parseInt(userForm.getMaQuyen());
			ub.getAllUser();
			int c= ub.updateUser(userID, password, hoTen, ngaySinh, gioiTinh, cmnd, dienThoai, email, maQuyen);
			if(c==1) {
				userForm.setThongBao("Sửa thành công!");
				userForm.setLstUser(ub.getAllUser());
				return mapping.findForward("suaNguoiDungThanhCong");
			}else {
				userForm.setThongBao("Dữ liệu không hợp lệ!");
				return mapping.findForward("suaNguoiDungLoi");
			}
		}
		if(request.getParameter("xoa")!=null) {
			String userID=userForm.getUserID();
			System.out.println(userID);
			ub.getAllUser();
			int c= ub.deleteUser(userID);
			if(c==1) {
				userForm.setThongBao("Xóa thành công!");
				userForm.setLstUser(ub.getAllUser());
				return mapping.findForward("xoaNguoiDungThanhCong");
			}else {
				userForm.setThongBao("Xóa người dùng thất bại!");
				return mapping.findForward("suaNguoiDungLoi");
			}
		}
		userForm.setLstUser(ub.getAllUser());
		return mapping.findForward("danhSachNguoiDung");
	}
	
}
