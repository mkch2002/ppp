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

import kr.co.sp04.dao.NewsCommentDAO;
import kr.co.sp04.dao.NewsListDAO;
import kr.co.sp04.dao.impl.NewsListDAOImpl;
import kr.co.sp04.service.NewsCommentService;
import kr.co.sp04.service.NewsService;

@Service
public class NewsCommentServiceImpl implements NewsCommentService {
	@Autowired
	NewsCommentDAO newsCommentDAO;
	private static final Logger logger = LoggerFactory.getLogger(NewsCommentServiceImpl.class);

	@Override
	public List<HashMap<String,String>>  listComment(Map<String, String> hm)
	{
		String rtn = "";
		
		List<HashMap<String,String>> aList=  newsCommentDAO.listComment(hm);
		System.out.println(rtn);
		
	    return aList;
	}

	@Override
	public int writeComment(Map<String, String> hm) {
		
		int i=  newsCommentDAO.writeComment(hm);
		System.out.println(i);
		
	    return i;
	}

	@Override
	public int deleteComment(Map<String, String> hm) {
		
		int i=  newsCommentDAO.deleteComment(hm);
		System.out.println(i);
		
	    return i;
	}

	@Override
	public int badComment(Map<String, String> hm) {
		int i=  newsCommentDAO.badComment(hm);
		System.out.println(i);
		
	    return i;
	}

	@Override
	public int goodComment(Map<String, String> hm) {
		int i=  newsCommentDAO.goodComment(hm);
		System.out.println(i);
		
	    return i;
	}

	@Override
	public int rsaveComment(Map<String, String> hm) {
		int i=  newsCommentDAO.rsaveComment(hm);
		System.out.println(i);
		
	    return i;
	}
  }