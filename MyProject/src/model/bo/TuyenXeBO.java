package model.bo;

import java.util.List;

import model.bean.TuyenXe;
import model.dao.TuyenXeDAO;

public class TuyenXeBO {
	public static List<TuyenXe> lstTuyenXe;
	TuyenXeDAO txd= new TuyenXeDAO();
	public List<TuyenXe> getAllTuyenXe(){
		return lstTuyenXe=txd.getAllTuyenXe();
	}
	public int addTuyenXe(String maTuyen, String tenTuyen, String diemDi, String diemDen, int bangGia) {
		if(findTuyenXe(maTuyen)==null)
			return txd.addTuyenXe(maTuyen, tenTuyen, diemDi, diemDen, bangGia);
		return 0;
	}
	public int updateTuyenXe(String maTuyen, String tenTuyen, String diemDi, String diemDen, int bangGia) {
		if(findTuyenXe(maTuyen)!=null)
			return txd.updateTuyenXe(maTuyen, tenTuyen, diemDi, diemDen, bangGia);
		return 0;
	}
	public int deleteTuyenXe(String maTuyen) {
		if(findTuyenXe(maTuyen)!=null)
			return txd.deleteTuyenXe(maTuyen);
		return 0;
	}
	public TuyenXe findTuyenXe(String maTuyen) {
		for (TuyenXe tx : lstTuyenXe) {
			if(tx.getMaTuyen().equals(maTuyen))
				return tx;
		}
		return null;
	}
	

}
