package com.mvc.service;

import com.mvc.dao.UserMapper;
import com.mvc.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @author miaojian_li
 * @create 2018/8/7 - 12:41
 */
@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;

	public User selectById(int id){
		return userMapper.selectById(id);
	}

	public int insert(User user){
		user.setCreatedate(new Date());
		return userMapper.insert(user);
	}

	public boolean login(User user){
		User result = userMapper.selectOne(user);
		if(result != null){
			return true;
		}
		return false;
	}
}
