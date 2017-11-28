package com.snowstone.snow.web.controller;

import java.util.concurrent.Executor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.snowstone.commons.kern.apiext.thread.ThreadPool;
import com.snowstone.snow.web.model.User;
import com.snowstone.snow.web.service.UserService;

@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	UserService userService;

	@RequestMapping("/11")
	@ResponseBody
	public String home() {
	
		return "okok!!!";
	}

	@RequestMapping("/login122")
	public String login() {

		return "login";
	}
}
