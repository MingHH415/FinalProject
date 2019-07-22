package com.web.store.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.ProductDao;
import com.web.store.model.CompanyBean;
import com.web.store.model.ProductBean;
import com.web.store.service.ProductBeanService;


@Service
public class ProductServiceImpl implements ProductBeanService {
    @Autowired
	ProductDao dao;

    @Transactional
	@Override
	public List<ProductBean> getAllProducts() {
		return dao.getAllProducts();
	}
    
    @Transactional
	@Override
	public void updateAllStocks() {
    	List<ProductBean> allProducts = dao.getAllProducts();
    	for(ProductBean bb : allProducts) {
    		if (bb.getStock() != null && bb.getStock() < 50) {
    			dao.updateStock(bb.getProductId(), bb.getStock() + 50);
    		}
    	}
	}
    
    @Transactional
	@Override
	public List<String> getAllCategories() {
		return dao.getAllCategories();
	}
    @Transactional
	@Override
	public List<ProductBean> getProductsByCategory(String category) {
		return dao.getProductsByCategory(category);
	}
    
    @Transactional
	@Override
	public ProductBean getProductById(int productId) {
		return dao.getProductById(productId);
	}
    
    @Transactional
	@Override
	public void addProduct(ProductBean product) {
		dao.addProduct(product);
	}
    
    @Transactional
	@Override
	public CompanyBean getCompanyById(int companyId) {
		return dao.getCompanyById(companyId);
	}
    
    @Transactional
	@Override
	public List<CompanyBean> getCompanyList() {
		return dao.getCompanyList();
	}
    

    @Transactional
	@Override
	public List<ProductBean> getProductsBytitle(String title) {
		
		return dao.getProductsBytitle(title);
	}
    @Transactional
	@Override
	public void update(ProductBean product) {
	dao.update(product);
		
	}
    @Transactional
  	@Override
  	public void save(ProductBean product,int productId) {
  	dao.update(product);
  	}
    @Transactional
  	@Override
     public void updateStock(int productId, int newQuantity) {
     	dao.updateStock(productId, newQuantity);
     } 
  	 
 
}