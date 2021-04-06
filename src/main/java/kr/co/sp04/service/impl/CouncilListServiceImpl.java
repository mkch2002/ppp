package kr.co.sp04.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sp04.dao.CouncilListDAO;
import kr.co.sp04.service.CouncilListService;

@Service
public class CouncilListServiceImpl implements CouncilListService {
	
	@Autowired
	CouncilListDAO councilListDAO;

	public List<HashMap<String,String>>  listCouncil(Map<String, String> hm1)
	{
		String rtn = "";
		
		List<HashMap<String,String>> aList=  councilListDAO.listCouncil(hm1);
		System.out.println(rtn);
		
	    return aList;
	}
	public int  writeCouncil(Map<String, String> hm2)
	{
		
		int i=  councilListDAO.writeCouncil(hm2);
		System.out.println(i);
		
	    return i;
	}
	
	public Map<String,String>  viewCouncil(Map<String, String> hm3)
	{		
		Map<String,String> map =  councilListDAO.viewCouncil(hm3);
		System.out.println(map);
		
	    return map;
	}
	public int  deleteCouncil(Map<String, String> hm4){	
		
		int i=  councilListDAO.deleteCouncil(hm4);
		System.out.println(i);
		
	    return i;
	}
	
	public int  editCouncil(Map<String, String> hm5) {
		
	    return councilListDAO.editCouncil(hm5);
		
	}
	
	@Override
	public String selectTotal(Map<String, String> hm1) {
		// TODO Auto-generated method stub
		return  councilListDAO.selectTotal(hm1);
	}
  }