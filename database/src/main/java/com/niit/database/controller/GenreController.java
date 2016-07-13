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

import com.niit.database.dao.GenreDAO;
import com.niit.database.model.Genre;

@Controller
public class GenreController {

	private GenreDAO genreDAO;

	@Autowired(required = true)
	@Qualifier(value = "genreDAO")
	public void setGenreDAO(GenreDAO ps) {
		this.genreDAO = ps;
	}

	@RequestMapping(value = "/genres", method = RequestMethod.GET)
	public String listGenres(Model model) {
		model.addAttribute("genre", new Genre());
		model.addAttribute("genreList", this.genreDAO.list());
		return "genre";
	}

	// For add and update category both
	@RequestMapping(value = "/genre/add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("genre") Genre genre) {

		genreDAO.saveOrUpdate(genre);

		return "redirect:/genres";

	}

	@RequestMapping("genre/remove/{id}")
	public String deleteCategory(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			genreDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/genres";
	}

	@RequestMapping("genre/edit/{id}")
	public String editCategory(@PathVariable("id") String id, Model model) {
		System.out.println("editGenre");
		model.addAttribute("genre", this.genreDAO.get(id));
		model.addAttribute("listGenres", this.genreDAO.list());
		return "genre";
	}

}
