package kr.co.sp04.cmm;

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

import kr.co.sp04.controller.NewsController;
import kr.co.sp04.service.ComitteeListService;


@Controller
@RequestMapping("/main")
public class main {		
		private static final Logger logger = LoggerFactory.getLogger(NewsController.class);
		
		@RequestMapping(value = "/index.do", method = RequestMethod.GET)
		public String sub04_1(Locale locale, Model model) {
			
			return "main/index";
		}
}
	
	
