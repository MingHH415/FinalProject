package com.web.model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.model.ShipmethodBean;

@Repository
public class shipmethodDAO {
	@Autowired
	SessionFactory factory;
	
	public void inserttoship(ShipmethodBean shB) {
		Session session = factory.getCurrentSession();
		session.save(shB);
	}
}
