package com.web.store.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.store.model.AdvertiseBean;

import com.web.store.model.ProductBean;
import com.web.store.service.AdvertiseBeanService;
//import com.web.store.service.CellBeanService;
import com.web.store.service.ProductBeanService;

@Controller

public class HomeController {
	@Autowired
	ProductBeanService service;
//	@Autowired
//	CellBeanService service1;
	@Autowired
	AdvertiseBeanService service2;
	
	@RequestMapping("/welcome")
	public String welcome(Model model) {
		model.addAttribute("title", "歡迎蒞臨君雅網路商城!!!");
		model.addAttribute("subtitle", "網路上獨一無二的購物天堂");
		return "welcome";
	}

	@RequestMapping("/back")
	public String back(Model model) {
		model.addAttribute("title", "這是後台!!!");
		model.addAttribute("subtitle", "這是後台");
		return "back";
	}

//	@RequestMapping("/back2")
//	public String back2(Model model) {
//		model.addAttribute("title", "這是後台!!!");
//		model.addAttribute("subtitle", "這是後台");
//		return "back2";
//	}

	@RequestMapping("/index")
	public String index(Model model) {
		model.addAttribute("title", "");
		model.addAttribute("subtitle", "");
		return "index";
	}
	
	@RequestMapping("/backadmin")
	public String backadmin(Model model) {
		model.addAttribute("title", "");
		model.addAttribute("subtitle", "");
		return "backadmin";
	}
	@RequestMapping("/charts")
	public String charts(Model model) {
		model.addAttribute("title", "這是後台!!!");
		model.addAttribute("subtitle", "這是後台");
		return "charts";
	}
	
	

	@RequestMapping("/productupdate")
	public String list(Model model) {
		List<ProductBean> product = service.getAllProducts();
		model.addAttribute("products", product);

		return "productupdate";
	}

	@RequestMapping("/productview")
	public String getProductById(@RequestParam("id") Integer id, Model model) {
		ProductBean bb = service.getProductById(id);
		System.out.println(bb);
		model.addAttribute("product", service.getProductById(id));

//		if (bb != null) {
//			CellBean cellphone = service1.getCellphoneById(id);
//
//			model.addAttribute("cellBean", cellphone);
//			System.out.println("setcontroller: " + cellphone);
//		}

		return "productview";
	}

	@RequestMapping("/login")
	public String login(Model model) {
		return "login";
	}

	@RequestMapping("/signin")
	public String signin(Model model) {
		return "signin";
	}

}
