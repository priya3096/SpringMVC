package com.niit.userlogin.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.userlogin.dao.SupplierDAO;
import com.niit.userlogin.model.Supplier;

@Controller
public class SupplierContoller {
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping("/getSuppliers")
	public ModelAndView showSupplier() {
		List<Supplier> supplierList = supplierDAO.getSuppliers();
		ModelAndView mv = new ModelAndView("/supplierspage");
		mv.addObject("supplierList", supplierList);
		return mv;
	}
	
}
