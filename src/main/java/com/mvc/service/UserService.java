package com.mvc.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.plugins.Page;
import com.mvc.dao.UserMapper;
import com.mvc.model.User;
import com.mvc.util.BaseList;

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
	
	public void update(User user){
		userMapper.updateById(user);
	}

	public boolean selectOne(User user){
		User result = userMapper.selectOne(user);
		if(result != null){
			return true;
		}
		return false;
	}
	
	public BaseList<User> list(int page,int limit){
		Page<User> p = new Page<User>(page, limit);
		List<User> list = userMapper.selectPage(p, null);
		return new BaseList<User>(p.getTotal(),list);
	}
	
	public void delete(Integer id){
		userMapper.deleteById(id);
	}
}
