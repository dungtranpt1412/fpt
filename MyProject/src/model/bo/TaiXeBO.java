package model.bo;

import java.time.LocalDate;
import java.util.List;

import model.bean.TaiXe;
import model.dao.TaiXeDAO;

public class TaiXeBO {
	public static List<TaiXe> lstTaiXe;
	TaiXeDAO txd= new TaiXeDAO();
	public List<TaiXe> getAllTaiXe(){
		return lstTaiXe=txd.getAllTaiXe();
	}
	public int addTaiXe(String maTaiXe, String tenTaiXe, LocalDate ngaySinh, String gioiTinh, String cmnd, String dienThoai) {
		if(findTaiXe(maTaiXe)==null)
			return txd.addTaiXe(maTaiXe, tenTaiXe, ngaySinh, gioiTinh, cmnd, dienThoai);
		return 0;
	}
	public int updateTaiXe(String maTaiXe, String tenTaiXe, LocalDate ngaySinh, String gioiTinh, String cmnd, String dienThoai) {
		if(findTaiXe(maTaiXe)!=null)
			return txd.updateTaiXe(maTaiXe, tenTaiXe, ngaySinh, gioiTinh, cmnd, dienThoai);
		return 0;
	}
	public int deleteTaiXe(String maTaiXe) {
		if(findTaiXe(maTaiXe)!=null)
			return txd.deleteTaiXe(maTaiXe);
		return 0;
	}
	public TaiXe findTaiXe(String maTaiXe) {
		for (TaiXe tx : lstTaiXe) {
			if(tx.getMaTaiXe().equals(maTaiXe))
				return tx;
		}
		return null;
	}
	

}
