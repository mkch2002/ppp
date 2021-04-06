package kr.co.sp04.tryservice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface TryService {

	public 	List<HashMap<String, String>> listTry(Map<String, String> hm1);

	public String selectTotal(Map<String, String> hm1);

	public Map<String, String> viewTry(Map<String, String> hm3);

	public int deleteTry(Map<String, String> hm4);

	public int writeTry(Map<String, String> hm);

	public int editTry(Map<String, String> hm5);

}