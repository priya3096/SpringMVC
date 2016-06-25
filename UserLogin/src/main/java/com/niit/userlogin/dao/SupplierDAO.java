package com.niit.userlogin.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.userlogin.model.Supplier;

@Repository
public class SupplierDAO {
	public List<Supplier> getSuppliers()
	{
		List<Supplier> list= new ArrayList<Supplier>();
		Supplier p= new Supplier();
		p.setSupplierId("S_101");
		p.setSupplierName("BookWorld");
		p.setSupplierCity("Delhi");
		
		list.add(p);
		
		 p= new Supplier();
		p.setSupplierId("P_102");
		p.setSupplierName("Oddessey");
		p.setSupplierCity("Bangalore");
		
		list.add(p);
		
		 p= new Supplier();
		p.setSupplierId("P_103");
		p.setSupplierName("Wordsworth");
		p.setSupplierCity("Mumbai");
		
		list.add(p);
		return list;
	}

	

}
