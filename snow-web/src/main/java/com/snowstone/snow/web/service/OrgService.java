package com.snowstone.snow.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowstone.snow.core.mapper.OrgMapper;
import com.snowstone.snow.core.mapper.extend.OrgExtendMapper;
import com.snowstone.snow.core.model.Org;
@Service
public class OrgService {

	@Autowired
	private OrgMapper orgMapper;
	@Autowired
	private OrgExtendMapper orgExtendMapper;
	
	
	public List<Org> selectAll(){
		return orgExtendMapper.selectAll();
		
	}
	public int add(Org record){
		return orgMapper.insertSelective(record);
		
	}
	public int del(Integer id){
		return orgMapper.deleteByPrimaryKey(id);
		
	}
	public int update(Org record){
		return orgMapper.updateByPrimaryKeySelective(record);
		
	}
	
	
}
