package com.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.model.User;
import com.mvc.service.UserService;

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
	public String selectById(@PathVariable("id") int id) {
		User user = userService.selectById(id);
		// return user.getUsername();
		return null;
	}

	@RequestMapping("/insert")
	@ResponseBody
	public String insert(User user) {
		int result = userService.insert(user);
		return "成功插入" + result + "条记录";
	}

	// 登录
	@ResponseBody
	@RequestMapping("login")
	public String login(HttpServletRequest request, String username ,String password) {
		HttpSession session = request.getSession(true);
		User user = new User(username,password);
		boolean exist = userService.selectOne(user);
		if (exist) {
			session.setAttribute("user", user.getUsername());
			return "0";
		} else {
			return "1";//用户名或密码错误
		} 
	}
}
