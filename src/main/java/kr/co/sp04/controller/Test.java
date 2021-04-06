package kr.co.sp04.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	HashMap<String, String> map = new HashMap<String,String>();
	map.put("key1","¹ÎÁøÈ«");
	map.put("key2","Å°À§");
	System.out.println(map.toString());
	
	List<String> list = new ArrayList<String>();
	
	list.add("°¡");
	list.add("³ª");
	System.out.println(list.toString());
	
	List<HashMap<String, String>> listb = new ArrayList<HashMap<String,String>>();
	listb.add(map);
	listb.add(map);
	System.out.println(listb.toString());
	
	}
}
