package form;

import org.apache.struts.action.ActionForm;

@SuppressWarnings("serial")
public class UserDNForm extends ActionForm{
	private String userID;
	private String password;
	private String thongBao;
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getThongBao() {
		return thongBao;
	}
	public void setThongBao(String thongBao) {
		this.thongBao = thongBao;
	}
	
}
