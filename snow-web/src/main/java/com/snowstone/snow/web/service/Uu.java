package com.snowstone.snow.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.snowstone.snow.web.mapper.UserMapper;
import com.snowstone.snow.web.model.User;

@Service
public class Uu {

	
	@Autowired
	UserMapper userMapper;
	
	@Transactional
	public void upp(User record){
		userMapper.updateByPrimaryKeySelective(record);
		
	}
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true,isolation=Isolation.READ_COMMITTED)
	public User se(Integer id){
		return userMapper.selectByPrimaryKey(id);
		
	}
	
	
	
	
	
	
	
	
}
