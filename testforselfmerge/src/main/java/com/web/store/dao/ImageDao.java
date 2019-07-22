package com.web.store.dao;

import java.util.List;

import com.web.store.model.ImageBean;

public interface ImageDao {
	ImageBean getProductById (int productId);

	void addImage(ImageBean PI);

	List<ImageBean> getImageList();




}
