package kr.co.sp04.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface LawListDAO {

	public List<HashMap<String,String>>  listLaw(Map<String, String> hm1);

	public int  writeLaw(Map<String, String> hm2);

	public Map<String,String>  viewLaw(Map<String, String> hm3);

	public int  deleteLaw(Map<String, String> hm4);

	public int editLaw(Map<String, String> hm5);

	public String selectTotal(Map<String, String> hm1);
}
