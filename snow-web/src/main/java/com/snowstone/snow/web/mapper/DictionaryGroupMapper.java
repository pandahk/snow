package com.snowstone.snow.web.mapper;

import com.snowstone.snow.web.model.DictionaryGroup;

public interface DictionaryGroupMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DictionaryGroup record);

    int insertSelective(DictionaryGroup record);

    DictionaryGroup selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DictionaryGroup record);

    int updateByPrimaryKey(DictionaryGroup record);
}