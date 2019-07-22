package com.web.store.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.ProductDao;
import com.web.store.model.CompanyBean;
import com.web.store.model.ProductBean;
@Repository
public class ProductDaoImpl implements ProductDao {
	@Autowired
    SessionFactory factory;
	
	@Override
	public List<ProductBean> getAllProducts() {
	    String hql = "FROM ProductBean";
	    Session session = null;
	    List<ProductBean> list = new ArrayList<>();
	    session = factory.getCurrentSession();
	    list = session.createQuery(hql).getResultList();
	    return list;
	}
	@SuppressWarnings("unused")
	@Override
	public void updateStock(int productId, int newQuantity) {
		String hql = "UPDATE ProductBean b SET b.stock = :stock WHERE ProductId = :id";
		Session session = factory.getCurrentSession();
		
		int n = session.createQuery(hql).setParameter("stock", newQuantity)
	                            .setParameter("id", productId)
	                            .executeUpdate();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<String> getAllCategories() {
	    String hql = "SELECT DISTINCT b.category FROM ProductBean b";
	    Session session = factory.getCurrentSession();
	    List<String> list = new ArrayList<>();
	    list = session.createQuery(hql).getResultList();
	    return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductBean> getProductsByCategory(String category) {
	    String hql = "FROM ProductBean bb WHERE bb.category = :category";
	    List<ProductBean> list = new ArrayList<>();
	    Session session = factory.getCurrentSession();
	    list = session.createQuery(hql).setParameter("category", category).getResultList();
	    return list;
	}
	
	@Override
	public ProductBean getProductById(int productId) {
		Session session = factory.getCurrentSession();
		ProductBean bb = session.get(ProductBean.class, productId);
	
		return bb;
	}
	
	@Override
	public void addProduct(ProductBean product) {
	    Session session = factory.getCurrentSession();
	    CompanyBean cb = product.getCompanyBean();
	    product.setCompanyBean(cb);
	    session.save(product);	    
	}	
	@Override
	public CompanyBean getCompanyById(int companyId) {
	    CompanyBean cb = null;
	    Session session = factory.getCurrentSession();
	    cb = session.get(CompanyBean.class, companyId);
	    return cb;
	}	
	@SuppressWarnings("unchecked")
	@Override
	public List<CompanyBean> getCompanyList() {
	    String hql = "FROM CompanyBean";
	    Session session = factory.getCurrentSession();
	    List<CompanyBean> list = session.createQuery(hql).getResultList();
	    return list;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ProductBean> getProductsBytitle(String title) {
	    String hql = "FROM ProductBean bb WHERE bb.title like :title";
	    List<ProductBean> list = new ArrayList<>();
	    Session session = factory.getCurrentSession();
	    list = session.createQuery(hql).setParameter("title", "%"+title+"%").getResultList();
	    return list;
	}
	@Override
	public void update(ProductBean product) {
	    Session session = factory.getCurrentSession();

	    session.update(product);
	
	}
	@Override
	public void save(ProductBean product,int productId) {
	    Session session = factory.getCurrentSession();
	    
	    System.out.println();
	    session.save(product);
	
	}
	
}
