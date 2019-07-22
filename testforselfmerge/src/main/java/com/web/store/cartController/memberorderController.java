package com.web.store.cartController;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.store.cartservice.cartService;
import com.web.store.cartservice.companyService;
import com.web.store.model.CartBean;
import com.web.store.model.CartItemBean;
import com.web.store.model.CompanyBean;
import com.web.store.model.ShopmemberBean;

@Controller
public class memberorderController {
	
	@Autowired
	cartService service;
	@Autowired
	companyService cpservice;
	@RequestMapping("/memberorders")
	public String memberorders(HttpSession session) {
		ShopmemberBean smbean = (ShopmemberBean) session.getAttribute("memberbean");
		Integer shopperId = smbean.getSeqNo();
		System.out.println(shopperId);
		List<CartBean> list =service.findOrdersByMember(smbean);
		session.setAttribute("orders", list);
		return "orders";
	}
	@RequestMapping(value="/membercheckdetail")
	public String memberCheckDetail(@RequestParam(value="orderId") Integer orderId,HttpSession session,Model model) {
		CartBean cb = service.getCartBeanByCartId(orderId);
		List<CartItemBean> list =service.getOrderItems(cb);
		model.addAttribute("thisorder",cb);
		model.addAttribute("allitem",list);
		return "orderdetail";
	}
	@RequestMapping(value="/received")
	public String checkreceived(@RequestParam(value="orderId") Integer orderId,HttpSession session) {	
		CartBean cb = service.getCartBeanByCartId(orderId);
		cb.setStatus("已收貨");
		service.update(cb);
		ShopmemberBean smbean = (ShopmemberBean) session.getAttribute("memberbean");
		Integer shopperId = smbean.getSeqNo();
		System.out.println(shopperId);
		List<CartBean> list =service.findOrdersByMember(smbean);
		System.out.println(list);
		session.setAttribute("orders", list);
		return "orders";
	}
	@RequestMapping(value="/commentseller")
	public String comment(@RequestParam(value="orderId") Integer orderId,HttpSession session) {
		CartBean cb = service.getCartBeanByCartId(orderId);
		Integer sellerId =Integer.parseInt(cb.getSeller());
		CompanyBean cpb = cpservice.findBySellerId(sellerId);
		session.setAttribute("commentorder",cb);
		session.setAttribute("CompanyBean", cpb);
		return "comment";
	}
	
	
}
