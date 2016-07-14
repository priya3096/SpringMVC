package com.niit.database.dao;
import com.niit.database.model.Book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

@Repository("bookDAO")
public class BookDAOImpl implements BookDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public BookDAOImpl(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public List<Book> list() {

		List<Book> listBook = (List<Book>) sessionFactory.getCurrentSession().createCriteria(Book.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listBook;
	}
	
	@Transactional
	public void saveOrUpdate(Book book){
		sessionFactory.getCurrentSession().saveOrUpdate(book);
	}
	
	@Transactional
	public void delete(String id){
		Book BookToDelete = new Book();
		BookToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(BookToDelete);	
	}
	
	@Transactional
	public Book get(String id){
		String hql="from Book where id="+"'"+id+"'"; //
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Book> listBook = (List<Book>) query.list();
		
		if(listBook != null && !listBook.isEmpty()){
			return listBook.get(0);
		}
		return null;		
	}
	
	
}
