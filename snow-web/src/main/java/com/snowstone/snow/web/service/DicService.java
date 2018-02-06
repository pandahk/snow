package com.snowstone.snow.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowstone.snow.core.mapper.DictionaryGroupMapper;
import com.snowstone.snow.core.mapper.DictionaryItemMapper;
import com.snowstone.snow.core.mapper.extend.DictionaryGroupExtendMapper;
import com.snowstone.snow.core.mapper.extend.DictionaryItemExtendMapper;
import com.snowstone.snow.core.model.DictionaryGroup;
import com.snowstone.snow.core.model.DictionaryItem;

@Service
public class DicService {

	@Autowired
	private DictionaryGroupMapper dictionaryGroupMapper;
	@Autowired
	private DictionaryGroupExtendMapper dictionaryGroupExtendMapper;
	@Autowired
	private DictionaryItemMapper dictionaryItemMapper;
	@Autowired
	private DictionaryItemExtendMapper dictionaryItemExtendMapper;
	
	
	public List<DictionaryGroup> gselectAll(){
		return dictionaryGroupExtendMapper.selectAll();
		
	}
	
	public List<DictionaryItem> iselectAll(){
		return dictionaryItemExtendMapper.selectAll();
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
