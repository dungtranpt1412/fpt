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
import model.bean.Xe;
import model.bo.XeBO;

public class XeAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		XeForm xeForm = (XeForm) form;
		String action = xeForm.getAction();
		XeBO xeBO = new XeBO();
		
		// xu li cac action o trang danhSachTuyenXe
		if ("them".equals(action))
			return mapping.findForward("themXe");
		if ("sua".equals(action)) {
			String maXe = xeForm.getMaXe();
			xeBO.getAllXe();
			Xe xe = xeBO.findXe(maXe);
			xeForm.setTenXe(xe.getTenXe());
			xeForm.setBienSo(xe.getBienSo());;
			xeForm.setSoGhe(xe.getSoGhe());
			xeForm.setTenNhaXe(xe.getTenNhaXe());
			return mapping.findForward("suaXe");
		}
		if ("xoa".equals(action)) {
			String maXe = xeForm.getMaXe();
			xeBO.getAllXe();
			Xe xe = xeBO.findXe(maXe);
			xeForm.setTenXe(xe.getTenXe());
			xeForm.setBienSo(xe.getBienSo());;
			xeForm.setSoGhe(xe.getSoGhe());
			xeForm.setTenNhaXe(xe.getTenNhaXe());
			return mapping.findForward("xoaXe");
		}
		
		// xu li khi nhan nut them o trang themXe
		if (request.getParameter("them") != null) {
			String maXe = xeForm.getMaXe();
			String tenXe = xeForm.getTenXe();
			String bienSo = xeForm.getBienSo();
			int soGhe = xeForm.getSoGhe();
			String tenNhaXe = xeForm.getTenNhaXe();
			xeBO.getAllXe();
			int c = xeBO.addXe(maXe, tenXe, bienSo, soGhe, tenNhaXe);
			if (c == 1) {
				xeForm.setThongBao("Thêm thành công!");
				xeForm.setListXe(xeBO.getAllXe());
				return mapping.findForward("themXeThanhCong");
			} else {
				xeForm.setThongBao("Mã xe đã tồn tại!");
				return mapping.findForward("themXeLoi");
			}

		}

		// xu li khi nhan nut sua o trang suaXe
		if (request.getParameter("sua") != null) {
			String maXe = xeForm.getMaXe();
			String tenXe = xeForm.getTenXe();
			String bienSo = xeForm.getBienSo();
			int soGhe = xeForm.getSoGhe();
			String tenNhaXe = xeForm.getTenNhaXe();
			xeBO.getAllXe();
			int c = xeBO.updateXe(maXe, tenXe, bienSo, soGhe, tenNhaXe);
			if (c == 1) {
				xeForm.setThongBao("Sửa thành công!");
				xeForm.setListXe(xeBO.getAllXe());
				return mapping.findForward("suaXeThanhCong");
			} else {
				xeForm.setThongBao("Dữ liệu không hợp lệ!");
				return mapping.findForward("suaXeLoi");
			}
		}

		// xu li khi nhan nut xoa o trang xoaXe
		if (request.getParameter("xoa") != null) {
			String maXe = xeForm.getMaXe();

			xeBO.getAllXe();
			int c = xeBO.deleteXe(maXe);
			if (c == 1) {
				xeForm.setThongBao("Xóa thành công!");
				xeForm.setListXe(xeBO.getAllXe());
				return mapping.findForward("xoaXeThanhCong");
			} else {
				xeForm.setThongBao("Xóa người dùng thất bại!");
				return mapping.findForward("xoaXeLoi");
			}
		}
				
		xeForm.setListXe(xeBO.getAllXe());
		return mapping.findForward("danhSachXe");
	}

}
