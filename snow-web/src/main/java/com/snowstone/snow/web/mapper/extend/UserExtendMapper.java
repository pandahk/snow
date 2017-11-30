package com.snowstone.snow.web.mapper.extend;

import java.util.List;

import com.snowstone.snow.web.model.User;

public interface UserExtendMapper {
	 User selectByAccount(String account);
	    
	    List<User> selectAll();
	    
	    List<User> queryUser(User record);
}
