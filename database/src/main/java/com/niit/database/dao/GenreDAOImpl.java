package com.niit.database.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.database.model.Genre;

@Repository("genreDAO")
public class GenreDAOImpl implements GenreDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public GenreDAOImpl(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}
	@Transactional 
	public List<Genre> list() {
		List<Genre> listGenre = (List<Genre>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(Genre.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listGenre;
	}

	public Genre get(String id) {
		String hql = "from Genre where id=" + "'"+ id +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Genre> listGenre = (List<Genre>) query.list();
		
		if (listGenre != null && !listGenre.isEmpty()) {
			return listGenre.get(0);
		}
		return null;
	}

	public Genre getByName(String name) {
		String hql = "from Category where name=" + "'"+ name +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Genre> listGenre = (List<Genre>) query.list();
		
		if (listGenre != null && !listGenre.isEmpty()) {
			return listGenre.get(0);
		}
		return null;
	}

	public void saveOrUpdate(Genre genre) {
		sessionFactory.getCurrentSession().saveOrUpdate(genre);
		
	}

	public void delete(String id) {
		Genre GenreToDelete = new Genre();
		GenreToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(GenreToDelete);
		
	}
	
	
}
