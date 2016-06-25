package com.niit.userlogin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.userlogin.dao.AdminDAO;

@Controller
public class UserController {
	
	@Autowired
	AdminDAO adminDAO;
	@RequestMapping("/isValidUser")
	public ModelAndView show( @RequestParam(value="name")String name, @RequestParam(value="password")String password)
	{
		ModelAndView mv;
		String message;
		if(adminDAO.isValidAdmin(name, password))
		{
			message="Valid";
			mv= new ModelAndView("/adminPage");			
		}
		else
		{
			message="Invalid credentials";
			mv= new ModelAndView("/loginPage");		
		}
		System.out.println("in controller");
		mv.addObject("message",message);
		mv.addObject("name", name);
		return mv;		
	}
}
