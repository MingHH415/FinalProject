package com.web.store.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.QaDao;
import com.web.store.model.CartBean;
import com.web.store.model.ProductBean;
import com.web.store.model.QaBean;
@Repository
public class QaDaoimpl implements QaDao {
	@Autowired
    SessionFactory factory;
	@Override
	public void questionandanswer(QaBean qb) {
		Session session = factory.getCurrentSession();		
		session.save(qb);
	}
	public void answer(QaBean qb) {
		Session session = factory.getCurrentSession();		
		session.update(qb);
	}
	@Override
	public QaBean getqabeanbyId(Integer qaId) {
		Session session = factory.getCurrentSession();
		String hql ="FROM QaBean qb WHERE qb.qaId=:qaId";
		QaBean qb = (QaBean) session.createQuery(hql).setParameter("qaId", qaId).getSingleResult();
		return qb;
	}
	
}
