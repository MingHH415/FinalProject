package com.web.store.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.web.store.model.ProductBean;
import com.web.store.model.ShopmemberBean;
import com.web.store.service.ProductBeanService;
import com.web.store.service.UserService;

@Controller
@SessionAttributes("memberid")  
public class LoginController {

	@Autowired
	ServletContext context;
	
	@Autowired
	UserService userService;
	@Autowired
	ProductBeanService Service;
	
//	@SessionAttributes("user")
//	public class LoginController1 {
//
//		@ModelAttribute("user")
//		public ShopmemberBean setUpUserForm() {
//			return new ShopmemberBean();
//		}
//	}
//	@GetMapping("/back2")
//	public String userInfo(@SessionAttribute("shopmemberBean") ShopmemberBean shopmemberBean) {
//		//...
//		//...
//		return "back2";
//	}	
	
	
	@RequestMapping("/login1") // 載入需要的jsp畫面
	public String login(String memberid, String password, Model model, ModelMap map,HttpSession session) {
		HashMap<String, String> errorMsgMap = new HashMap<String, String>();
		model.addAttribute("ErrorMsgKey", errorMsgMap);

		ShopmemberBean sb = userService.login(memberid, password);
		System.out.println(sb);
		if (sb.getMemberid() == null || sb.getMemberid().trim().length() == 0) {
			errorMsgMap.put("AccountEmptyError", "帳號欄必須輸入");
		}

		if (sb.getPassword() == null || sb.getPassword().trim().length() == 0) {
			errorMsgMap.put("PasswordEmptyError", "密碼欄必須輸入");
		}
		String userid=sb.getMemberid();
		
		map.addAttribute("session", memberid);
		model.addAttribute("login", sb);
		session.setAttribute("memberbean",userid);
		System.out.println("sessionkey"+session);

		return "redirect:/back2";// redirect重新整理跳轉指定頁面:welcome
	}


	
	
	@RequestMapping("/back2")
	public String getsession(HttpSession session,Model model)
	{
	Object name = session.getAttribute("memberbean");
	ShopmemberBean info1=userService.findByAccount(name.toString());
	int comapnyId=info1.getSeqNo();
	List<ProductBean> ff=(Service.getProductByCompanyid(comapnyId));
	int findlist=ff.size();
//	int maxno=userService.getProductsmaxcount(comapnyId);
//	System.out.println("maxno "+maxno);
	System.out.println(findlist);
	model.addAttribute("productqty", findlist);
	model.addAttribute("member", info1);
	return "/back2";
	} 



}
