package com.web.store.dao.impl;

import java.util.ArrayList;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.AdvertiseDao;
import com.web.store.model.AdvertiseBean;
import com.web.store.model.ProductBean;


@Repository
public class AdvertiseDaoImpl implements AdvertiseDao {
	@Autowired
    SessionFactory factory;
	@Override
	public void save(AdvertiseBean adv) {
		  Session session = factory.getCurrentSession();

		   
		    session.save(adv);	 
		
	}
	@Override
	public AdvertiseBean getAdvertiseById(int adId) {
		Session session = factory.getCurrentSession();
		AdvertiseBean bb = session.get(AdvertiseBean.class, adId);
		return bb;
	
	}

	@Override
	public List<AdvertiseBean> getAdvertiseByCompanyid(int companyId) {
				
			String hql = "select u from AdvertiseBean u where u.companyId=:companyId";
			
			Session session = factory.getCurrentSession();
			
//			List<ProductBean> cb = 
//			System.out.println("cb"+cb);

			@SuppressWarnings("unchecked")
			List<AdvertiseBean> list = session.createQuery(hql).setParameter("companyId", companyId)
	                .getResultList();
			System.out.println("list"+list);
					return list;
	
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<AdvertiseBean> getAllAdvertiseBean() {
		   String hql = "FROM AdvertiseBean";
		    Session session = null;
		    List<AdvertiseBean> list = new ArrayList<>();
		    session = factory.getCurrentSession();
		    list = session.createQuery(hql).getResultList();
		    return list;
		}
	
	
	
	 @SuppressWarnings("unchecked")
	@Override
	public List<AdvertiseBean> getTop3highCpc() {
//		 m order by m.budget desc 
		String Hql = "FROM AdvertiseBean where status=1 order by budget desc";
		Session session = factory.getCurrentSession();
	   
		List<AdvertiseBean>  list = session.createQuery(Hql).
				
	    		setFirstResult(0).setMaxResults(3).getResultList();
		
		System.out.println("top3"+list);
	
		return list;
	}
	 @Override
		public void update(AdvertiseBean ad) {
		    Session session = factory.getCurrentSession();
	
		    
		    session.update(ad);
		    System.out.println("haha1 product update" + ad);
		}

}

