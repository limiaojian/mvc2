package com.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author miaojian_li
 * @create 2018/8/7 - 18:28
 */
@Controller
@RequestMapping("/page")
public class PageController {

	@RequestMapping("/{PageName}")
	public String index(@PathVariable("PageName") String PageName){
		return PageName;
	}
}
