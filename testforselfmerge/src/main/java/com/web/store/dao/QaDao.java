package com.web.store.dao;

import com.web.store.model.QaBean;

public interface QaDao {
	void questionandanswer(QaBean qb);
	void answer(QaBean qb);
	QaBean getqabeanbyId(Integer qaId);

}
