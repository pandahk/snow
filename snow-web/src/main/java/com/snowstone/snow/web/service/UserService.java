package com.snowstone.snow.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSON;
import com.snowstone.snow.web.mapper.UserMapper;
import com.snowstone.snow.web.model.User;

import kafka.utils.threadsafe;

@Service
public class UserService {

	@Autowired
	UserMapper userMapper;

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
