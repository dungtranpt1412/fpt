package model.bo;

import java.util.List;

import model.bean.Xe;
import model.dao.XeDAO;

public class XeBO {
	public static List<Xe> lstXe;
	XeDAO xd= new XeDAO();
	public List<Xe> getAllXe(){
		return lstXe=xd.getAllXe();
	}
	public int addXe(String maXe, String tenXe, String bienSo, int soGhe, String tenNhaXe) {
		if(findXe(maXe)==null)
			return xd.addXe(maXe, tenXe, bienSo, soGhe, tenNhaXe);
		return 0;
	}
	public int updateXe(String maXe, String tenXe, String bienSo, int soGhe, String tenNhaXe) {
		if(findXe(maXe)!=null)
			return xd.updateXe(maXe, tenXe, bienSo, soGhe, tenNhaXe);
		return 0;
	}
	public int deleteXe(String maXe) {
		if(findXe(maXe)!=null)
			return xd.deleteXe(maXe);
		return 0;
	}
	public Xe findXe(String maXe) {
		for (Xe xe : lstXe) {
			if(xe.getMaXe().equals(maXe))
				return xe;
		}
		return null;
	}
	
		
}
