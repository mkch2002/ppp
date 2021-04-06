package kr.co.sp04.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sp04.dao.HistoryListDAO;
import kr.co.sp04.service.HistoryListService;

@Service
public class HistoryListServiceImpl implements HistoryListService {
	
	@Autowired
	HistoryListDAO historyListDAO ;

	@Override
	public List<HashMap<String,String>>  listHistory(Map <String,String> hm1)
	{
		String rtn = "";
		
		List<HashMap<String,String>> aList=  historyListDAO.listHistory(hm1);
		System.out.println(rtn);
		
	    return aList;
	}
	public int  writeHistory(Map <String,String> hm2)
	{
		
		int i=  historyListDAO.writeHistory(hm2);
		System.out.println(i);
		
	    return i;
	}
	
	public Map<String,String>  viewHistory(Map <String,String> hm3)
	{
		
		Map<String,String> map =  historyListDAO.viewHistory(hm3);
		System.out.println(map);
		
	    return map;
	}
	
	public int  deleteHistory(Map <String,String> hm4)
	{
		
		int i=  historyListDAO.deleteHistory(hm4);
		System.out.println(i);
		
	    return i;
	}
	
	public int editHistory(Map<String, String> hm5) {
		
	    return historyListDAO.editHistory(hm5);		
	}

	@Override
	public String selectTotal(Map<String, String> hm1) {
		// TODO Auto-generated method stub
		return  historyListDAO.selectTotal(hm1);
	}
  }

