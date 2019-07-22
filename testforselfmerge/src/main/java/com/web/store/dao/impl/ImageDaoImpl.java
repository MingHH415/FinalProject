package com.web.store.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.ImageDao;
import com.web.store.model.ImageBean;


@Repository
public class ImageDaoImpl implements ImageDao {
	@Autowired
	SessionFactory factory;

	@Override
	public void addImage(ImageBean PI) {
		Session session = factory.getCurrentSession();
		System.out.println("dao" + PI);
		
		session.update(PI);
	}

	@Override
	public ImageBean getProductById(int productId) {
//		System.out.println(productId);
//			
//		String hql = "FROM ImageBean PI WHERE PI.productId = :productId";
//		Session session = factory.getCurrentSession();
////		ImageBean bb = session.get(ImageBean.class, productId);
//		ImageBean PI =(ImageBean) session.createQuery(hql).setParameter("productId", productId).getSingleResult();
//		System.out.println("db "+PI);
//		return PI;
		Session session = factory.getCurrentSession();
		ImageBean PI = session.get(ImageBean.class, productId);
	
		return PI;
	}

	@Override
	public List<ImageBean> getImageList() {
		return null;
	}
}
