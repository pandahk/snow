package com.snowstone.snow.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowstone.snow.core.mapper.RoleMapper;
import com.snowstone.snow.core.mapper.extend.RoleExtendMapper;
import com.snowstone.snow.core.model.Role;

@Service
public class RoleService {

	@Autowired
	private RoleMapper roleMapper;
	@Autowired
	private RoleExtendMapper roleExtendMapper;
	
	public List<Role> selectAll(){
		return roleExtendMapper.selectAll();
	}
	
	
	public int add(Role record){
		return roleMapper.insertSelective(record);
	}
	public int update(Role record){
		return roleMapper.updateByPrimaryKeySelective(record);
	}
	public int del(Integer id){
		return roleMapper.deleteByPrimaryKey(id);
	}
	
	
	
	
	
}
