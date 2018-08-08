package com.mvc.controller;

import com.mvc.model.User;
import com.mvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author miaojian_li
 * @create 2018/8/7 - 12:42
 */
@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/selectById/{id}")
	@ResponseBody
	public String selectById(@PathVariable("id") int id){
		User user = userService.selectById(id);
		return user.getUsername();
	}

	@RequestMapping("/insert")
	@ResponseBody
	public String insert(User user){
		int result = userService.insert(user);
		return "成功插入" + result + "条记录";
	}

	@RequestMapping("/login")
	@ResponseBody
	public boolean login(User user){
		return userService.login(user);
	}
}
