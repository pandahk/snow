package com.snowstone.snow.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowstone.snow.web.mapper.UserMapper;
import com.snowstone.snow.web.model.User;

@Service
public class UserService {

	@Autowired
	UserMapper userMapper;
	
	public  void add(){
		User record=new User();
		record.setAccount("zhangsan");
		record.setName("张三");
		record.setSex(1);
		record.setOrgId(12);
		userMapper.insertSelective(record);
	}
	
	public  void update(User user){
		userMapper.updateByPrimaryKeySelective(user);
	}
	
	public  User findOne(Integer id){
		return userMapper.selectByPrimaryKey(id);
	}
	
	public  User findOne(String account){
		return userMapper.selectByAccount(account);
	}
	
}
