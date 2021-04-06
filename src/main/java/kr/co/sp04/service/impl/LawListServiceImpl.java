package kr.co.sp04.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import kr.co.sp04.dao.LawListDAO;
import kr.co.sp04.service.LawListService;

@Service
public class LawListServiceImpl implements LawListService {
	
	@Autowired
	LawListDAO lawListDAO;
	private static final Logger logger = LoggerFactory.getLogger(LawListServiceImpl.class);

	
	@Override
	public List<HashMap<String,String>>  listLaw(Map<String, String> hm1)
	{		
	      return lawListDAO.listLaw(hm1);
	}

	public int  writeLaw(Map<String, String> hm2)
	{
		
		int i=  lawListDAO.writeLaw(hm2);
		System.out.println(i);
		
	    return i;
	}
	
	public Map<String,String>  viewLaw(Map<String, String> hm3)
	{
		
		Map<String,String> map =  lawListDAO.viewLaw(hm3);
		System.out.println(map);
		
	    return map;
	}
	public int  deleteLaw(Map<String, String> hm4)
	{
		
		int i=  lawListDAO.deleteLaw(hm4);
		System.out.println(i);
		
	    return i;
	}
	
	public int  editLaw(Map<String, String> hm5) {
		
	    return lawListDAO.editLaw(hm5);
		
	}

	@Override
	public String selectTotal(Map<String, String> hm1) {
		// TODO Auto-generated method stub
		return  lawListDAO.selectTotal(hm1);
	}
  }