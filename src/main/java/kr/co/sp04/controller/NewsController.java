package kr.co.sp04.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
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

import kr.co.sp04.service.ComitteeListService;
import kr.co.sp04.service.JoinListService;
import kr.co.sp04.service.NewsCommentService;
import kr.co.sp04.service.NewsService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/sub01")
public class NewsController {

	private static final Logger logger = LoggerFactory.getLogger(NewsController.class);

	@Autowired
	NewsService newsService;
	@Autowired
	JoinListService joinListService;
	@Autowired
	ComitteeListService comitteeListService;
	@Autowired
	NewsCommentService newsCommentService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/sub01_1.do", method = RequestMethod.GET)
	public String sub01_1(Locale locale, Model model) {
		return "sub01/sub01_1";
	}
	@RequestMapping(value = "/sub01_1_view.do", method = RequestMethod.GET)
	public String sub01_1_view(Locale locale, Model model) {
		return "sub01/sub01_1_view";
	}
	@RequestMapping(value = "/sub01_1_write.do", method = RequestMethod.GET)
	public String sub01_1_write(Locale locale, Model model) {
		return "sub01/sub01_1_write";
	}
	@RequestMapping(value = "/listNews.do")
	public String  listNews(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
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

		Map <String,String> hm = new HashMap();
		hm.put ("sPageNo",sPageNo);		
		hm.put ("sPageSize",sPageSize);		
		hm.put ("sTotalcnt",sTotalcnt);	
		hm.put ("sTitle",sTitle);		

		String Tot= newsService.selectTotal(hm);

		List<HashMap<String, String>> aList= newsService.listNews(hm);

		Map<String,Object> map = new HashMap<String,Object>();
		map.put("result",aList);

		model.addAllAttributes(map);
		model.addAttribute("totCnt",Tot);

		// Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		return "jsonView";
	}
	@RequestMapping(value = "/writeNews.do")
	public String  writeNews(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//	    SomeDTO someData = someService.someMethod();
		//	     // TODO Auto-generated method stub
		String msg = "";
		String rtn = "";

		System.out.println("get");
		String sTitle = request.getParameter("sTitle");
		String sContent = request.getParameter("sContent");
		String sEtc = request.getParameter("sEtc");		
		System.out.println(sTitle);

		Map <String,String> hm = new HashMap();
		hm.put ("sTitle",sTitle);	
		hm.put ("sContent",sContent);	
		hm.put ("sEtc",sEtc);		
		int i= newsService.writeNews(hm);

		String msg1 = "";

		if("".equals(sTitle)) { 
			msg1 = "������ �Է����ּ���.";
			return "jsonView";
		}

		if("".equals(sContent)) {
			msg1 = "������ �Է����ּ���.";
			return "jsonView";
		}

		Map<String,Object> map = new HashMap<String,Object>();

		map.put("result",i);
		map.put("data",msg1);	    
		model.addAllAttributes(map);

		// Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		return "jsonView";
	}

	@RequestMapping(value = "/viewNews.do")
	public String  viewNews(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//    SomeDTO someData = someService.someMethod();
		//     // TODO Auto-generated method stub
		System.out.println("get");
		String sSeq = request.getParameter("sSeq");
		System.out.println(sSeq);

		Map <String,String> hm = new HashMap();
		hm.put ("sSeq",sSeq);			
		Map<String,String> map =  newsService.viewNews(hm);

		model.addAllAttributes(map);

		// Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		return "jsonView";
	}
	@RequestMapping(value = "/deleteNews.do")
	public String  deleteNews(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//		    SomeDTO someData = someService.someMethod();
		//		     // TODO Auto-generated method stub
		System.out.println("get");
		String sSeq = request.getParameter("sSeq");
		System.out.println(sSeq);

		Map <String,String> hm = new HashMap();
		hm.put ("sSeq",sSeq);			
		int i= newsService.deleteNews(hm);

		Map<String,Object> map = new HashMap<String,Object>();
		map.put("result",i);

		model.addAllAttributes(map);

		// Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		return "jsonView";
	}
	@RequestMapping(value = "/listMain.do")
	public String  listMain(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//		    SomeDTO someData = someService.someMethod();
		//		     // TODO Auto-generated method stub
		System.out.println("get");
		String sPageNo = "1";
		String sPageSize = "5";

		Map <String,String> hm = new HashMap();
		hm.put ("sPageNo",sPageNo);		
		hm.put ("sPageSize",sPageSize);		

		String Tot= newsService.selectTotal(hm);

		List<HashMap<String, String>> aList= newsService.listNews(hm);
		model.addAttribute("result",aList);

		sPageNo = "1";
		sPageSize = "2";

		hm.put ("sPageNo",sPageNo);		
		hm.put ("sPageSize",sPageSize);		

		List<HashMap<String, String>> aList2= joinListService.listJoin(hm);
		model.addAttribute("result2",aList2);

		sPageNo = "1";
		sPageSize = "3";

		hm.put ("sPageNo",sPageNo);		
		hm.put ("sPageSize",sPageSize);		

		List<HashMap<String, String>> aList3= comitteeListService.listComittee(hm);
		model.addAttribute("result3",aList3);

		return "jsonView";
	}

	@RequestMapping(value = "/listComment.do")
	public String  listComment(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//		    SomeDTO someData = someService.someMethod();
		//		     // TODO Auto-generated method stub
		System.out.println("get");
		String sPseq =request.getParameter("sPseq");	
		System.out.println(sPseq);

		Map <String,String> hm = new HashMap();
		hm.put ("sPseq",sPseq);

		List<HashMap<String, String>> aList= newsCommentService.listComment(hm);

		Map<String,Object> map = new HashMap<String,Object>();
		map.put("result",aList);

		model.addAllAttributes(map);

		return "jsonView";
	}

	@RequestMapping(value = "/writeComment.do")
	public String  writeComment(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//		    SomeDTO someData = someService.someMethod();
		//		     // TODO Auto-generated method stub
		System.out.println("get");
		String sNickname =request.getParameter("sNickname");
		String sContent = request.getParameter("sContent");	
		String sPseq =request.getParameter("sPseq");	
		System.out.println(sPseq);

		Map <String,String> hm = new HashMap();
		hm.put ("sNickname",sNickname);
		hm.put ("sContent",sContent);
		hm.put ("sPseq",sPseq);

		int i= newsCommentService.writeComment(hm);

		Map<String,Object> map = new HashMap<String,Object>();
		map.put("result",i);

		model.addAllAttributes(map);

		return "jsonView";
	}

	@RequestMapping(value = "/deleteComment.do")
	public String  deleteComment(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//		    SomeDTO someData = someService.someMethod();
		//		     // TODO Auto-generated method stub
		System.out.println("get");
		String sSeq = request.getParameter("sSeq");
		System.out.println(sSeq);

		Map <String,String> hm = new HashMap();
		hm.put ("sSeq",sSeq);			
		int i= newsCommentService.deleteComment(hm);

		Map<String,Object> map = new HashMap<String,Object>();
		map.put("result",i);

		model.addAllAttributes(map);

		// Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		return "jsonView";
	}

	@RequestMapping(value = "/goodComment.do")
	public String  goodComment(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//		    SomeDTO someData = someService.someMethod();
		//		     // TODO Auto-generated method stub
		System.out.println("get");
		String sSeq = request.getParameter("sSeq");
		System.out.println(sSeq);

		Map <String,String> hm = new HashMap();
		hm.put ("sSeq",sSeq);			
		int i= newsCommentService.goodComment(hm);

		Map<String,Object> map = new HashMap<String,Object>();
		map.put("result",i);

		model.addAllAttributes(map);

		// Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		return "jsonView";
	}

	@RequestMapping(value = "/badComment.do")
	public String  badComment(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//		    SomeDTO someData = someService.someMethod();
		//		     // TODO Auto-generated method stub
		System.out.println("get");
		String sSeq = request.getParameter("sSeq");
		System.out.println(sSeq);

		Map <String,String> hm0 = new HashMap();
		hm0.put ("sSeq",sSeq);			
		int i= newsCommentService.badComment(hm0);

		Map<String,Object> map = new HashMap<String,Object>();
		map.put("result",i);

		model.addAllAttributes(map);

		// Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		return "jsonView";
	}

	@RequestMapping(value = "/rsaveComment.do")
	public String  rsaveComment(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//		    SomeDTO someData = someService.someMethod();
		//		     // TODO Auto-generated method stub
		System.out.println("get");
		String sGseq =request.getParameter("sGseq");
		String sContent = request.getParameter("sContent");	
		String sPseq =request.getParameter("sPseq");
		String sNickname =request.getParameter("sNickname");
		System.out.println(sPseq);

		Map <String,String> hm = new HashMap();
		hm.put ("sPseq",sPseq);
		hm.put ("sContent",sContent);	
		hm.put ("sGseq",sGseq);		
		hm.put ("sNickname",sNickname);		
		int i= newsCommentService.rsaveComment(hm);

		Map<String,Object> map = new HashMap<String,Object>();
		map.put("result",i);

		model.addAllAttributes(map);

		// Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		return "jsonView";
	}

	@RequestMapping(value = "/rlistNews.do")
	public String  rlistNews(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//		    SomeDTO someData = someService.someMethod();
		//		     // TODO Auto-generated method stub
		System.out.println("get");
		String sPseq = request.getParameter("sPseq");

		Map <String,String> hm = new HashMap();

		hm.put ("sPseq",sPseq);

		List<HashMap<String, String>> aList= newsService.rlistNews(hm);

		Map<String,Object> map = new HashMap<String,Object>();
		map.put("result",aList);

		model.addAllAttributes(map);

		// Keypoint ! setViewName�� �� String �Ķ���ʹ� JsonView bean ��������� id�� ���ƾ� �Ѵ�.	     
		return "jsonView";
	}
}
