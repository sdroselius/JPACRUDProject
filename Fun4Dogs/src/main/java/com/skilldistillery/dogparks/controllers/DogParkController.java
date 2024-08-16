package com.skilldistillery.dogparks.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.dogparks.dao.DogParkDAO;
import com.skilldistillery.dogparks.entities.DogPark;

@Controller
public class DogParkController {
	
	@Autowired
	private DogParkDAO parkDao;
	
	@RequestMapping(path = {"/","home.do"})
	public String home(Model model) {
		List<DogPark> allParks = parkDao.findAll();
		model.addAttribute("dogparks", allParks);
		return "home";
	}

}
