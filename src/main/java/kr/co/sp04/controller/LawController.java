//package kr.co.sp04.controller;
//
//import java.io.IOException;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Locale;
//import java.util.Map;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//
//import kr.co.sp04.service.LawListService;
//
//
//@Controller
//@RequestMapping("/sub02")
//public class LawController {
//	
//	private static final Logger logger = LoggerFactory.getLogger(NewsController.class);
//	
//	@Autowired
//	LawListService lawListService;
//
//	/**
//	 * Simply selects the home view to render by returning its name.
//	 */
//	@RequestMapping(value = "/sub02_4.do")
//	public String sub02_4 (HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {	
//		return "sub02/sub02_4";
//	}
//	
//	@RequestMapping(value = "/sub02_4_mv.do")
//	public ModelAndView sub02_4_mv (HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {	
//		ModelAndView mv = new ModelAndView();
//		
//		System.out.println("get");
//		String sPageNo = request.getParameter("pageNo");
//		String sPageSize = request.getParameter("pageSize");
//		String sTotalcnt = "0";
//		String sTitle = request.getParameter("sTitle");
//		if(sTitle == null ) {
//			sTitle = "";
//		};
//		System.out.println(sTitle);
//		
//		Map <String,String> hm1 = new HashMap();
//		hm1.put ("sPageNo",sPageNo);		
//		hm1.put ("sPageSize",sPageSize);		
//		hm1.put ("sTotalcnt",sTotalcnt);	
//		hm1.put ("sTitle",sTitle);
//		
//		String Tot= lawListService.selectTotal(hm1);
//		
//		List<HashMap<String, String>> aList= lawListService.listLaw(hm1);
//		
////	    Map<String,Object> map = new HashMap<String,Object>();
////	    map.put("result",aList);
//	   
//		mv.setViewName("sub02/sub02_4_mv");
//		mv.addObject("result",aList);
//		mv.addObject("totCnt",Tot);
//		return mv;
//	}
//	
////	@RequestMapping(value = "/sub02_4_mv.do")
////	public String sub02_4_mv (HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {	
////		model.addAttribute("result","ok11");
////		return "sub02/sub02_4_mv";
////	}
//	
//	@RequestMapping(value = "/sub02_4_view.do", method = RequestMethod.GET)
//	public String sub02_4_view(Locale locale, Model model) {
//		return "sub02/sub02_4_view";
//	}
//	
//	@RequestMapping(value = "/sub02_4_write.do", method = RequestMethod.GET)
//	public String sub02_4_write(Locale locale, Model model) {
//		return "sub02/sub02_4_write";
//	}
//
//	@RequestMapping("/listLaw.do")
//	public String  listLaw(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
//
//		System.out.println("get");
//		String sPageNo = request.getParameter("pageNo");
//		String sPageSize = request.getParameter("pageSize");
//		String sTotalcnt = "0";
//		String sTitle = request.getParameter("sTitle");
//		if(sTitle == null ) {
//			sTitle = "";
//		};
//		System.out.println(sTitle);
//		
//		Map <String,String> hm1 = new HashMap();
//		hm1.put ("sPageNo",sPageNo);		
//		hm1.put ("sPageSize",sPageSize);		
//		hm1.put ("sTotalcnt",sTotalcnt);	
//		hm1.put ("sTitle",sTitle);
//		
//		String Tot= lawListService.selectTotal(hm1);
//		
//		List<HashMap<String, String>> aList= lawListService.listLaw(hm1);
//		
//	    Map<String,Object> map = new HashMap<String,Object>();
//	    map.put("result",aList);
//	    
//	    model.addAllAttributes(map);
//	    model.addAttribute("totCnt",Tot);
//	 
//	    // Keypoint ! setViewName占쏙옙 占쏙옙載� String 占식띰옙占쏙옙姑占� JsonView bean 占쏙옙占쏙옙占쏙옙占쏙옙占� id占쏙옙 占쏙옙占싣억옙 占싼댐옙.	     
//	    return "jsonView";
//	}
//	
//	@RequestMapping(value = "/writeLaw.do")
//	public String  writeLaw(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
////	    SomeDTO someData = someService.someMethod();
////	     // TODO Auto-generated method stub
//		System.out.println("get");
//		String sTitle = request.getParameter("sTitle");
//		String sContent = request.getParameter("sContent");
//		String sWriter = request.getParameter("sWriter");
//
//		System.out.println(sTitle);
//		
//		Map <String,String> hm2 = new HashMap();
//		hm2.put ("sTitle",sTitle);	
//		hm2.put ("sContent",sContent);	
//		hm2.put ("sWriter",sWriter);	
//
//		int i= lawListService.writeLaw(hm2);
//		String msg = "";
//
//		if("".equals(sTitle)) {
//			msg = "占쏙옙占쏙옙占쏙옙 占쌉뤄옙占쏙옙占쌍쇽옙占쏙옙.";
//			return "jsonView";
//		}
//
//		if("".equals(sContent)) {
//			msg = "占쏙옙占쏙옙占쏙옙 占쌉뤄옙占쏙옙占쌍쇽옙占쏙옙.";
//			return "jsonView";
//		}
//		
//	    Map<String,Object> map = new HashMap<String,Object>();
//	    
//	    map.put("result",i);
//	    map.put("data",msg);	    
//	    model.addAllAttributes(map);
//	 
//	    // Keypoint ! setViewName占쏙옙 占쏙옙載� String 占식띰옙占쏙옙姑占� JsonView bean 占쏙옙占쏙옙占쏙옙占쏙옙占� id占쏙옙 占쏙옙占싣억옙 占싼댐옙.	     
//	    return "jsonView";
//	}
//		@RequestMapping(value = "/viewLaw.do")
//		public String  viewLaw(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
//		//    SomeDTO someData = someService.someMethod();
//		//     // TODO Auto-generated method stub
//			System.out.println("get");
//			String sSeq = request.getParameter("sSeq");
//			System.out.println(sSeq);
//			
//			Map <String,String> hm3 = new HashMap();
//			hm3.put ("sSeq",sSeq);			
//			Map<String,String> map =  lawListService.viewLaw(hm3);
//			
//		    model.addAllAttributes(map);
//		 
//		    // Keypoint ! setViewName占쏙옙 占쏙옙載� String 占식띰옙占쏙옙姑占� JsonView bean 占쏙옙占쏙옙占쏙옙占쏙옙占� id占쏙옙 占쏙옙占싣억옙 占싼댐옙.	     
//		    return "jsonView";
//	}
//		@RequestMapping(value = "/deleteLaw.do")
//		public String  deleteLaw(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
////		    SomeDTO someData = someService.someMethod();
////		     // TODO Auto-generated method stub
//			System.out.println("get");
//			String sSeq = request.getParameter("sSeq");
//			System.out.println(sSeq);
//			
//			Map <String,String> hm4 = new HashMap();
//			hm4.put ("sSeq",sSeq);
//			
//			int i= lawListService.deleteLaw(hm4);
//			
//		    Map<String,Object> map = new HashMap<String,Object>();
//		    map.put("result",i);
//		    
//		    model.addAllAttributes(map);
//		 
//		    // Keypoint ! setViewName占쏙옙 占쏙옙載� String 占식띰옙占쏙옙姑占� JsonView bean 占쏙옙占쏙옙占쏙옙占쏙옙占� id占쏙옙 占쏙옙占싣억옙 占싼댐옙.	     
//		    return "jsonView";
//		} 
//		@RequestMapping(value = "/editCouncil.do")
//		public String  editCouncil(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
//
//			System.out.println("get");
//			String sSeq = request.getParameter("sSeq");
//			String sTitle = request.getParameter("sTitle");
//			String sContent = request.getParameter("sContent");
//
//				
//			Map <String,String> hm5 = new HashMap<String,String>();
//			hm5.put ("sSeq",sSeq);
//			hm5.put ("sTitle",sTitle);
//			hm5.put ("sContent",sContent);
//
//			int 
//			i= lawListService.editLaw(hm5);
//				
//		    Map<String,Object> map = new HashMap<String,Object>();
//		    map.put("result",i);
//
//		    model.addAllAttributes(map);		
//		    
//			return "jsonView";	
//			}
//}
//
