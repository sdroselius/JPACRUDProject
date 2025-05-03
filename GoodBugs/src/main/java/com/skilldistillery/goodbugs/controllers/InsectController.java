package com.skilldistillery.goodbugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.goodbugs.data.InsectDAO;

@Controller
public class InsectController {
	
	@Autowired
	private InsectDAO bugDao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("bugList", bugDao.findAll());
		return "home";
	}

	@RequestMapping(path= {"getBug.do"})
	public String showBug(Model model, @RequestParam("bugId") Integer bugId) {
		model.addAttribute("bug", bugDao.findById(bugId));
		return "bugDetails";
	}
	
}
