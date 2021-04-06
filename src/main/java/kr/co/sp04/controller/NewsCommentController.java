//package kr.co.sp04.controller;
//
//import java.io.IOException;
//import java.text.DateFormat;
//import java.util.Date;
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
//import org.springframework.stereotype.Repository;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import kr.co.sp04.service.ComitteeListService;
//import kr.co.sp04.service.JoinListService;
//import kr.co.sp04.service.NewsCommentService;
//
///**
// * Handles requests for the application home page.
// */
//@Controller
//@RequestMapping("/sub01")
//public class NewsCommentController {
//	
//	private static final Logger logger = LoggerFactory.getLogger(NewsCommentController.class);
//	
//	@Autowired
//	NewsCommentService newsCommentService;
//	@Autowired
//	JoinListService joinListService;
//	@Autowired
//	ComitteeListService comitteeListService;
//
//	/**
//	 * Simply selects the home view to render by returning its name.
//	 */
//	@RequestMapping(value = "/sub01_1.do", method = RequestMethod.GET)
//	public String sub01_1(Locale locale, Model model) {
//		return "sub01/sub01_1";
//	}
//	@RequestMapping(value = "/sub01_1_view.do", method = RequestMethod.GET)
//	public String sub01_1_view(Locale locale, Model model) {
//		return "sub01/sub01_1_view";
//	}
//	@RequestMapping(value = "/sub01_1_write.do", method = RequestMethod.GET)
//	public String sub01_1_write(Locale locale, Model model) {
//		return "sub01/sub01_1_write";
//	}
//	
//	
//}
