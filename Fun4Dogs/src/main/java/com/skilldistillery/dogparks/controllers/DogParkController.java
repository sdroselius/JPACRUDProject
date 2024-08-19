package com.skilldistillery.dogparks.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.dogparks.dao.DogParkDAO;
import com.skilldistillery.dogparks.entities.DogPark;

@Controller
public class DogParkController {

	@Autowired
	private DogParkDAO parkDao;

	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		List<DogPark> allParks = parkDao.findAll();
		model.addAttribute("dogparks", allParks);
		return "home";
	}

	@RequestMapping(path = { "showPark.do" })
	public String showPark(Model model, @RequestParam("parkId") Integer parkId) {
		DogPark park = parkDao.findById(parkId);
		model.addAttribute("dogPark", park);
		return "parkDetails";
	}

}
