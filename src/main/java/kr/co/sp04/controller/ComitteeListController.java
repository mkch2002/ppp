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

import kr.co.sp04.service.ComitteeListService;


@Controller
@RequestMapping("/sub01")
public class ComitteeListController {
	
	private static final Logger logger = LoggerFactory.getLogger(NewsController.class);
	
	@Autowired
	ComitteeListService comitteeListService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/sub01_2.do", method = RequestMethod.GET)
	public String sub01_2(Locale locale, Model model) {
		return "sub01/sub01_2";
	}	
	@RequestMapping(value = "/sub01_2_view.do", method = RequestMethod.GET)
	public String sub01_2_view(Locale locale, Model model) {
		return "sub01/sub01_2_view";
	}
	@RequestMapping(value = "/sub01_2_write.do", method = RequestMethod.GET)
	public String sub01_2_write(Locale locale, Model model) {
		return "sub01/sub01_2_write";
	}
	@RequestMapping(value = "/sub01_2_edit.do", method = RequestMethod.GET)
	public String sub03_1_edit(Locale locale, Model model) {
		return "sub01/sub01_2_edit";
	}
	@RequestMapping(value = "/listComittee.do")
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

		String Tot= comitteeListService.selectTotal(hm1);
		
		List<HashMap<String, String>> aList= comitteeListService.listComittee(hm1);
	    
		Map<String,Object> map = new HashMap<String,Object>();
	    map.put("result",aList);
	    
	    model.addAllAttributes(map);
	    model.addAttribute("totCnt",Tot);

	    // Keypoint ! setViewName占쏙옙 占쏙옙載� String 占식띰옙占쏙옙姑占� JsonView bean 占쏙옙占쏙옙占쏙옙占쏙옙占� id占쏙옙 占쏙옙占싣억옙 占싼댐옙.	     
	    return "jsonView";
	}
	@RequestMapping(value = "/writeComittee.do")
	public String  writeComittee(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
//	    SomeDTO someData = someService.someMethod();
//	     // TODO Auto-generated method stub
		System.out.println("get");
		String sTitle = request.getParameter("sTitle");
		String sContent = request.getParameter("sContent");

		System.out.println(sTitle);
		
		Map <String,String> hm2 = new HashMap();
		hm2.put ("sTitle",sTitle);
		hm2.put ("sContent",sContent);

		int i= comitteeListService.writeComittee(hm2);

		String msg = "";
		
		if("".equals(sTitle)) {
			msg = "占쏙옙占쏙옙占쏙옙 占쌉뤄옙占쏙옙占쌍쇽옙占쏙옙.";
			return "jsonView";
		}

		if("".equals(sContent)) {
			msg = "占쏙옙占쏙옙占쏙옙 占쌉뤄옙占쏙옙占쌍쇽옙占쏙옙.";
			return "jsonView";
		}		
	    Map<String,Object> map = new HashMap<String,Object>();
	    
	    map.put("result",i);
	    map.put("data",msg);
	    model.addAllAttributes(map);
	 
	    return "jsonView";
	}
		@RequestMapping(value = "/viewComittee.do")
		public String  viewComittee(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//    SomeDTO someData = someService.someMethod();
		//     // TODO Auto-generated method stub
			System.out.println("get");
			String sSeq = request.getParameter("sSeq");
			System.out.println(sSeq);
			
			Map <String,String> hm3 = new HashMap();
			hm3.put ("sSeq",sSeq);
			
			Map<String,String> map =  comitteeListService.viewComittee(hm3);
			
		    model.addAllAttributes(map);
		 
		    // Keypoint ! setViewName占쏙옙 占쏙옙載� String 占식띰옙占쏙옙姑占� JsonView bean 占쏙옙占쏙옙占쏙옙占쏙옙占� id占쏙옙 占쏙옙占싣억옙 占싼댐옙.	     
		    return "jsonView";
	}
		@RequestMapping(value = "/deleteComittee.do")
		public String  deleteComittee(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
//		    SomeDTO someData = someService.someMethod();
//		     // TODO Auto-generated method stub
			System.out.println("get");
			String sSeq = request.getParameter("sSeq");
			System.out.println(sSeq);
			
			Map <String,String> hm4 = new HashMap();
			hm4.put ("sSeq",sSeq);

			int i= comitteeListService.deleteComittee(hm4);
			
		    Map<String,Object> map = new HashMap<String,Object>();
		    map.put("result",i);
		    
		    model.addAllAttributes(map);

		    return "jsonView";
		}
		@RequestMapping(value = "/editComittee.do")
		public String  editCouncil(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {

			System.out.println("get");
			String sSeq = request.getParameter("sSeq");
			String sTitle = request.getParameter("sTitle");
			String sContent = request.getParameter("sContent");

				
			Map <String,String> hm5 = new HashMap<String,String>();
			hm5.put ("sSeq",sSeq);
			hm5.put ("sTitle",sTitle);
			hm5.put ("sContent",sContent);

			int 
			i= comitteeListService.editComittee(hm5);
				
		    Map<String,Object> map = new HashMap<String,Object>();
		    map.put("result",i);

		    model.addAllAttributes(map);		
		    
			return "jsonView";	
			}
}
