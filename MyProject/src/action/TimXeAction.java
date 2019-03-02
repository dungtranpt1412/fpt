package action;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.TimXeForm;
import model.bo.TuyenXeBO;
import model.bo.VChuyenXeBO;

public class TimXeAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TimXeForm timXeForm=(TimXeForm)form;
		TuyenXeBO txb= new TuyenXeBO();
		txb.getAllTuyenXe();
		timXeForm.setLstDiemDi(txb.getDiemDi());
		timXeForm.setLstDiemDen(txb.getDiemDen());
		if(request.getParameter("timKiem")!=null) {
			String diemDi=timXeForm.getDiemDi();
			String diemDen=timXeForm.getDiemDen();
			LocalDate ngayXuatPhat=LocalDate.parse(timXeForm.getNgayXuatPhat(), DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			VChuyenXeBO vb= new VChuyenXeBO();
			timXeForm.setLstVChuyenXe(vb.timChuyenXe(diemDi, diemDen, ngayXuatPhat));
			return mapping.findForward("danhSachTimXe");
		}
		return mapping.findForward("timXe");
	}
	
}
