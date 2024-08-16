package com.skilldistillery.dogparks.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.dogparks.dao.DogParkDAO;

import ch.qos.logback.core.model.Model;

@Controller
public class DogParkController {
	
	@Autowired
	private DogParkDAO parkDao;
	
	@RequestMapping(path = {"/","home.do"})
	public String home(Model model) {
		return "home";
	}

}
