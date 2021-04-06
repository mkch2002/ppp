package kr.co.sp04.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sp04.dao.JoinListDAO;
import kr.co.sp04.service.JoinListService;

@Service
public class JoinListServiceImpl implements JoinListService {
	
	@Autowired
	JoinListDAO joinListDAO;

	@Override
	public List<HashMap<String,String>>  listJoin(Map<String, String> hm1)
	{
		String rtn = "";
		
		List<HashMap<String,String>> aList=  joinListDAO.listJoin(hm1);
		System.out.println(rtn);
		
	    return aList;
	}
	public int  writeJoin(Map<String, String> hm2)
	{
		
		int i=  joinListDAO.writeJoin(hm2);
		System.out.println(i);
		
	    return i;
	}
	
	public Map<String,String>  viewJoin(Map <String,String> hm3)
	{
		
		Map<String,String> map =  joinListDAO.viewJoin(hm3);
		System.out.println(map);
		
	    return map;
	}
	public int  deleteJoin(Map <String,String> hm4)
	{
		
		int i=  joinListDAO.deleteJoin(hm4);
		System.out.println(i);
		
	    return i;
	}
	
	public int  editJoin(Map<String, String> hm5) {
		
	    return joinListDAO.editJoin(hm5);
		
	}
	
	public String selectTotal(Map<String, String> hm1) {
		// TODO Auto-generated method stub
		return  joinListDAO.selectTotal(hm1);
	}
}

