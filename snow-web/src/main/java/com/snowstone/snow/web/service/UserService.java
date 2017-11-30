package com.snowstone.snow.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowstone.snow.core.mapper.UserMapper;
import com.snowstone.snow.core.mapper.extend.UserExtendMapper;
import com.snowstone.snow.core.model.User;

@Service
public class UserService {

	@Autowired
	UserMapper userMapper;
	@Autowired
	UserExtendMapper userExtendMapper;

	public  void update(User user){
		userMapper.updateByPrimaryKeySelective(user);
	}
	public  User findOne(Integer id){
		return userMapper.selectByPrimaryKey(id);
	}
	
	public  User findOne(String account){
		return userExtendMapper.selectByAccount(account);
	}
	
	
	public  List<User> findAll(){
		return userExtendMapper.selectAll();
	}
	public  List<User> queryUser(User record){
		return userExtendMapper.queryUser(record);
	}
	
}
