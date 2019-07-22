package com.web.store.service;

import com.web.store.model.ShopmemberBean;

public interface UserService {
	
	public ShopmemberBean findByAccount(String memberid);
	public ShopmemberBean login(String memberid, String password);
	int saveMember(ShopmemberBean sb);
	
//	public int getProductsmaxcount(int compandyId);
}
