package com.snowstone.snow.core.mapper.extend;

import java.util.List;

import com.snowstone.snow.core.model.User;

public interface UserExtendMapper {
	 User selectByAccount(String account);
	    
	    List<User> selectAll();
	    
	    List<User> queryUser(User record);
}
