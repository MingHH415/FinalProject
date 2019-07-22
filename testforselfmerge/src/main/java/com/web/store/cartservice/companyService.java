package com.web.store.cartservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.dao.companyDao;
import com.web.store.model.CompanyBean;

@Service
public class companyService {
	@Autowired
	companyDao cpdao;
	
	@Transactional
	public CompanyBean findBySellerId(Integer sellerId){
		return cpdao.getCompanyBeanById(sellerId);
	}
	@Transactional
	public void update(CompanyBean cpb) {
		cpdao.update(cpb);
	}
}
