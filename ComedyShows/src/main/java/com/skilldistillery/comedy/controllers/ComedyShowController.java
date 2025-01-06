package com.skilldistillery.comedy.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.comedy.data.ComedyShowDAO;

@Controller
public class ComedyShowController {
	
	@Autowired
	private ComedyShowDAO showDao;
	
	@RequestMapping(path= {"/","home.do"})
	public String home(Model model) {
		model.addAttribute("showList", showDao.findAll() );
		return "home";
	}

	@RequestMapping(path= {"getShow.do"}, method = RequestMethod.GET)
	public String getShow(Model model, @RequestParam("showId") Integer showId) {
		model.addAttribute("comedyShow", showDao.findById(showId) );
		return "show";
	}
	
}
