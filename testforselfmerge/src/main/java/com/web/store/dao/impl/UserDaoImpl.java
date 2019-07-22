package com.web.store.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.jboss.logging.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.UserDao;
import com.web.store.exception.ProductNotFoundException;
import com.web.store.model.ShopmemberBean;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired
	SessionFactory factory;

	@Override
	public ShopmemberBean findByAccount(String memberid) {
		String hql = "FROM ShopmemberBean bb WHERE bb.memberid = :memberid";
		Session session = factory.getCurrentSession();
		// getSingleResult回傳Object，如果用Bean去接要強制轉型。
		ShopmemberBean sb = (ShopmemberBean) session.createQuery(hql).setParameter("memberid", memberid)
				.getSingleResult();
		if (sb == null)
			throw new ProductNotFoundException("會員帳號: " + memberid + "找不到");
		System.out.println("daosb "+sb);
		return sb;
	}

//	@Override
//	public int getProductsmaxcount(int companyId) {
//	    String hql = "Select count(*) from ProductBean as u where u.companyId=:companyId";
//	    
//	    Session session = factory.getCurrentSession();
//	     @SuppressWarnings("rawtypes")
//		Query query=session.createQuery(hql);
//
//	     return ((Number)query.uniqueResult()).intValue();
//
//	}
	@SuppressWarnings("unchecked")
	@Override
	public List<ShopmemberBean> selectAll() {
		String hql = "FROM ShopmemberBean";
		Session session = null;
		List<ShopmemberBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public ShopmemberBean findByPK(Integer seqNo) {

		return null;
	}

	@Override
	public int saveMember(ShopmemberBean sb) {
		int n = 0;
		Session session = factory.getCurrentSession();
		session.save(sb);
		System.out.println(factory);
		n++;
		return n;
		
	}
 
	@Override
	public ShopmemberBean update(ShopmemberBean bean) {
		return null;
	}

	@Override
	public ShopmemberBean updateBasic(String password, String username, String email, String phone) {
		// TODO Auto-generated method stub
		return null;
	}

}
