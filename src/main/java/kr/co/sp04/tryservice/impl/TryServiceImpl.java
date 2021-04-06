package kr.co.sp04.tryservice.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sp04.trydao.TryDAO;
import kr.co.sp04.tryservice.TryService;

@Service
public class TryServiceImpl implements TryService {

	@Autowired
	TryDAO tryDAO;

	public List<HashMap<String,String>>  listTry(Map<String, String> hm1)
	{
		String rtn = "";

		List<HashMap<String,String>> aList=  tryDAO.listTry(hm1);
		System.out.println(rtn);

		return aList;
	}

	public String selectTotal(Map<String, String> hm1) {

		return  tryDAO.selectTotal(hm1);
	}

	public Map<String,String>  viewTry(Map<String, String> hm3)
	{
		
		Map<String,String> map =  tryDAO.viewTry(hm3);
		System.out.println(map);
		
	    return map;
	}
	
	public int  deleteTry(Map<String, String> hm4){	
		
		int i=  tryDAO.deleteTry(hm4);
		System.out.println(i);
		
	    return i;
	}
	
	public int  writeTry(Map<String, String> hm)
	{
		
		int i=  tryDAO.writeTry(hm);
		System.out.println(i);
		
	    return i;
	}
	
	public int  editTry(Map<String, String> hm5) {
		
	    return tryDAO.editTry(hm5);
		
	}
}