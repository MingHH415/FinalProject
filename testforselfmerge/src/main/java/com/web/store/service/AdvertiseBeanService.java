package com.web.store.service;

import java.util.List;

import com.web.store.model.AdvertiseBean;
import com.web.store.model.ProductBean;


public interface AdvertiseBeanService {

	public void save(AdvertiseBean adv);
	public List<AdvertiseBean> getAdvertiseByCompanyid(int companyId);
	List<AdvertiseBean> getAllAdvertiseBean();
	public List<AdvertiseBean> getTop3highCpc();
	AdvertiseBean  getAdvertiseById(int adId);
	void update(AdvertiseBean adv);
}
