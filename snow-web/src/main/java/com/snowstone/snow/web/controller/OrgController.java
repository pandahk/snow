package com.snowstone.snow.web.controller;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.snowstone.commons.kern.apiext.time.DateUtils;
import com.snowstone.snow.core.model.Org;
import com.snowstone.snow.core.model.Role;
import com.snowstone.snow.web.service.OrgService;
import com.snowstone.snow.web.service.RoleService;

@Controller
public class OrgController {

	@Autowired
	private OrgService orgService;
	
	@RequestMapping("/org22")
	@SuppressWarnings("all")
	public String org22(@RequestParam(defaultValue = "1", value = "page") Integer page,
			@RequestParam(defaultValue = "10", value = "rows") Integer rows, Model model, HttpServletRequest req) {
		PageHelper.startPage(page, rows);
		List<Org> orgList = orgService.selectAll();
		PageInfo<Org> orgPages = new PageInfo<Org>(orgList);
		if (null != orgPages) {
			model.addAttribute("page", orgPages);
		}
		return "/admin/org2";

	}
	@RequestMapping("/org")
	@SuppressWarnings("all")
	public String org( Model model, HttpServletRequest req) {
		List<Org> orgList = orgService.selectAll();
		if (CollectionUtils.isNotEmpty(orgList)) {
			model.addAttribute("page", JSON.toJSON(orgList));
		}
		return "/admin/org2";

	}
	@RequestMapping(value="/roleUpdate")
	@ResponseBody
	public String roleUpdate(HttpServletRequest req){
		String pId=req.getParameter("pId");
		String id=req.getParameter("id");
		String name=req.getParameter("name");
		Org org=new Org();
		org.setOrgCode(id);
        org.setOrgParentCode(pId);
        org.setOrgName(name);
        try {
			org.setUpdateTime(DateUtils.format(new Date()));
		} catch (ParseException e) {
			e.printStackTrace();
		}
        orgService.update(org);
		return "ok";
		
	}
	
	
	
	
	
}
