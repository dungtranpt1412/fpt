package model.bean;

public class Image {
	private String maXe;
	private String image;
	private String IDImage;
	public String getMaXe() {
		return maXe;
	}
	public void setMaXe(String maXe) {
		this.maXe = maXe;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getIDImage() {
		return IDImage;
	}
	public void setIDImage(String iDImage) {
		IDImage = iDImage;
	}
	public Image(String maXe, String image, String iDImage) {
		super();
		this.maXe = maXe;
		this.image = image;
		IDImage = iDImage;
	}
	public Image() {
		// TODO Auto-generated constructor stub
	}
}
