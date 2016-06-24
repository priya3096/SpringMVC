package com.niit.cart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class PageController {
	
	@RequestMapping("/next")
	public ModelAndView display(@RequestParam(value="username")String username)
	{
		ModelAndView mv= new ModelAndView("nextpage");
		mv.addObject("welcome","welcome to the next page ");
		mv.addObject("username", username);
		return mv;
	}
	@RequestMapping("/last")
	public String display1( ModelMap Model)
	{
		Model.addAttribute("attribute","This is the last page !!");
	
		return "lastpage";	
		
	}
}

