package com.niit.database.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {
	
	@RequestMapping(value = "/userregister")
	public ModelAndView getregistered(Model model) {
		
		ModelAndView mv ;
		System.out.println("register...");
		mv = new ModelAndView("register");
		return mv;
	}
	
}
