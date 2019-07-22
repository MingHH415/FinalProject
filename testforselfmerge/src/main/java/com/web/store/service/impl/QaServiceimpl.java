package com.web.store.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.QaDao;
import com.web.store.model.QaBean;
import com.web.store.service.QaService;
@Service
public class QaServiceimpl implements QaService {
	@Autowired
	QaDao qdao;
	
	@Transactional
	@Override
	public void askquestion(QaBean qb) {
		qdao.questionandanswer(qb);
	}
	@Transactional
	@Override
	public void answerquestion(QaBean qb) {
		qdao.answer(qb);
	}
	@Transactional
	@Override
	public QaBean findbyqaId(Integer qaId) {
		return qdao.getqabeanbyId(qaId);
	}

}
