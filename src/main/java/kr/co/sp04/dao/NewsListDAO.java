package kr.co.sp04.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.sp04.cmm.BoardJoinVO;
import kr.co.sp04.service.NewsVO;

public interface NewsListDAO {

	public List<HashMap<String,String>> listNews(Map<String, String> hm);
	
	public int writeNews(Map<String, String> hm);

	public Map<String,String> viewNews(Map<String, String> hm);

	public int deleteNews(Map<String, String> hm);

	public String selectTotal(Map<String, String> hm);

	public List<HashMap<String, String>> rlistNews(Map<String, String> hm);
}
