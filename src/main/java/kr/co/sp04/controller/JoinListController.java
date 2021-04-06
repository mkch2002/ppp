package kr.co.sp04.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sp04.service.JoinListService;



@Controller
@RequestMapping("/sub04")
public class JoinListController {
	
	private static final Logger logger = LoggerFactory.getLogger(NewsController.class);
	
	@Autowired
	JoinListService joinListService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/sub04_1.do", method = RequestMethod.GET)
	public String sub04_1(Locale locale, Model model) {
		return "sub04/sub04_1";
	}
	
	@RequestMapping(value = "/sub04_1_view.do", method = RequestMethod.GET)
	public String sub04_1_view(Locale locale, Model model) {
		return "sub04/sub04_1_view";
	}	

	@RequestMapping(value = "/sub04_1_write.do", method = RequestMethod.GET)
	public String sub04_1_write(Locale locale, Model model) {
		return "sub04/sub04_1_write";
	}	
	
	@RequestMapping(value = "/sub04_1_edit.do", method = RequestMethod.GET)
	public String sub04_1_edit(Locale locale, Model model) {
		return "sub04/sub04_1_edit";
	}	
	
	@RequestMapping(value = "/listJoin.do")
	public String  outputJsonList(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
//	    SomeDTO someData = someService.someMethod();
//	     // TODO Auto-generated method stub
		System.out.println("get");
		String sPageNo = request.getParameter("pageNo");
		String sPageSize = request.getParameter("pageSize");
		String sTotalcnt = "0";
		String sTitle = request.getParameter("sTitle");
		if(sTitle == null ) {
			sTitle = "";
		};
		
		System.out.println(sTitle);

		Map <String,String> hm1 = new HashMap();
		hm1.put ("sPageNo",sPageNo);		
		hm1.put ("sPageSize",sPageSize);		
		hm1.put ("sTotalcnt",sTotalcnt);	
		hm1.put ("sTitle",sTitle);
		
		String Tot= joinListService.selectTotal(hm1);
		
		List<HashMap<String, String>> aList= joinListService.listJoin(hm1);
		
	    Map<String,Object> map = new HashMap<String,Object>();
	    map.put("result",aList);
	    
	    model.addAllAttributes(map);
	    model.addAttribute("totCnt",Tot);
  
	    return "jsonView";
	}
	@RequestMapping(value = "/writeJoin.do")
	public String  writeJoin(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
//	    SomeDTO someData = someService.someMethod();
//	     // TODO Auto-generated method stub
		System.out.println("get");
		String sTitle = request.getParameter("sTitle");
		String sContent = request.getParameter("sContent");
		String sEtc = request.getParameter("sEtc");	
		System.out.println(sTitle);
		
		Map <String,String> hm2 = new HashMap();
		hm2.put ("sTitle",sTitle);
		hm2.put ("sContent",sContent);
		
		int i= joinListService.writeJoin(hm2);		
		String msg = "";

		if("".equals(sTitle)) {
			msg = "������ �Է����ּ���.";
			return "jsonView";
		}

		if("".equals(sContent)) {
			msg = "������ �Է����ּ���.";
			return "jsonView";
		}
		
	    Map<String,Object> map = new HashMap<String,Object>();
	    
	    map.put("result",i);
	    map.put("data",msg);	    
	    model.addAllAttributes(map);

	    return "jsonView";
	}
		@RequestMapping(value = "/viewJoin.do")
		public String  viewJoin(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//    SomeDTO someData = someService.someMethod();
		//     // TODO Auto-generated method stub
			System.out.println("get");
			String sSeq = request.getParameter("sSeq");
			System.out.println(sSeq);
			
			Map <String,String> hm3 = new HashMap();
			hm3.put ("sSeq",sSeq);			
			Map<String,String> map =  joinListService.viewJoin(hm3);
			
		    model.addAllAttributes(map);
		 
		    // Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		    return "jsonView";
	}
		@RequestMapping(value = "/deleteJoin.do")
		public String  deleteJoin(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
//		    SomeDTO someData = someService.someMethod();
//		     // TODO Auto-generated method stub
			System.out.println("get");
			String sSeq = request.getParameter("sSeq");
			System.out.println(sSeq);
			
			Map <String,String> hm4 = new HashMap();
			hm4.put ("sSeq",sSeq);
			
			int i= joinListService.deleteJoin(hm4);
			
		    Map<String,Object> map = new HashMap<String,Object>();
		    map.put("result",i);
		    
		    model.addAllAttributes(map);
		 
		    // Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		    return "jsonView";
		}
		@RequestMapping(value = "/editJoin.do")
		public String  editCouncil(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {

			System.out.println("get");
			String sSeq = request.getParameter("sSeq");
			String sTitle = request.getParameter("sTitle");
			String sContent = request.getParameter("sContent");
			String sEtc = request.getParameter("sEtc");

				
			Map <String,String> hm5 = new HashMap<String,String>();
			hm5.put ("sSeq",sSeq);
			hm5.put ("sTitle",sTitle);
			hm5.put ("sContent",sContent);
			hm5.put ("sEtc",sEtc);

			int 
			i= joinListService.editJoin(hm5);
				
		    Map<String,Object> map = new HashMap<String,Object>();
		    map.put("result",i);

		    model.addAllAttributes(map);		
		    
			return "jsonView";	
			}
}
