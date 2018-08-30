package com.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class IndexController {

	@RequestMapping("/index")
	public ModelAndView index(HttpServletRequest request){
		HttpSession session = request.getSession();
		Object o = session.getAttribute("app_admin_session");
		ModelAndView mav = new ModelAndView();
		if(o != null){
			mav.setViewName("index");
		}else{
			mav.setViewName("login");
		}
		return mav;
	}
}
