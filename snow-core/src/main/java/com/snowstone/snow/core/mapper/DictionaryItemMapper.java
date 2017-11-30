package com.snowstone.snow.core.mapper;

import com.snowstone.snow.core.model.DictionaryItem;

public interface DictionaryItemMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DictionaryItem record);

    int insertSelective(DictionaryItem record);

    DictionaryItem selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DictionaryItem record);

    int updateByPrimaryKey(DictionaryItem record);
}