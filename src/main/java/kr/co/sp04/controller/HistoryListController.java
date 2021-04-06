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

import kr.co.sp04.service.HistoryListService;

@Controller
@RequestMapping("/sub01")
public class HistoryListController {
	
	private static final Logger logger = LoggerFactory.getLogger(NewsController.class);
	@Autowired
	HistoryListService historyListService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/sub01_5.do", method = RequestMethod.GET)
	public String sub01_5(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
 
	    return "sub01/sub01_5";
	}
	
	@RequestMapping(value = "/sub01_5_view.do", method = RequestMethod.GET)
	public String sub01_5_view(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
			//    SomeDTO someData = someService.someMethod();
			//     // TODO Auto-generated method stub
				System.out.println("get");
				String sSeq = request.getParameter("sSeq");
				System.out.println(sSeq);
				
				Map <String,String> hm3 = new HashMap();
				hm3.put ("sSeq",sSeq);
				
				Map<String,String> map =  historyListService.viewHistory(hm3);
				
			    model.addAllAttributes(map);
			 
			    // Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		return "sub01/sub01_5_view";
	}

	@RequestMapping(value = "/sub01_5_write.do", method = RequestMethod.GET)
	public String sub01_5_write(Locale locale, Model model) {
		return "sub01/sub01_5_write";
	}
	@RequestMapping(value = "/listHistory.do")
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
		
		String Tot= historyListService.selectTotal(hm1);

		List<HashMap<String, String>> aList= historyListService.listHistory(hm1);
		
	    Map<String,Object> map = new HashMap<String,Object>();
	    map.put("result",aList);
	    
	    model.addAllAttributes(map);
	    model.addAttribute("totCnt",Tot);

	    // Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
	    return "jsonView";
	}
	@RequestMapping(value = "/writeHistory.do")
	public String  writeHistory(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
//	    SomeDTO someData = someService.someMethod();
//	     // TODO Auto-generated method stub
		System.out.println("get");
		String sTitle = request.getParameter("sTitle");
		String sContent = request.getParameter("sContent");

		System.out.println(sTitle);
				
		Map <String,String> hm2 = new HashMap();
		hm2.put ("sTitle",sTitle);
		hm2.put ("sContent",sContent);

		int i= historyListService.writeHistory(hm2);
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
	    // Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
	    return "jsonView";
	}
		@RequestMapping(value = "/viewHistory.do")
		public String  viewHistory(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//    SomeDTO someData = someService.someMethod();
		//     // TODO Auto-generated method stub
			System.out.println("get");
			String sSeq = request.getParameter("sSeq");
			System.out.println(sSeq);
			
			Map <String,String> hm3 = new HashMap();
			hm3.put ("sSeq",sSeq);
			
			Map<String,String> map =  historyListService.viewHistory(hm3);
			
		    model.addAllAttributes(map);
		 
		    // Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		    return "jsonView";
	}
		@RequestMapping(value = "/deleteHistory.do")
		public String  deleteHistory(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
//		    SomeDTO someData = someService.someMethod();
//		     // TODO Auto-generated method stub
			System.out.println("get");
			String sSeq = request.getParameter("sSeq");
			System.out.println(sSeq);
			
			Map <String,String> hm4 = new HashMap();
			hm4.put ("sSeq",sSeq);
			
			int i= historyListService.deleteHistory(hm4);
			
		    Map<String,Object> map = new HashMap<String,Object>();
		    map.put("result",i);
		    
		    model.addAllAttributes(map);
		 
		    // Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		    return "jsonView";
		}
		@RequestMapping(value = "/editHistory.do")
		public String  editHistory(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {

			System.out.println("get");
			String sSeq = request.getParameter("sSeq");
			String sTitle = request.getParameter("sTitle");
			String sContent = request.getParameter("sContent");

				
			Map <String,String> hm5 = new HashMap<String,String>();
			hm5.put ("sSeq",sSeq);
			hm5.put ("sTitle",sTitle);
			hm5.put ("sContent",sContent);

			int 
			i= historyListService.editHistory(hm5);
				
		    Map<String,Object> map = new HashMap<String,Object>();
		    map.put("result",i);

		    model.addAllAttributes(map);		
		    
			return "jsonView";	
			}
	}


