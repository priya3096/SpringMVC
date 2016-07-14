package com.niit.database.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.validation.BindException;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.database.dao.UserDAO;


@Controller
public class UserController {
	@Autowired
	UserDAO userDAO;

	@RequestMapping("/isValidUser")
	public ModelAndView isValidUser(@RequestParam(value = "name") String name,
			@RequestParam(value = "password") String password) {
		System.out.println("controller");
		System.out.println("");
		String message;
		ModelAndView mv;
		if (userDAO.isValidUser(name, password, true)) {
			System.out.println("in controller");
			message = "";
			mv = new ModelAndView("adminpage");
		} else {
			message = "Invalid credentials :(";
			mv = new ModelAndView("login");
		}

		mv.addObject("message", message);
		mv.addObject("name", name);
		return mv;

	}
	@Controller
	public class FileUploadController {

		/**
		 * Upload single file using Spring Controller
		 */
		@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
		public @ResponseBody ModelAndView handleFileUpload(
	            @RequestParam("file") MultipartFile file){
	        String name = file.getOriginalFilename();
	       String path = "C:/Users/Manoj/Documents/GitHub/Practice-java/database/src/main/resources/images";
	       String message;
	       ModelAndView mvv;
	        if (!file.isEmpty()) {
	            try {
	            	
	            	File imgDirectory = new File(path);
	            	if(!imgDirectory.exists())
	            	{
	            		imgDirectory.mkdir();
	            	}
	            	
	                byte[] bytes = file.getBytes();
	                BufferedOutputStream stream =
	                        new BufferedOutputStream(new FileOutputStream(new File(path+"\\"+name)));
	                stream.write(bytes);
	                stream.close();
	                System.out.println( "You successfully uploaded " + name + " into the resources folder !");
	                message="You successfully uploaded " + name + " into resources folder !";
	                
	            } catch (Exception e) {
	            	System.out.println( "You failed to upload " + name + " => " + e.getMessage());
	            	message="You failed to upload " + name + " => " + e.getMessage();
	            }
	        } else {
	        	System.out.println( "You failed to upload " + name + " because the file was empty.");
	        	message="You failed to upload " + name + " because the file was empty.";
	        }
	        mvv = new ModelAndView("adminpage");
	        mvv.addObject("message",message);
	        return mvv;
	    }
	}
}
