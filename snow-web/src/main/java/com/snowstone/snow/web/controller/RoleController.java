package com.snowstone.snow.web.controller;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.snowstone.commons.kern.apiext.time.DateUtils;
import com.snowstone.snow.core.model.Role;
import com.snowstone.snow.web.service.RoleService;

@Controller
public class RoleController {

	@Autowired
	private RoleService roleService;
	
	@RequestMapping("/role")
	@SuppressWarnings("all")
	public String userManager(@RequestParam(defaultValue = "1", value = "page") Integer page,
			@RequestParam(defaultValue = "10", value = "rows") Integer rows, Model model, HttpServletRequest req) {
		PageHelper.startPage(page, rows);
		List<Role> roleList = roleService.selectAll();
		PageInfo<Role> rolePages = new PageInfo<Role>(roleList);
		if (null != rolePages) {
			model.addAttribute("page", rolePages);
		}
		return "/admin/role";

	}
	
	
	@RequestMapping(value="/roleAdd")
	@ResponseBody
	public String userAdd(HttpServletRequest req
			 ){
		String roleCode=req.getParameter("roleCode");
		String roleName=req.getParameter("roleName");
		String status=req.getParameter("status");
		Role r=new Role();
		r.setRoleCode(roleCode);
		r.setRoleName(roleName);
		r.setStatus(Integer.parseInt(status));
		try {
			r.setCreateTime(DateUtils.format(new Date()));
			r.setUpdateTime(DateUtils.format(new Date()));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		roleService.add(r);
		
		return "ok";
		
	}
	@RequestMapping(value="/roleUp")
	@ResponseBody
	public String roleUp(HttpServletRequest req){
		String id=req.getParameter("pid");
		String roleCode=req.getParameter("proleCode");
		String roleName=req.getParameter("proleName");
		String status=req.getParameter("pstatus");
		Role r=new Role();
		r.setId(Integer.parseInt(id));
		r.setRoleCode(roleCode);
		r.setRoleName(roleName);
		r.setStatus(Integer.parseInt(status));
		try {
//			r.setCreateTime(DateUtils.format(new Date()));
			r.setUpdateTime(DateUtils.format(new Date()));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		roleService.update(r);
		
		return "ok";
		
	}
	
	@RequestMapping(value="/roleDel")
	@ResponseBody
	public String userDel(HttpServletRequest req){
		String id=req.getParameter("id");
		roleService.del(Integer.parseInt(id));
		return "ok";
	}
	
	
	
	
	
	
	
}
