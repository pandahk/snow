package com.snowstone.snow.web.mapper;

import org.springframework.stereotype.Repository;

import com.snowstone.snow.web.model.User;



public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User selectByAccount(String account);
}