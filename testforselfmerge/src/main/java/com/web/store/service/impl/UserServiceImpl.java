package com.web.store.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.model.ShopmemberBean;
import com.web.store.dao.UserDao;
import com.web.store.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	
	@Override
	public ShopmemberBean login(String memberid, String password) {
		ShopmemberBean bean = userDao.findByAccount(memberid);
		if(bean!=null && password.length()!=0) {
			if(bean.getPassword().equals(password)) {
				return bean;
			}
		}
		return null;
	}
	
//	public ShopmemberBean register(ShopmemberBean bean) {
//		ShopmemberBean result = null;
//		if(bean!=null) {
//			result = userDao.addMember(bean);
//		}
//		return result;
//	}

	
	public ShopmemberBean findByAccount(String memberid) {
		
		return userDao.findByAccount(memberid);
	}

	@Override
	public int saveMember(ShopmemberBean sb) {
		int count = 0;

		userDao.saveMember(sb);
		count++;

		return count;
	}

}
