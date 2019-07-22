package com.web.store.dao;

import java.util.List;



import com.web.store.model.CompanyBean;
import com.web.store.model.ProductBean;

public interface ProductDao {
	List<ProductBean>  getAllProducts(); 

	void updateStock(int productId, int newQuantity);

	List<String>  getAllCategories();
	List<ProductBean>  getProductsByCategory(String category);
	List<ProductBean> getProductByCompanyid(int companyId) ;
	public ProductBean getProductById(int productId);
	void update(ProductBean product );
	void save(ProductBean product,int productId);
	void  addProduct(ProductBean product );
	CompanyBean  getCompanyById(int companyId);
	List<CompanyBean>  getCompanyList();
	List<ProductBean>  getProductsBytitle(String title);
	public ProductBean  getProductBytitle(String title);
	List<ProductBean>  getAllProductsByPages(int pageid, int total);
	public void deleteProductBean(int productId);
}
