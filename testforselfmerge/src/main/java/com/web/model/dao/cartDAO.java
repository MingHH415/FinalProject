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
		Session session = factory.getCurrentSession();
		String hql = "FROM CartBean z where z.shopmemberBean=:shopmemberBean";
		List<CartBean> allcarts = session.createQuery(hql).setParameter("shopmemberBean", shopmemberBean).getResultList();
		return allcarts;
	}

	public CartBean getCartBeanByCartId(Integer cartID) {
		CartBean cb = null;
		Session session =factory.getCurrentSession();
		String hql = "FROM CartBean cb where cb.cartID=:cartID";
		cb = (CartBean)session.createQuery(hql).setParameter("cartID",cartID).getSingleResult();
		return cb;
	}
	
	public void inserttoCart(CartBean cb) {
		Session session = factory.getCurrentSession();
		session.save(cb);
	}
	
	public void update(CartBean cb) {
		Session session = factory.getCurrentSession();
		session.update(cb);
	}
	


	
	
	
}
