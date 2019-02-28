package model.bo;

import java.util.List;

import model.bean.Image;
import model.dao.ImageDAO;

public class ImageBO {
	public static List<Image> lstImage;
	ImageDAO id= new ImageDAO();
	public List<Image> getAllImage(){
		return lstImage=id.getAllImage();
	}
	public int addImage(String maXe, String image, String idImage) {
		if(findImage(idImage)==null)
			return id.addImage(maXe, image, idImage);
		return 0;
	}
	public int updateImage(String maXe, String image, String idImage) {
		if(findImage(idImage)!=null)
			return id.updateImage(maXe, image, idImage);
		return 0;
	}
	public int deleteImage(String maXe, String image, String idImage) {
		if(findImage(idImage)!=null)
			return id.deleteImage(maXe, image, idImage);
		return 0;
	}
	public Image findImage(String idImage) {
		for (Image i : lstImage) {
			if(i.getIDImage().equals(idImage))
				return i;
		}
		return null;
	}

}
