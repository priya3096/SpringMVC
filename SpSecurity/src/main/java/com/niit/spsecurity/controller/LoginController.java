package com.niit.spsecurity.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
    public String login(ModelMap model) {
     
    return "login";
     
    }
    
    @RequestMapping(value="/welcome", method = RequestMethod.GET)
    public String home(ModelMap model, Principal principal ) {
     
    String name = principal.getName();
    model.addAttribute("username", name);
    return "hello";
     
    }
     
     
    @RequestMapping(value="/loginfailed", method = RequestMethod.GET)
    public String loginError(ModelMap model) {
    
    	model.addAttribute("error", "invalid");
    	return "login";
     
    }
    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logout(ModelMap model) {
    
    	return "login";
     
    }
    @RequestMapping(value="/*", method = RequestMethod.GET)
    public String home(ModelMap model) {
    
    	return "login";
     
    }
 
}
