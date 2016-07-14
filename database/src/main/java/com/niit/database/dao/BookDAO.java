package com.niit.database.dao;
import java.util.List;

import com.niit.database.model.Book;

public interface BookDAO {
	
	public List<Book> list();
	public Book get(String id);
	public void saveOrUpdate(Book book);
	public void delete(String id);
	

}
