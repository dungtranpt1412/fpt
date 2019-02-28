package model.bo;

import java.time.LocalTime;
import java.util.List;

import model.bean.ChuyenXe;
import model.dao.ChuyenXeDAO;

public class ChuyenXeBO {
	public static List<ChuyenXe> lstChuyenXe;
	ChuyenXeDAO cxd= new ChuyenXeDAO();
	public List<ChuyenXe> getAllChuyenXe(){
		return lstChuyenXe=cxd.getAllChuyenXe();
	}
	public int addChuyenXe(String maChuyenXe, String maTuyen, LocalTime gioDi, LocalTime gioDen, String userID, 
			int choTrong, String maTaiXe) {
		if(findChuyenXe(maChuyenXe)==null)
			return cxd.addChuyenXe(maChuyenXe, maTuyen, gioDi, gioDen, userID, choTrong, maTaiXe);
		return 0;
	}
	public int updateChuyenXe(String maChuyenXe, String maTuyen, LocalTime gioDi, LocalTime gioDen, String userID, 
			int choTrong, String maTaiXe) {
		if(findChuyenXe(maChuyenXe)!=null)
			return cxd.updateChuyenXe(maChuyenXe, maTuyen, gioDi, gioDen, userID, choTrong, maTaiXe);
		return 0;
		
	}
	public int deleteChuyenXe(String maChuyenXe) {
		if(findChuyenXe(maChuyenXe)!=null)
			return cxd.deleteChuyenXe(maChuyenXe);
		return 0;
	}
	public ChuyenXe findChuyenXe(String maChuyenXe) {
		for (ChuyenXe cx : lstChuyenXe) {
			if(cx.getMaChuyenXe().equals(maChuyenXe))
				return cx;
		}
		return null;
	}
}
