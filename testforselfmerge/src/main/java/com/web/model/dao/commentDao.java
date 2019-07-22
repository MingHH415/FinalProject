package com.web.model.dao;

import java.text.DecimalFormat;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.model.CartBean;
import com.web.store.model.CommentBean;

@Repository
public class commentDao {
	@Autowired
	SessionFactory factory;
	
	
	public void insertcommentBean(CommentBean cb) {
		Session session = factory.getCurrentSession();
		session.save(cb);
	}
	public List<CommentBean> findcommentbyorder(CartBean cartBean) {
		Session session = factory.getCurrentSession();
		String hql = "FROM CommentBean z where z.cartBean=:cartBean";
		List<CommentBean> comment = session.createQuery(hql).setParameter("cartBean", cartBean).getResultList();
		return comment;
	}
	
	public List<CommentBean> findcommentbysellerid(Integer id){
		Session session = factory.getCurrentSession();
		String hql = "FROM CommentBean z where z.id=:id";
		List<CommentBean> commentofseller = session.createQuery(hql).setParameter("id", id).getResultList();
		return commentofseller;
	}
	public Double average(Integer id) {
		Session session = factory.getCurrentSession();
		String hql="select avg(z.ranking) FROM CommentBean z where z.id=:id";
		Double average =(Double)session.createQuery(hql).setParameter("id", id).uniqueResult();
		return average;
	}
	public void remove(CommentBean cb) {
		Session session = factory.getCurrentSession();
		session.remove(cb);
	}

}
