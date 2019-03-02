package action;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.TaiXeForm;
import model.bean.TaiXe;
import model.bo.TaiXeBO;

public class TaiXeAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TaiXeForm taiXeForm = (TaiXeForm)form;
		TaiXeBO taiXeBO = new TaiXeBO();
		String action = taiXeForm.getAction();
		
		if("them".equals(action)) {
			return mapping.findForward("themTaiXe");
		}
		if("sua".equals(action)) {
			String maTaiXe = taiXeForm.getMaTaiXe();
			taiXeBO.getAllTaiXe();
			
			TaiXe taiXe = taiXeBO.findTaiXe(maTaiXe);
			taiXeForm.setTenTaiXe(taiXe.getTenTaiXe());
			taiXeForm.setNgaySinh(taiXe.getNgaySinh().toString());
			taiXeForm.setGioiTinh(taiXe.getGioiTinh());
			taiXeForm.setCmnd(taiXe.getCmnd());
			taiXeForm.setDienThoai(taiXe.getDienThoai());
			return mapping.findForward("suaTaiXe");
		}
		if("xoa".equals(action)) {
			String maTaiXe = taiXeForm.getMaTaiXe();
			taiXeBO.getAllTaiXe();
			
			TaiXe taiXe = taiXeBO.findTaiXe(maTaiXe);
			taiXeForm.setTenTaiXe(taiXe.getTenTaiXe());
			taiXeForm.setNgaySinh(taiXe.getNgaySinh().toString());
			taiXeForm.setGioiTinh(taiXe.getGioiTinh());
			taiXeForm.setCmnd(taiXe.getCmnd());
			taiXeForm.setDienThoai(taiXe.getDienThoai());
			return mapping.findForward("xoaTaiXe");
		}
		
		if(request.getParameter("them")!=null) {
			String maTaiXe = taiXeForm.getMaTaiXe();
			String tenTaiXe = taiXeForm.getTenTaiXe();
			LocalDate ngaySinh = LocalDate.parse(taiXeForm.getNgaySinh(),DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			String gioiTinh = taiXeForm.getGioiTinh();
			String cmnd = taiXeForm.getCmnd();
			String dienThoai = taiXeForm.getDienThoai();
			taiXeBO.getAllTaiXe();
			int c = taiXeBO.addTaiXe(maTaiXe, tenTaiXe, ngaySinh, gioiTinh, cmnd, dienThoai);
			if(c == 1) {
				taiXeForm.setThongBao("Thêm thành công!");
				taiXeForm.setListTaiXe(taiXeBO.getAllTaiXe());
				return mapping.findForward("themTaiXeThanhCong");
			}else {
				taiXeForm.setThongBao("Mã tài xế đã tồn tại!");
				return mapping.findForward("themTaiXeLoi");
			}
			
		}
		if(request.getParameter("sua")!=null) {
			String maTaiXe = taiXeForm.getMaTaiXe();
			String tenTaiXe = taiXeForm.getTenTaiXe();
			LocalDate ngaySinh = LocalDate.parse(taiXeForm.getNgaySinh(),DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			String gioiTinh = taiXeForm.getGioiTinh();
			String cmnd = taiXeForm.getCmnd();
			String dienThoai = taiXeForm.getDienThoai();
			taiXeBO.getAllTaiXe();
			int c = taiXeBO.updateTaiXe(maTaiXe, tenTaiXe, ngaySinh, gioiTinh, cmnd, dienThoai);
			if(c == 1) {
				taiXeForm.setThongBao("Sửa thành công!");
				taiXeForm.setListTaiXe(taiXeBO.getAllTaiXe());
				return mapping.findForward("suaTaiXeThanhCong");
			}else {
				taiXeForm.setThongBao("Dữ liệu không hợp lệ!");
				return mapping.findForward("suaTaiXeLoi");
			}
		}
		if(request.getParameter("xoa")!=null) {
			String maTaiXe = taiXeForm.getMaTaiXe();
			taiXeBO.getAllTaiXe();
			int c = taiXeBO.deleteTaiXe(maTaiXe);
			if(c == 1) {
				taiXeForm.setThongBao("Xóa thành công!");
				taiXeForm.setListTaiXe(taiXeBO.getAllTaiXe());
				return mapping.findForward("xoaTaiXeThanhCong");
			}else {
				taiXeForm.setThongBao("Xóa người dùng thất bại!");
				return mapping.findForward("xoaTaiXeLoi");
			}
		}
		
		taiXeForm.setListTaiXe(taiXeBO.getAllTaiXe());
		return mapping.findForward("danhSachTaiXe");
	}
	
	
}
