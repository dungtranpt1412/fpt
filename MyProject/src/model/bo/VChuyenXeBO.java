package model.bo;

import java.time.LocalDate;
import java.util.List;

import model.bean.VChuyenXe;
import model.dao.VChuyenXeDAO;

public class VChuyenXeBO {
	VChuyenXeDAO vd= new VChuyenXeDAO();
	public List<VChuyenXe> timChuyenXe(String diemDi, String diemDen, LocalDate ngayXuatPhat){
		return vd.timChuyenXe(diemDi, diemDen, ngayXuatPhat);
	}
}
