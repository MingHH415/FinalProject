package com.web.store.service;

import com.web.store.model.QaBean;

public interface QaService {
	void askquestion(QaBean qb);
	void answerquestion(QaBean qb);
	QaBean findbyqaId(Integer qaId);
}
