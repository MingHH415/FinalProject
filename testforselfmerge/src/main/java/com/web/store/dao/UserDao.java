package com.web.store.dao;

import java.util.List;

import com.web.store.model.ShopmemberBean;

public interface UserDao {
	
	public int saveMember(ShopmemberBean bean);
	public abstract List<ShopmemberBean> selectAll();
	public abstract ShopmemberBean findByPK(Integer seqNo);
	public abstract ShopmemberBean findByAccount(String memberid);
	public abstract ShopmemberBean update(ShopmemberBean bean);
	public abstract ShopmemberBean updateBasic(String password, String username, String email, String phone);
	
}
