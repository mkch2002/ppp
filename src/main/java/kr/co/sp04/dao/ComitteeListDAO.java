package kr.co.sp04.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface ComitteeListDAO {

	public List<HashMap<String,String>>  listComittee(Map<String, String> hm1);

	public int writeComittee(Map<String, String> hm2);

	public Map<String,String>  viewComittee(Map<String, String> hm3);

	public int  deleteComittee(Map<String, String> hm4);

	public int  editComittee(Map<String, String> hm5);

	public String selectTotal(Map<String, String> hm1);
}
