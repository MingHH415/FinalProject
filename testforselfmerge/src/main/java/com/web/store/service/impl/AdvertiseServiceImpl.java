package com.web.store.service.impl;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.AdvertiseDao;

import com.web.store.model.AdvertiseBean;
import com.web.store.model.ProductBean;
import com.web.store.service.AdvertiseBeanService;


@Transactional
@Service
public class AdvertiseServiceImpl implements AdvertiseBeanService {
    @Autowired
	AdvertiseDao dao;

	@Override
	public void save(AdvertiseBean adv) {
		dao.save(adv);
		
	}

	@Override
	public List<AdvertiseBean> getAdvertiseByCompanyid(int companyId) {
		
		return dao.getAdvertiseByCompanyid(companyId);
	}
	@Override
	public List<AdvertiseBean> getAllAdvertiseBean() {
	
		return dao.getAllAdvertiseBean();
	}

	@Override
	public List<AdvertiseBean> getTop3highCpc() {
		
		return dao.getTop3highCpc();
	}

	@Override
	public AdvertiseBean getAdvertiseById(int adId) {
		// TODO Auto-generated method stub
		return dao.getAdvertiseById(adId);
	}

	@Override
	public void update(AdvertiseBean adv) {
		dao.update(adv);
		
	}


    
   
 
}