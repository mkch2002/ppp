package kr.co.sp04.trycontroller;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.sp04.cmm.ConstantUtil;
import kr.co.sp04.cmm.RequestUtil;
import kr.co.sp04.tryservice.TryService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/try01")
public class TryController {

	private static final Logger logger = LoggerFactory.getLogger(TryController.class);
	
	private static final String filePath = "E:\\test" + File.separator + "upload" + File.separator; // 파일이 저장될 위치
	//private static final String filePath = "/mkch" + File.separator + "upload" + File.separator; // 파일이 저장될 위치
	        
	@Autowired
	TryService tryService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/try01_1.do", method = RequestMethod.GET)
	public String try01_1(Locale locale, Model model) {
		return "try01/try01_1";
	}
	
	@RequestMapping(value = "/upload.do", method = RequestMethod.POST)
	public String  upload(MultipartHttpServletRequest mpRequest, HttpServletResponse response,Model model) throws IOException {
		String sTitle = mpRequest.getParameter("sTitle");
		String sContent = mpRequest.getParameter("sContent");
		String sEtc = mpRequest.getParameter("sEtc");		
		// 브라우저에서 전달 받은 파일 정보
		MultipartFile multipartFile1 = mpRequest.getFile("uploadFile1");
		
		// 저장할 폴더 및 파일명
		String storedPath1 = filePath; //multipartFile1.getOriginalFilename();
		String storedFileName1 = UUID.randomUUID().toString().replaceAll("-","");
		// 파일 타입 설정 및 대입
		File file1 = new File(storedPath1 + storedFileName1);
		// 브라우저에서 불러온 파일 정보를 서버에 특정 폴더에 특정 이름으로 저장한다.
		multipartFile1.transferTo(file1);
		String originalFileName = multipartFile1.getOriginalFilename();
		String originalFileSize = String.valueOf(multipartFile1.getSize());
				
//		MultipartFile multipartFile2 = mpRequest.getFile("uploadFile2");
		
//		// 저장할 폴더 및 파일명
//		String storedPath2 = filePath+ multipartFile2.getOriginalFilename();
//		// 파일 타입 설정 및 대입
//		File file2 = new File(storedPath2);
//		// 브라우저에서 불러온 파일 정보를 서버에 특정 폴더에 특정 이름으로 저장한다.
//		multipartFile2.transferTo(file2);
//		
//		MultipartFile multipartFile3 = mpRequest.getFile("uploadFile3");		
//		
//		// 저장할 폴더 및 파일명
//		String storedPath3 = filePath+ multipartFile3.getOriginalFilename();
//		// 파일 타입 설정 및 대입
//		File file3 = new File(storedPath3);
//		// 브라우저에서 불러온 파일 정보를 서버에 특정 폴더에 특정 이름으로 저장한다.
//		multipartFile3.transferTo(file3);
		Map<String, String> hm1 = new HashMap<String, String>();
		hm1.put("originalFileSize",originalFileSize);
		
//		Map<String, String> hm2 = new HashMap<String, String>();
//		hm2.put("originalFileSize",(String)hm1.get("originalFileSize"));
		
//		return "try01/try01_1_write";
		return "jsonView";
	}
	
	@RequestMapping(value = "/try01_1_jstl.do", method = RequestMethod.GET)
	public String try01_1_jstl(Locale locale, Model model) {
		return "try01/try01_1_jstl";
	}
	
	@RequestMapping(value = "/try01_2.do", method = RequestMethod.GET)
	public String try01_2(Locale locale, Model model) {
		return "try01/try01_2";
	}
	
	@RequestMapping(value = "/try01_2_jstl.do", method = RequestMethod.GET)
	public String try01_2_jstl(HttpServletRequest request, Model model) {
		
		System.out.println("get");
		String sPageNo = "1";
		String sPageSize = "10";
		String sTotalcnt = "0";
		String sTitle = request.getParameter("sTitle");
		String sGrade = request.getParameter("sGrade");
		String sCode = request.getParameter("sCode");
		String sMem_id = request.getParameter("sMem_id");
		String sDiv = "A";
		String sChk = request.getParameter("sChk");

		if(sTitle == null ) {
			sTitle = "";
		};
		System.out.println(sTitle);

		Map <String,String> hm1 = new HashMap<String,String>();
		hm1.put ("sPageNo",sPageNo);
		hm1.put ("sPageSize",sPageSize);
		hm1.put ("sTotalcnt",sTotalcnt);
		hm1.put ("sTitle",sTitle);
		hm1.put ("sGrade",sGrade);
		hm1.put ("sCode",sCode);
		hm1.put ("sMem_id",sMem_id);
		hm1.put ("sDiv",sDiv);
		hm1.put ("sChk",sChk);

		String Tot= tryService.selectTotal(hm1);
		List<HashMap<String, String>> aList= tryService.listTry(hm1);

		model.addAttribute("result",aList);
		model.addAttribute("totCnt",Tot);
		
		return "try01/try01_2_jstl";
	}
	

	@RequestMapping(value = "/try01_1_view.do", method = RequestMethod.GET)
	public String try01_1_view(Locale locale, Model model) {
		return "try01/try01_1_view";
	}

	@RequestMapping(value = "/try01_1_write.do", method = RequestMethod.GET)
	public String try01_1_write(Locale locale, Model model) {
		return "try01/try01_1_write";
	}
	
	@RequestMapping(value = "/try01_1_edit.do", method = RequestMethod.GET)
	public String sub03_1_edit(Locale locale, Model model) {
		return "try01/try01_1_edit";
	}

	@RequestMapping(value = "/listTry.do")
	public String  outputJsonList(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {

		System.out.println("get");
		String sPageNo = ConstantUtil.getPAGE_NO();
		String sPageSize = ConstantUtil.getPAGE_SIZE();
		String sTotalcnt = "0";
		String sTitle = request.getParameter("sTitle");
		String sGrade = request.getParameter("sGrade");
		String sCode = request.getParameter("sCode");
		String sMem_id = request.getParameter("sMem_id");
		String sDiv = request.getParameter("sDiv");
		String sChk = request.getParameter("sChk");
//		String kor = ConstantUtil.getMOTHER_TONGUE();
//		String english = ConstantUtil.getENGLISH();
//		String math = ConstantUtil.getMATH();
		
		if(sTitle == null ) {
			sTitle = "";
		};		
		System.out.println(sTitle);

		Map <String,String> hm1 = new HashMap<String,String>();
		hm1.put ("sPageNo",sPageNo);
		hm1.put ("sPageSize",sPageSize);
		hm1.put ("sTotalcnt",sTotalcnt);
		hm1.put ("sTitle",sTitle);
		hm1.put ("sGrade",sGrade);
		hm1.put ("sCode",sCode);
		hm1.put ("sMem_id",sMem_id);
		hm1.put ("sDiv",sDiv);
		hm1.put ("sChk",sChk);

		String Tot= tryService.selectTotal(hm1);
		List<HashMap<String, String>> aList= tryService.listTry(hm1);

		model.addAttribute("result",aList);
		model.addAttribute("totCnt",Tot);

		return "jsonView";
	}

	@RequestMapping(value = "/viewTry.do")
	public String  viewTry(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {

		System.out.println("get");
		String sSeq = request.getParameter("sSeq");
		System.out.println(sSeq);

		Map <String,String> hm3 = new HashMap();
		hm3.put ("sSeq",sSeq);			
		Map<String,String> map =  tryService.viewTry(hm3);

		model.addAllAttributes(map);

		return "jsonView";
	}
	@RequestMapping(value = "/deleteTry.do")
	public String  deleteTry(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		System.out.println("get");
		String sSeq = request.getParameter("sSeq");
		System.out.println(sSeq);

		Map <String,String> hm4 = new HashMap();
		hm4.put ("sSeq",sSeq);

		int i= tryService.deleteTry(hm4);

		Map<String,Object> map = new HashMap<String,Object>();

		map.put("result",i);
		model.addAllAttributes(map);

		return "jsonView";
	}

	@RequestMapping(value = "/writeTry.do")
	public String  writeTry(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {
		//	    SomeDTO someData = someService.someMethod();
		//	     // TODO Auto-generated method stub
		String msg = "";
		String rtn = "";

		System.out.println("get");
		String sTitle = request.getParameter("sTitle");
		String sContent = request.getParameter("sContent");
		String sEtc = request.getParameter("sEtc");		
		String sGrade = request.getParameter("sGrade");
		String sMem_id = request.getParameter("sMem_id");
		String sDiv = request.getParameter("sDiv");
		System.out.println(sTitle);

		Map <String,String> hm = new HashMap();
		hm.put ("sTitle",sTitle);
		hm.put ("sContent",sContent);	
		hm.put ("sEtc",sEtc);		
		hm.put ("sGrade",sGrade);
		hm.put ("sMem_id",sMem_id);
		hm.put ("sDiv",sDiv);	
		int i= tryService.writeTry(hm);		

		String msg1 = "";

		if("".equals(sTitle)) { 
			msg1 = "타이틀을 입력해주세요";
			return "jsonView";
		}

		if("".equals(sContent)) {
			msg1 = "내용을 입력해주세요";
			return "jsonView";
		}

		Map<String,Object> map = new HashMap<String,Object>();

		map.put("result",i);
		map.put("data",msg1);
		model.addAllAttributes(map);

		return "jsonView";
	}
	
	@RequestMapping(value = "/editTry.do")
	public String  editCouncil(HttpServletRequest request, HttpServletResponse response,Model model) throws IOException {

		System.out.println("get");
		String sSeq = request.getParameter("sSeq");
		String sTitle = request.getParameter("sTitle");
		String sGood = request.getParameter("sGood");
		String sBad = request.getParameter("sBad");
		String sView = request.getParameter("sView");
		String sGrade = request.getParameter("sGrade");
		String sCode = request.getParameter("sCode");
		String sDiv = request.getParameter("sDiv");
		String sChk = request.getParameter("sChk");

		Map <String,String> hm5 = new HashMap<String,String>();

		hm5.put ("sSeq",sSeq);
		hm5.put ("sTitle",sTitle);
		hm5.put ("sGood",sGood);
		hm5.put ("sBad",sBad);
		hm5.put ("sView",sView);
		hm5.put ("sGrade",sGrade);
		hm5.put ("sCode",sCode);
		hm5.put ("sDiv",sDiv);
		hm5.put ("sChk",sChk);

		int
		i= tryService.editTry(hm5);

	    Map<String,Object> map = new HashMap<String,Object>();
	    map.put("result",i);

	    model.addAllAttributes(map);

		return "jsonView";
		}
}
