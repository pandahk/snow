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
	@Autowired
	Uu uu;
	//,isolation=Isolation.READ_COMMITTED
	@Transactional(propagation=Propagation.REQUIRED,readOnly=true,isolation=Isolation.READ_COMMITTED)
	public  User read(){
//		User record=new User();
//		record.setAccount("zhangsan");
//		record.setName("张三");
//		record.setPassword("1111");
//		record.setSex(1);
//		record.setOrgId(12);
//		record.setStatus(1);
//		userMapper.insertSelective(record);
//		System.out.println("77:"+record);
		User user=uu.se(11);
		System.out.println("9911:"+user);
		
//		User record=new User();
//		record.setId(11);
//		record.setAccount("zhangsanss");
//		record.setName("张三ss");
//		record.setPassword("ss");
//		uu.upp(record);
//		
//		List<User> list=userMapper.selectAll();
//		System.out.println(JSON.toJSONString(list));
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
//		List<User> list2=userMapper.selectAll();
//		System.out.println(JSON.toJSONString(list2));
		User user2=uu.se(11);
		System.out.println("9922:"+user2);
//		throw  new RuntimeException();
		
		return null;
	}
	
	
//	@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.READ_COMMITTED)
	public  void update(){
		User record=new User();
		record.setId(11);
		record.setAccount("dddd");
		record.setName("dddd");
		record.setPassword("dddd");
		uu.upp(record);
//		User record=new User();
//		record.setAccount("zhangsanwww");
//		record.setName("张三qqwww");
//		record.setPassword("1111qqwww");
//		record.setSex(1);
//		record.setOrgId(12);
//		record.setStatus(1);
//		userMapper.insertSelective(record);
		System.out.println("9933:"+record);
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
