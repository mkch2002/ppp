package kr.co.sp04.cmm;

import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

public class RequestUtil {

	public static HashMap<String,String> requestToMap(HttpServletRequest request) {
		Enumeration params = request.getParameterNames();
		HashMap<String,String> hm = new HashMap<String,String>();
		System.out.println("----------------------------");
		while (params.hasMoreElements()){
		    String name = (String)params.nextElement();
		    String value = request.getParameter(name);
		    System.out.println(name + " : " +request.getParameter(name));
		    hm.put(name,value);	    
		}
		System.out.println("----------------------------");
		return hm;

	}
}
