package com.web.store.dao;

import java.util.List;

import com.web.store.model.AdvertiseBean;
import com.web.store.model.CompanyBean;
import com.web.store.model.ProductBean;


public interface AdvertiseDao {
	
	public void save(AdvertiseBean adv) ;
	AdvertiseBean  getAdvertiseById(int adId);
	List<AdvertiseBean> getAdvertiseByCompanyid(int companyId) ;
	List<AdvertiseBean>  getAllAdvertiseBean(); 
	public List<AdvertiseBean> getTop3highCpc();
	
	void update(AdvertiseBean adv);
}
