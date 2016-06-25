package com.niit.userlogin.dao;

import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {
	
	public boolean isValidAdmin(String adminId, String password) {
		if (adminId.equals("Priya") & password.equals("12345")) {
			return true;
		} else {
			return false;
		}
	}
}
