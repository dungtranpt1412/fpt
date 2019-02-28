package common;

public class StringProcess {
	public static boolean vaildUserID(String s) {
		if(s.length()<3||s.length()>20)
			return false;
		return true;
	}
	public static boolean vaildPassword(String s) {
		if(s.length()<5||s.length()>30)
			return false;
		return true;
	}
}
