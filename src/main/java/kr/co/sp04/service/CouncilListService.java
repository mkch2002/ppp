package kr.co.sp04.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.sp04.cmm.BoardJoinVO;

public interface CouncilListService {
	
	public 	List<HashMap<String, String>> listCouncil(Map<String, String> hm1);

	public int  writeCouncil(Map<String, String> hm2);

	public Map<String,String>  viewCouncil(Map<String, String> hm3);

	public int  deleteCouncil(Map<String, String> hm4);

	public int  editCouncil(Map<String, String> hm5);
	
	public String selectTotal(Map<String, String> hm1);

}
