package com.web.store.cartservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.dao.commentDao;
import com.web.store.model.CartBean;
import com.web.store.model.CommentBean;

@Service
public class commentService {
	@Autowired
	commentDao cmdao;
	@Transactional
	public void comment(CommentBean cb) {
		cmdao.insertcommentBean(cb);
	}
	@Transactional
	public List<CommentBean> findcommentbyorder(CartBean cb) {
		return cmdao.findcommentbyorder(cb);
	}
	@Transactional
	public List<CommentBean> commentofseller(Integer id) {
		return cmdao.findcommentbysellerid(id);
	}
	@Transactional
	public Double average(Integer id) {
		return cmdao.average(id);
	}
	@Transactional
	public void remove(CommentBean cb) {
		cmdao.remove(cb);
	}
}
