package com.snowstone.snow.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.snowstone.snow.web.service.UserService;


@Controller
public class HoneController {
	private static final Logger logger = LoggerFactory.getLogger(HoneController.class);
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/11")
	public String home(){
		
		userService.add();
		return "index";
	}
	@RequestMapping("/login122")
	public String login(){
		
		return "login";
	}
}
