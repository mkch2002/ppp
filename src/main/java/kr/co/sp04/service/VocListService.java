package kr.co.sp04.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.sp04.cmm.BoardJoinVO;

public interface VocListService {
	
	public List<HashMap<String, String>> listVoc(Map<String, String> hm1);

	public int writeVoc(Map<String, String> hm2);

	public Map<String,String> viewVoc(Map<String, String> hm3);

	public int deleteVoc(Map<String, String> hm4);

	public int editVoc(Map<String, String> hm5);

	public String selectTotal(Map<String, String> hm1);
}
