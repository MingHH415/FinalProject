package com.web.store.service;



import java.util.List;


import com.web.store.model.ImageBean;



public interface ImageBeanService {
	List<ImageBean>  getImageList();
	
	
	public ImageBean getProductById(int productId);
	
	void  addImage(ImageBean Image);


}
