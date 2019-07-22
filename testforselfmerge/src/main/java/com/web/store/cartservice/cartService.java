package com.web.store.cartservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.dao.cartDAO;
import com.web.model.dao.itemDAO;
import com.web.model.dao.shipmethodDAO;
import com.web.store.model.CartBean;
import com.web.store.model.CartItemBean;
import com.web.store.model.ShipmethodBean;
import com.web.store.model.ShopmemberBean;
@Service
public class cartService {
	@Autowired
	cartDAO cdao;
	
	@Autowired
	itemDAO idao;
	
	@Autowired
	shipmethodDAO shdao;

	@Transactional
	public void addcart(CartBean cb) {
			cdao.inserttoCart(cb);
	}
	@Transactional
	public void addcartitem(CartItemBean cib) {
		idao.inserttoCart(cib);
	}
	
	@Transactional
	public List<CartItemBean> itemexist(int productId){
		return idao.getsameproduct(productId);
	}
	
	@Transactional
	public void addtoship(ShipmethodBean shBean) {
		shdao.inserttoship(shBean);
	}
	
	@Transactional
	public List<CartBean> findOrdersByMember(ShopmemberBean shopmemberBean){
		return cdao.getAllCartsbymember(shopmemberBean);
	}
	
}
