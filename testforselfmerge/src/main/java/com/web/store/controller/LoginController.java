package com.web.store.controller;

import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.web.store.model.ShopmemberBean;
import com.web.store.service.UserService;

@Controller
@SessionAttributes("memberid")  
public class LoginController {

	@Autowired
	ServletContext context;
	
	@Autowired
	UserService userService;

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
		map.addAttribute("session", memberid);
		model.addAttribute("login", sb);
		session.setAttribute("memberbean",sb);
		return "index";// redirect重新整理跳轉指定頁面:welcome
	}

}
