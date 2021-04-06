package kr.co.sp04.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.sp04.cmm.BoardJoinVO;

public interface HistoryListService {

	public List<HashMap<String, String>> listHistory(Map<String, String> hm1);

	public int writeHistory(Map<String, String> hm2);

	public Map<String,String> viewHistory(Map<String, String> hm3);

	public int deleteHistory(Map<String, String> hm4);

	public int editHistory(Map<String, String> hm5);

	public String selectTotal(Map<String, String> hm1);
}
