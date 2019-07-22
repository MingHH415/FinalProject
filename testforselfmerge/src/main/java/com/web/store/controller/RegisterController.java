package com.web.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.store.model.ShopmemberBean;
import com.web.store.service.UserService;


@Controller
public class RegisterController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public ModelAndView doAddUser1(@RequestParam(value = "memberid") String memberid,
			                      @RequestParam(value = "password") String password, 
			                      @RequestParam(value = "phone") String phone,
			                      @RequestParam(value = "email") String email,
			                      @RequestParam(value = "username") String username
			                      ) {
//		System.out.println(memberid);
//		System.out.println(password);
//		System.out.println(phone);
//		System.out.println(email);
		ShopmemberBean bean = new ShopmemberBean();
		bean.setMemberid(memberid);
		bean.setPassword(password);
		bean.setPhone(phone);
		bean.setEmail(email);
		bean.setUsername(username);
		bean.setRole("company");
		userService.saveMember(bean);
		return new ModelAndView("redirect:/login");
//		return new ModelAndView("redirect:/");
	}
	@RequestMapping(value = "/companysignin", method = RequestMethod.GET)
	public ModelAndView doAddUser(Model model) {
		
	
		return new ModelAndView("companysignin");
	}
	
	
	
	@RequestMapping(value = "/companysignin", method = RequestMethod.POST)
	public ModelAndView doAddUser(@RequestParam(value = "memberid") String memberid,
			                      @RequestParam(value = "password") String password, 
			                      @RequestParam(value = "phone") String phone,
			                      @RequestParam(value = "email") String email,
			                      @RequestParam(value = "username") String username
			                      ) {
//		System.out.println(memberid);
//		System.out.println(password);
//		System.out.println(phone);
//		System.out.println(email);
		ShopmemberBean bean = new ShopmemberBean();
		bean.setMemberid(memberid);
		bean.setPassword(password);
		bean.setPhone(phone);
		bean.setEmail(email);
		bean.setUsername(username);
		bean.setRole("user");
		userService.saveMember(bean);
		return new ModelAndView("redirect:/login");
//		return new ModelAndView("redirect:/");
	}
}
