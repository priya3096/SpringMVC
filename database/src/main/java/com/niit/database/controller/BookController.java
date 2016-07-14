package com.niit.database.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.database.dao.BookDAO;
import com.niit.database.model.Book;

@Controller
public class BookController {
	
	private BookDAO bookDAO;
	
	@Autowired(required=true)
	@Qualifier(value="bookDAO")
	public void setBookDAO(BookDAO bk){
		this.bookDAO = bk;
	}
	
	 @RequestMapping(value="/books", method= RequestMethod.GET)
	 public String listBooks(Model model){
		 
		 model.addAttribute("book", new Book());
		 model.addAttribute("bookList", this.bookDAO.list());
		 return "book";
	 }
	 
	 @RequestMapping(value= "/book/add", method=RequestMethod.POST)
	 public String addBook(@ModelAttribute("book") Book book){
		 
		 bookDAO.saveOrUpdate(book);
		 return "redirect:/books";
	 }
	 
	 @RequestMapping("/book/remove/{id}")
	 public String deleteBook(@PathVariable("id") String id, ModelMap model) throws Exception{
		 
		 try{
			 bookDAO.delete(id);
			 model.addAttribute("message","Successfully Deleted");
			 
		 }catch (Exception e){
			 model.addAttribute("message",e.getMessage());
			 e.printStackTrace();
		 }
		 return "redirect:/books";
	 }
	 
	 @RequestMapping("book/edit/{id}")
	 public String editBook(@PathVariable("id") String id, Model model){
		 
		 model.addAttribute("book",this.bookDAO.get(id));
		 model.addAttribute("listBooks", this.bookDAO.list());
		 return "book";
		 
	 }
	 
	 
	 
	

}
