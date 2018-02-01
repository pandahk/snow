package com.snowstone.snow.web.controller;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.snowstone.snow.core.model.User;
import com.snowstone.snow.web.service.UserService;
import com.snowstone.snow.web.util.UserVo;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/user")
	@SuppressWarnings("all")
	public String userManager(@RequestParam(defaultValue = "1", value = "page") Integer page,
			@RequestParam(defaultValue = "10", value = "rows") Integer rows, Model model, HttpServletRequest req) {
		String account = req.getParameter("account");
		User user = new User();
		user.setAccount(account);
		PageHelper.startPage(page, rows);
		List<User> userList = userService.queryUser(user);
		PageInfo<User> userPages = new PageInfo<User>(userList);
		if (null != userPages) {
			model.addAttribute("page", userPages);
		}
		return "/user/userManager";

	}

	/**
	 * 用户添加
	 * @param req
	 * @return
	 */
	//@RequestParam String account,@RequestParam  String name
	@RequestMapping(value="/userAdd")
	@ResponseBody
	public String userAdd(HttpServletRequest req
			/*@RequestBody User user*/ ){
		String account=req.getParameter("account");
		String name=req.getParameter("name");
		String sex=req.getParameter("sex");
		String status=req.getParameter("status");
		String orgId=req.getParameter("orgId");
		User u=new User();
		u.setAccount(account);
		u.setName(name);
		u.setOrgId(Integer.parseInt(orgId));
		u.setSex(Integer.parseInt(sex));
		u.setStatus(Integer.parseInt(status));
		userService.add(u);
		
		return "ok";
		
	}
	/**
	 * 用户修改
	 * @param req
	 * @return
	 */
	@RequestMapping(value="/userUpdate")
	@ResponseBody
	public String userUpdate(HttpServletRequest req
			 ){
		String id=req.getParameter("pid");
		String account=req.getParameter("paccount");
		String name=req.getParameter("pname");
		String sex=req.getParameter("psex");
		String status=req.getParameter("pstatus");
		String orgId=req.getParameter("porgId");
		User u=new User();
		u.setId(Integer.parseInt(id));
		u.setAccount(account);
		u.setName(name);
		u.setOrgId(Integer.parseInt(orgId));
		u.setSex(Integer.parseInt(sex));
		u.setStatus(Integer.parseInt(status));
		userService.update(u);
		
		return "ok";
		
	}
	/**
	 * 用户删除
	 * @param req
	 * @return
	 */
	@RequestMapping(value="/userDel")
	@ResponseBody
	public String userDel(HttpServletRequest req){
		String id=req.getParameter("id");
		userService.del(Integer.parseInt(id));
		return "ok";
	}
	
	
	
	
	
}
