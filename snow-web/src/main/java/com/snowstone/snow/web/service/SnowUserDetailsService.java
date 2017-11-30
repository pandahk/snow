package com.snowstone.snow.web.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.snowstone.snow.core.model.Role;
import com.snowstone.snow.core.model.User;


@Service("snowUserDetailsService")
public class SnowUserDetailsService implements UserDetailsService {

	 @Autowired
	 private UserService userService;
	
	@Override
	public UserDetails loadUserByUsername(String account)throws UsernameNotFoundException {
		User user = userService.findOne(account);
        System.out.println("User : "+user);
        if(user==null){
            System.out.println("User not found");
            throw new UsernameNotFoundException("Username not found");
        }
        boolean enabled=user.getStatus()==1;
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        for(Role role : user.getRoleList()){
            System.out.println("role : "+role);
            authorities.add(new SimpleGrantedAuthority("ROLE_"+role.getRoleCode()));
        }
        return new org.springframework.security.core.userdetails.User(user.getAccount(), user.getPassword(), 
        		enabled, true, true, true, authorities);
	}
}
