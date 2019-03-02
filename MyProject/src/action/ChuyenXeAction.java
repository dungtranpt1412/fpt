package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.ChuyenXeForm;
import model.bean.TaiXe;
import model.bo.ChuyenXeBO;

public class ChuyenXeAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ChuyenXeForm chuyenXeForm =(ChuyenXeForm)form;
		String action = chuyenXeForm.getAction();
		ChuyenXeBO chuyenXeBO = new ChuyenXeBO();
		
		// xu li cac action
		if("them".equals(action)) {
			return mapping.findForward("themChuyenXe");
		}
		/*if("sua".equals(action)) {
			String maChuyenXe = chuyenXeForm.getMaChuyenXe();
			chuyenXeBO.getAllChuyenXe();
			
			TaiXe taiXe = cuyenXeBO.findTaiXe(maTaiXe);
			chuyenXeForm.setTenTaiXe(taiXe.getTenTaiXe());
			chuyenXeForm.setNgaySinh(taiXe.getNgaySinh().toString());
			chuyenXeForm.setGioiTinh(taiXe.getGioiTinh());
			chuyenXeForm.setCmnd(taiXe.getCmnd());
			chuyenXeForm.setDienThoai(taiXe.getDienThoai());
			return mapping.findForward("suaTaiXe");
		}
		if("xoa".equals(action)) {
			String maTaiXe = chuyenXeForm.getMaTaiXe();
			cuyenXeBO.getAllTaiXe();
			
			TaiXe taiXe = cuyenXeBO.findTaiXe(maTaiXe);
			chuyenXeForm.setTenTaiXe(taiXe.getTenTaiXe());
			chuyenXeForm.setNgaySinh(taiXe.getNgaySinh().toString());
			chuyenXeForm.setGioiTinh(taiXe.getGioiTinh());
			chuyenXeForm.setCmnd(taiXe.getCmnd());
			chuyenXeForm.setDienThoai(taiXe.getDienThoai());
			return mapping.findForward("xoaTaiXe");
		}*/
		
		chuyenXeForm.setListChuyenXe(chuyenXeBO.getAllChuyenXe());
		return mapping.findForward("danhSachChuyenXe");
	}
	
}
