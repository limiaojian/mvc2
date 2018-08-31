package com.mvc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.model.User;
import com.mvc.service.UserService;
import com.mvc.util.BaseList;

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
	public User selectById(@PathVariable("id") int id) {
		return userService.selectById(id);
	}
	
	@RequestMapping("/list")
	@ResponseBody
	public Map<String,Object> list(int page,int limit){
		Map<String,Object> map = new HashMap<String,Object>();
		BaseList<User> list =  userService.list(page,limit);
		map.put("data", list.getRecords());
		map.put("count", list.getTotal());
		map.put("code", "0");
		map.put("msg", "success");
		return map;
	}
	
	/**
	 * 跳转到编辑页面
	 * @param user
	 * @return
	 */
	@RequestMapping("/form")
	public String form(Integer id, HttpServletRequest request, Model model) {
		User user = new User();
		if(id != null && id > 0){//修改
			user = userService.selectById(id);
		}
		model.addAttribute("user", user);
		return "userForm";
	}

	//保存
	@RequestMapping("/save")
	@ResponseBody
	public String save(User user) {
		if(user.getId() != null && user.getId() > 0){//修改
			userService.update(user);
		}else{//新增
			userService.insert(user);
		}
		return "0";
	}
	
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public String delete(Integer id) {
		userService.delete(id);
		return "0";
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
