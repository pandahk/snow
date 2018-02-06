package com.snowstone.snow.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.snowstone.snow.core.model.DictionaryGroup;
import com.snowstone.snow.core.model.DictionaryItem;
import com.snowstone.snow.core.model.User;
import com.snowstone.snow.web.service.DicService;

@Controller
public class DictionaryController {

	@Autowired
	private DicService dicService;
	
	
	
	@RequestMapping("/dic")
	public String dicPage(@RequestParam(defaultValue = "1", value = "page") Integer page,
			@RequestParam(defaultValue = "10", value = "rows") Integer rows, 
			Model model, HttpServletRequest req){
		
		List<DictionaryGroup> glist=dicService.gselectAll();
		model.addAttribute("glist", glist);
		List<DictionaryItem>  ilist=dicService.iselectAll();
		PageHelper.startPage(page, rows);
		PageInfo<DictionaryItem> itemPages = new PageInfo<DictionaryItem>(ilist);
		if (null != itemPages) {
			model.addAttribute("page", itemPages);
		}
		return "/admin/dic";
	}
	
}
