package com.niit.database.dao;

import java.util.List;

import com.niit.database.model.Genre;

public interface GenreDAO {
	
	public List<Genre> list();
	public Genre get(String id);
	public Genre getByName(String name);
	public void saveOrUpdate(Genre genre);
	public void delete(String id);
	

}
