package kr.co.sp04.service.impl;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import kr.co.sp04.dao.NewsListDAO;
import kr.co.sp04.dao.impl.NewsListDAOImpl;
import kr.co.sp04.service.NewsService;

@Service
public class NewsServiceImpl implements NewsService {
	@Autowired
	NewsListDAO newsListDAO;
	private static final Logger logger = LoggerFactory.getLogger(NewsServiceImpl.class);

	@Override
	public List<HashMap<String,String>>  listNews(Map<String, String> hm)
	{
		String rtn = "";
		
		List<HashMap<String,String>> aList=  newsListDAO.listNews(hm);
		System.out.println(rtn);
		
	    return aList;
	}
	public int  writeNews(Map<String, String> hm)
	{
		
		int i=  newsListDAO.writeNews(hm);
		System.out.println(i);
		
	    return i;
	}
	
	public Map<String,String>  viewNews(Map<String, String> hm)
	{
		
		Map<String,String> map =  newsListDAO.viewNews(hm);
		System.out.println(map);
		
	    return map;
	}
	public int  deleteNews(Map<String, String> hm)
	{
		
		int i=  newsListDAO.deleteNews(hm);
		System.out.println(i);
		
	    return i;
	}
	
	@Override
	public String selectTotal(Map<String, String> hm) {
		// TODO Auto-generated method stub
		return  newsListDAO.selectTotal(hm);
	}
	@Override
	public List<HashMap<String, String>> rlistNews(Map<String, String> hm) {
		
		String rtn = "";
		
		List<HashMap<String,String>> aList=  newsListDAO.rlistNews(hm);
		System.out.println(rtn);
		
	    return aList;
	}
  }
