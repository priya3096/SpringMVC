package com.niit.userlogin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.userlogin.dao.ProductDAO;
import com.niit.userlogin.model.Product;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping("/getProducts")
	public ModelAndView showProduct() {
		List<Product> productlist = productDAO.getProducts();
		ModelAndView mv = new ModelAndView("/productspage");
		mv.addObject("productlist", productlist);
		return mv;
	}
}
