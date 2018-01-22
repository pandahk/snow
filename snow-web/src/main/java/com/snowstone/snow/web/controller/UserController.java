package com.snowstone.snow.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.snowstone.snow.core.model.User;
import com.snowstone.snow.web.service.UserService;
import com.snowstone.snow.web.util.PageBean;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/user")
	@SuppressWarnings("all")
	public String userManager(@RequestParam(defaultValue = "1", value = "page") Integer page,
			@RequestParam(defaultValue = "10", value = "rows") Integer rows,
			Model model,HttpServletRequest req){
		String account=req.getParameter("account");
		User user=new User();
		user.setAccount(account);
		PageHelper.startPage(page, rows);
		List<User> userList=userService.queryUser(user);
		
		PageInfo<User> userPages = new PageInfo<User>(userList);
		if (null!=userPages) {
			model.addAttribute("page", userPages);
		}
		return "/user/userManager";

	}
	
}
