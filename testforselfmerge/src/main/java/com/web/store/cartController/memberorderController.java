package com.web.store.cartController;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.store.cartservice.cartService;
import com.web.store.model.CartBean;
import com.web.store.model.ShopmemberBean;

@Controller
public class memberorderController {
	
	@Autowired
	cartService service;
	@RequestMapping("/memberorders")
	public String memberorders(HttpSession session) {
		ShopmemberBean smbean = (ShopmemberBean) session.getAttribute("memberbean");
		Integer shopperId = smbean.getSeqNo();
		System.out.println(shopperId);
		List<CartBean> list =service.findOrdersByMember(smbean);
		System.out.println(list+"拜託有印出來");
//		session.setAttribute("orders", list);
		return "orders";
	}
	
	
}
