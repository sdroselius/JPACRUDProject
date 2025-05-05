package com.skilldistillery.goodbugs.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.goodbugs.data.InsectDAO;
import com.skilldistillery.goodbugs.entities.BeneficialInsect;

@Controller
public class InsectController {
	
	@Autowired
	private InsectDAO bugDao;
	
	@RequestMapping(path={"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("bugList", bugDao.findAll());
		return "home";
	}

	@RequestMapping(path={"getBug.do"})
	public String showBug(Model model, @RequestParam("bugId") Integer bugId) {
		model.addAttribute("bug", bugDao.findById(bugId));
		return "bugDetails";
	}
	
	@GetMapping("addBug.do")
	public String goToAddBug() {
		return "bugEdit";
	}
	
	@PostMapping("addBug.do")
	public String addBug(Model model, BeneficialInsect newBug) {
		BeneficialInsect addedBug = bugDao.addBug(newBug);
		model.addAttribute("bug", addedBug);
		return "redirect:getBug.do?bugId=" + addedBug.getId();
	}
	
	@GetMapping("editBug.do")
	public String goToUpdateBug(Model model, @RequestParam("bugId") Integer bugId) {
		BeneficialInsect bugToEdit = bugDao.findById(bugId);
		model.addAttribute("bug", bugToEdit);
		return "bugEdit";
	}
	
	@PostMapping("editBug.do")
	public String updateBug(Model model, @RequestParam("bugId") Integer bugId, BeneficialInsect updatingBug) {
		BeneficialInsect updatedBug = bugDao.updateBug(bugId, updatingBug);
		model.addAttribute("bug", updatedBug);
		return "redirect:getBug.do?bugId=" + bugId;
	}
	
	@RequestMapping("deleteBug.do")
	public String deleteBug(@RequestParam("bugId") Integer bugId) {
		bugDao.deleteBug(bugId);
		return "redirect:home.do";
	}
}
