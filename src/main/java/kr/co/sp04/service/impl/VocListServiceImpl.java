package kr.co.sp04.service.impl;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sp04.cmm.BoardJoinVO;
import kr.co.sp04.dao.VocListDAO;
import kr.co.sp04.dao.impl.VocListDAOImpl;
import kr.co.sp04.service.VocListService;

@Service
public class VocListServiceImpl implements VocListService {
	
	@Autowired
	VocListDAO vocListDAO = new VocListDAOImpl();

	@Override
	public List<HashMap<String,String>>  listVoc(Map<String, String> hm1)
	{
		String rtn = "";
		
		List<HashMap<String,String>> aList=  vocListDAO.listVoc(hm1);
		System.out.println(rtn);
		
	    return aList;
	}
	
	public int  writeVoc(Map<String, String> hm2)
	{
		
		int i=  vocListDAO.writeVoc(hm2);
		System.out.println(i);
		
	    return i;
	}
	
	public Map<String,String>  viewVoc(Map<String, String> hm3)
	{
		
		Map<String,String> map =  vocListDAO.viewVoc(hm3);
		System.out.println(map);
		
	    return map;
	}
	public int  deleteVoc(Map<String, String> hm4)
	{
		
		int i=  vocListDAO.deleteVoc(hm4);
		System.out.println(i);
		
	    return i;
	}
	
	public int  editVoc(Map<String, String> hm5) {
		
	    return vocListDAO.editVoc(hm5);
		
	}
	
	@Override
	public String selectTotal(Map<String, String> hm1) {
		// TODO Auto-generated method stub
		return  vocListDAO.selectTotal(hm1);
		
	}
}