package model.bo;

import java.util.Date;
import java.util.List;

import model.bean.VeXe;
import model.dao.VeXeDAO;

public class VeXeBO {
	public static List<VeXe> lstVeXe;
	VeXeDAO vxd= new VeXeDAO();
	public List<VeXe> getAllVeXe(){
		return vxd.getAllVeXe();
	}
	public int addVeXe(String tenVe, String userID, String maChuXe, String viTri, Date ngayDat) {
			return vxd.addVeXe(tenVe, userID, maChuXe, viTri, ngayDat);
	}
	public int updateVeXe(int maVe, String tenVe, String userID, String maChuXe, String viTri, Date ngayDat) {
		if(findVeXe(maVe)!=null)
			return vxd.updateVeXe(maVe, tenVe, userID, maChuXe, viTri, ngayDat);
		return 0;
	}
	public int deleteVeXe(int maVe) {
		if(findVeXe(maVe)!=null)
			return vxd.deleteVeXe(maVe);
		return 0;
	}
	public VeXe findVeXe(int maVe) {
		for (VeXe veXe : lstVeXe) {
			if(veXe.getMaVe()==maVe)
				return veXe;
		}
		return null;
	}
	

}
