package com.niit.database.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.database.dao.UserDAO;

import com.niit.database.model.User;


public class test {
	
	static AnnotationConfigApplicationContext context;
	
	public test()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
	}
	
	public void createUser(User user)
	{
		
		UserDAO  userDAO =  (UserDAO) context.getBean("userDAO");
		userDAO.saveOrUpdate(user);
		
		
	}
	
	

	public static void main(String[] args) {
		
		test t = new test();
		
		User user =(User)  context.getBean("user");
		user.setId("NIIT");
		user.setPassword("NIIT");
		user.setAdmin(true);
		
		
		t.createUser(user);
		
		
	}

	

}


