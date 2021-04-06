package kr.co.sp04.service;

import java.util.List;

import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.sp04.cmm.BoardJoinVO;

import java.util.HashMap;

@Service

public interface NewsService {

	public List<HashMap<String, String>> listNews(Map<String, String> hm);

	public int writeNews(Map<String, String> hm);

	public Map<String,String> viewNews(Map<String, String> hm);

	public int deleteNews(Map<String, String> hm);

	public String selectTotal(Map<String, String> hm);

	public List<HashMap<String, String>> rlistNews(Map<String, String> hm);	
}
