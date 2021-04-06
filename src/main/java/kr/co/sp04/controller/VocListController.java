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
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sp04.service.VocListService;


@Controller
@RequestMapping("/sub02")
public class VocListController {
	
	private static final Logger logger = LoggerFactory.getLogger(NewsController.class);
	
	@Autowired
	VocListService vocListService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/sub02_1.do", method = RequestMethod.GET)
	public String sub02_1(Locale locale, Model model) {
		return "sub02/sub02_1";
	}
	
	@RequestMapping(value = "/sub02_1_view.do", method = RequestMethod.GET)
	public String sub02_1_view(Locale locale, Model model) {
		return "sub02/sub02_1_view";
	}

	@RequestMapping(value = "/sub02_1_write.do", method = RequestMethod.GET)
	public String sub02_1_write(Locale locale, Model model) {
		return "sub02/sub02_1_write";
	}
	
	@RequestMapping(value = "/sub02_1_edit.do", method = RequestMethod.GET)
	public String sub02_1_edit(Locale locale, Model model) {
		return "sub02/sub02_1_edit";
	}
	
	@RequestMapping("/listVoc.do")
	public String  outputJsonList(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {

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
			
		String Tot= vocListService.selectTotal(hm1);
		
		List<HashMap<String, String>> aList= vocListService.listVoc(hm1);
		
	    Map<String,Object> map = new HashMap<String,Object>();
	    map.put("result",aList);
	    
	    model.addAllAttributes(map);
	    model.addAttribute("totCnt",Tot);
	    
	    return "jsonView";
	   }
	
	@RequestMapping(value = "/writeVoc.do")
	public String  writeVoc(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
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
		hm2.put ("sEtc",sEtc);	
		
		int i= vocListService.writeVoc(hm2);
		
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
		@RequestMapping(value = "/viewVoc.do")
		public String  viewVoc(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//    SomeDTO someData = someService.someMethod();
		//     // TODO Auto-generated method stub
			System.out.println("get");
			String sSeq = request.getParameter("sSeq");
			System.out.println(sSeq);
			
			Map <String,String> hm3 = new HashMap();
			hm3.put ("sSeq",sSeq);				
			Map<String,String> map =  vocListService.viewVoc(hm3);
			
		    model.addAllAttributes(map);
		 
		    // Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		    return "jsonView";
	}
		@RequestMapping(value = "/deleteVoc.do")
		public String  deleteVoc(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
//		    SomeDTO someData = someService.someMethod();
//		     // TODO Auto-generated method stub
			System.out.println("get");
			String sSeq = request.getParameter("sSeq");
			System.out.println(sSeq);
			
			Map <String,String> hm4 = new HashMap();
			hm4.put ("sSeq",sSeq);	
			
			int i= vocListService.deleteVoc(hm4);
			
		    Map<String,Object> map = new HashMap<String,Object>();
		    map.put("result",i);
		    
		    model.addAllAttributes(map);
		 
		    // Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		    return "jsonView";
		}
		
		@RequestMapping(value = "/editVoc.do")
		public String  editCouncil(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {

			System.out.println("get");
			String sSeq = request.getParameter("sSeq");
			String sPseq = request.getParameter("sPseq");
			String sTitle = request.getParameter("sTitle");
			String sContent = request.getParameter("sContent");

				
			Map <String,String> hm5 = new HashMap<String,String>();
			hm5.put ("sSeq",sSeq);
			hm5.put ("sPseq",sPseq);
			hm5.put ("sTitle",sTitle);
			hm5.put ("sContent",sContent);

			int 
			i= vocListService.editVoc(hm5);
				
		    Map<String,Object> map = new HashMap<String,Object>();
		    map.put("result",i);

		    model.addAllAttributes(map);		
		    
			return "jsonView";	
			}
}
