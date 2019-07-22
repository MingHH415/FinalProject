package com.web.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.model.CartBean;
import com.web.store.model.CompanyBean;

@Repository
public class companyDao {
	@Autowired
	SessionFactory factory;
	public CompanyBean getCompanyBeanById(Integer sellerId) {
		Session session = factory.getCurrentSession();
		String hql = "FROM CompanyBean z where z.id=:id";
		CompanyBean companyb = (CompanyBean) session.createQuery(hql).setParameter("id", sellerId).getSingleResult();
		return companyb;
	}
	
	public void update(CompanyBean cpb) {
		Session session = factory.getCurrentSession();
		session.update(cpb);
	}

}
