package com.web.store.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.web.store.dao.ImageDao;
import com.web.store.model.ImageBean;
import com.web.store.service.ImageBeanService;


@Service
public class ImageServiceImpl implements ImageBeanService {
    @Autowired
	ImageDao dao;
    @Transactional
	@Override
	public List<ImageBean> getImageList() {
		return dao.getImageList();
		
	}
    @Transactional
	@Override
	public ImageBean getProductById(int productId) {
		
		return dao.getProductById(productId);
		
	}
    @Transactional
	@Override
	public void addImage(ImageBean Image) {
		dao.addImage(Image);	
	}
}