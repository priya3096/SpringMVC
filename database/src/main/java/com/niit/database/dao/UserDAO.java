package com.niit.database.dao;

import java.util.List;
import com.niit.database.model.User;
import com.niit.database.model.UserDetails;

public interface UserDAO {
	
	public List<User> list();
	public User get(String id);
	public void saveOrUpdate(User user);
	public void delete(String id);
	public void saveOrUpdate(UserDetails userDetails);
	public boolean isValidUser(String id, String password, boolean isAdmin);
	

}
 