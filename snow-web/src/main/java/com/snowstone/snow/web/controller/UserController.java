package com.snowstone.snow.web.controller;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.snowstone.snow.core.model.User;
import com.snowstone.snow.web.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/user")
	public String userManager(Model model){
		List<User> userList=userService.findAll();
		if (CollectionUtils.isNotEmpty(userList)) {
			model.addAttribute("userList", userList);
		}
		System.out.println(JSON.toJSONString(userList));
		return "/user/userManager";

	}
	
}
