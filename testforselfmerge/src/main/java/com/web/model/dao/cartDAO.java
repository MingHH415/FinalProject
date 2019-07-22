package com.web.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.model.CartBean;
import com.web.store.model.ShopmemberBean;
@Repository
public class cartDAO  {
	//從RootAppConfig注入
		@Autowired
		SessionFactory factory;
		
	

	public List<CartBean> getAllCarts() {
		List<CartBean> allcarts = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM CartBean z";
		allcarts = session.createQuery(hql).list();
		return null;
	}
	public List<CartBean> getAllCartsbymember(ShopmemberBean shopmemberBean) {
		List<CartBean> allcarts = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM CartBean z where z.shopmemberBean=:shopmemberBean";
		allcarts = session.createQuery(hql).setParameter("shopmemberBean", shopmemberBean).getResultList();
		return null;
	}


	public void inserttoCart(CartBean cb) {
		Session session = factory.getCurrentSession();
		session.save(cb);
	}
	
	


	
	
	
}
