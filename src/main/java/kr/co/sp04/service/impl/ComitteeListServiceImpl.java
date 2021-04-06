package kr.co.sp04.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import kr.co.sp04.dao.ComitteeListDAO;
import kr.co.sp04.service.ComitteeListService;

@Service
public class ComitteeListServiceImpl implements ComitteeListService {
	@Autowired
	ComitteeListDAO comitteeListDAO ;
	private static final Logger logger = LoggerFactory.getLogger(LawListServiceImpl.class);

	public List<HashMap<String, String>> listComittee(Map<String, String> hm1)
	{
		String rtn = "";
		
		List<HashMap<String,String>> aList=  comitteeListDAO.listComittee(hm1);
		System.out.println(rtn);
		
	    return aList;
	}
	
	public  int writeComittee(Map<String, String> hm2)
	{
		
		int i=  comitteeListDAO.writeComittee(hm2);
		System.out.println(i);
		
	    return i;
	}
	
	public Map<String,String> viewComittee(Map<String, String> hm3)
	{		
		Map<String,String> map =  comitteeListDAO.viewComittee(hm3);
		System.out.println(map);
		
	    return map;
	}
	public int deleteComittee(Map<String, String> hm4){
		
		int i=  comitteeListDAO.deleteComittee(hm4);
		System.out.println(i);
		
	    return i;
	}
	
	public int  editComittee(Map<String, String> hm5) {
		
	    return comitteeListDAO.editComittee(hm5);
		
	}
	
	@Override
	public String selectTotal(Map<String, String> hm1) {
		// TODO Auto-generated method stub
		return  comitteeListDAO.selectTotal(hm1);
	}
  }
