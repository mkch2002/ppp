package kr.co.sp04.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.sp04.cmm.BoardJoinVO;

public interface JoinListDAO {

	public List<HashMap<String,String>>  listJoin(Map<String, String> hm1);
	
	public int writeJoin(Map<String, String> hm2);

	public Map<String,String> viewJoin(Map<String, String> hm3);

	public int deleteJoin(Map<String, String> hm4);

	public int editJoin(Map<String, String> hm5);

	public String selectTotal(Map<String, String> hm1);
}
