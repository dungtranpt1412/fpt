package model.bo;

import java.time.LocalDate;
import java.util.List;

import model.bean.User;
import model.dao.UserDAO;

public class UserBO {
	public static List<User> lstUser;
	UserDAO ud= new UserDAO();
	public List<User> getAllUser() {
		return lstUser=ud.getAllUser();
	}
	public boolean checkLogin(String userID, String password) {
		return ud.checkLogin(userID, password);
	}
	public int addUser(String userID, String password, String hoTen, LocalDate ngaySinh, String gioiTinh, String cmnd, String dienThoai, String email,
			int maQuyen) {
		if(findUser(userID)==null)
			return ud.addUser(userID, password, hoTen, ngaySinh, gioiTinh, cmnd, dienThoai, email, maQuyen);
		return 0;
	}
	public int updateUser(String userID, String password, String hoTen, LocalDate ngaySinh, String gioiTinh, String cmnd, String dienThoai, String email,
			int maQuyen) {
		if(findUser(userID)!=null)
			return ud.updateUser(userID, password, hoTen, ngaySinh, gioiTinh, cmnd, dienThoai, email, maQuyen);
		return 0;
	}
	public int deleteUser(String userID) {
		if(findUser(userID)!=null)
			return ud.deleteUser(userID);
		return 0;
	}
	public User findUser(String userID) {
		for (User u : lstUser) {
			if(u.getUserID().equals(userID))
				return u;
		}
		return null;
	}
	public static void main(String[] args) {
		UserBO ub= new UserBO();
		ub.getAllUser();
		System.out.println(ub.addUser("xxx", "xxx", "xxx", LocalDate.now(), "xxx", "xxx", "xxx", "xxx", 1));
	}
	
}
