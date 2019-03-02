package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.TuyenXeForm;
import model.bean.TuyenXe;
import model.bo.TuyenXeBO;

public class TuyenXeAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TuyenXeForm tuyenXeForm = (TuyenXeForm) form;
		String action = tuyenXeForm.getAction();
		TuyenXeBO tuyenXeBO = new TuyenXeBO();
		
		// xu li cac action o trang danhSachTuyenXe
		if("them".equals(action))
			return mapping.findForward("themTuyenXe");
		if("xoa".equals(action)) {
			String maTuyen = tuyenXeForm.getMaTuyen();
			tuyenXeBO.getAllTuyenXe();
			TuyenXe tuyenXe = tuyenXeBO.findTuyenXe(maTuyen);
			tuyenXeForm.setTenTuyen(tuyenXe.getTenTuyen());
			tuyenXeForm.setDiemDi(tuyenXe.getDiemDi());
			tuyenXeForm.setDiemDen(tuyenXe.getDiemDen());
			tuyenXeForm.setBangGia(tuyenXe.getBangGia());
			return mapping.findForward("xoaTuyenXe");
		}
		if("sua".equals(action)) {
			String maTuyen = tuyenXeForm.getMaTuyen();
			tuyenXeBO.getAllTuyenXe();
			TuyenXe tuyenXe = tuyenXeBO.findTuyenXe(maTuyen);
			tuyenXeForm.setTenTuyen(tuyenXe.getTenTuyen());
			tuyenXeForm.setDiemDi(tuyenXe.getDiemDi());
			tuyenXeForm.setDiemDen(tuyenXe.getDiemDen());
			tuyenXeForm.setBangGia(tuyenXe.getBangGia());
			return mapping.findForward("suaTuyenXe");
		}
		
		// xu li khi nhan nut them o trang themTuyenXe
		if(request.getParameter("them")!=null) {
			String maTuyen = tuyenXeForm.getMaTuyen();
			String tenTuyen = tuyenXeForm.getTenTuyen();
			String diemDi = tuyenXeForm.getDiemDi();
			String diemDen = tuyenXeForm.getDiemDen();
			int bangGia = tuyenXeForm.getBangGia();
			tuyenXeBO.getAllTuyenXe();
			int c= tuyenXeBO.addTuyenXe(maTuyen, tenTuyen, diemDi, diemDen, bangGia);
			if(c==1) {
				tuyenXeForm.setThongBao("Thêm thành công!");
				tuyenXeForm.setListTuyenXe(tuyenXeBO.getAllTuyenXe());
				return mapping.findForward("themTuyenXeThanhCong");
			}else {
				tuyenXeForm.setThongBao("Mã tuyến xe đã tồn tại!");
				return mapping.findForward("themTuyenXeLoi");
			}
			
		}
		
		// xu li khi nhan nut sua o trang suaTuyenXe
		if(request.getParameter("sua")!=null) {
			String maTuyen = tuyenXeForm.getMaTuyen();
			String tenTuyen = tuyenXeForm.getTenTuyen();
			String diemDi = tuyenXeForm.getDiemDi();
			String diemDen = tuyenXeForm.getDiemDen();
			int bangGia = tuyenXeForm.getBangGia();
			tuyenXeBO.getAllTuyenXe();
			int c = tuyenXeBO.updateTuyenXe(maTuyen, tenTuyen, diemDi, diemDen, bangGia);
			if(c == 1) {
				tuyenXeForm.setThongBao("Sửa thành công!");
				tuyenXeForm.setListTuyenXe(tuyenXeBO.getAllTuyenXe());
				return mapping.findForward("suaTuyenXeThanhCong");
			}else {
				tuyenXeForm.setThongBao("Dữ liệu không hợp lệ!");
				return mapping.findForward("suaTuyenXeLoi");
			}
		}
		
		// xu li khi nhan nut xoa o trang xoaTuyenXe
		if(request.getParameter("xoa")!=null) {
			String maTuyen = tuyenXeForm.getMaTuyen();
			System.out.println(maTuyen);
			tuyenXeBO.getAllTuyenXe();
			int c = tuyenXeBO.deleteTuyenXe(maTuyen);
			if(c ==1 ) {
				tuyenXeForm.setThongBao("Xóa thành công!");
				tuyenXeForm.setListTuyenXe(tuyenXeBO.getAllTuyenXe());
				return mapping.findForward("xoaTuyenXeThanhCong");
			}else {
				tuyenXeForm.setThongBao("Xóa tuyến xe thất bại!");
				return mapping.findForward("xoaTuyenXeLoi");
			}
		}
		
		tuyenXeForm.setListTuyenXe(tuyenXeBO.getAllTuyenXe());
		return mapping.findForward("danhSachTuyenXe");
	}
}
