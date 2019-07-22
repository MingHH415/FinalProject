package com.web.store.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.ProductDao;
import com.web.store.model.CompanyBean;
import com.web.store.model.ProductBean;
import com.web.store.service.ProductBeanService;

@Transactional
@Service
public class ProductServiceImpl implements ProductBeanService {
    @Autowired
	ProductDao dao;
    
   
	@Override
	public List<ProductBean> getAllProducts() {
		return dao.getAllProducts();
	}
    

	@Override
	public void updateAllStocks() {
    	List<ProductBean> allProducts = dao.getAllProducts();
    	for(ProductBean bb : allProducts) {
    		if (bb.getStock() != null && bb.getStock() < 50) {
    			dao.updateStock(bb.getProductId(), bb.getStock() + 50);
    		}
    	}
	}
    
	
	@Override
	public List<String> getAllCategories() {
		return dao.getAllCategories();
	}
  
	@Override
	public List<ProductBean> getProductsByCategory(String category) {
		return dao.getProductsByCategory(category);
	}
    
	
	@Override
	public ProductBean getProductById(int productId) {
		return dao.getProductById(productId);
	}
    
 
	@Override
	public void addProduct(ProductBean product) {
		dao.addProduct(product);
	}
    
  
	@Override
	public CompanyBean getCompanyById(int companyId) {
		return dao.getCompanyById(companyId);
	}
    

	@Override
	public List<CompanyBean> getCompanyList() {
		return dao.getCompanyList();
	}
    

   
	@Override
	public List<ProductBean> getProductsBytitle(String title) {
		
		return dao.getProductsBytitle(title);
	}
  
	@Override
	public void update(ProductBean product) {
	dao.update(product);
		
	}

  	@Override
  	public void save(ProductBean product,int productId) {
  	dao.update(product);
  		
  	}
  	@Transactional
    public void updateStock(int productId, int newQuantity) {
    	dao.updateStock(productId, newQuantity);
    }


	@Override
	public  List<ProductBean> getProductByCompanyid(int companyId) {
		return dao.getProductByCompanyid(companyId);
	
	}

	@Override
	public void deleteProductBean(int productId) {
		dao.deleteProductBean(productId);
		
	}


	@Override
	public ProductBean getProductBytitle(String title) {
	
		return dao.getProductBytitle(title);
	}

  	 
 
}