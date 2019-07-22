package com.web.store.cartController;


import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.store.model.ProductBean;
import com.web.store.model.QaBean;
import com.web.store.model.ShopmemberBean;
import com.web.store.service.ProductBeanService;
import com.web.store.service.QaService;

@Controller
public class qacontroller {
	@Autowired
	ProductBeanService service;
	
	@Autowired 
	QaService qaservice;
	
	@RequestMapping("/askquestion")
	public String askquestion(@RequestParam(value="productId")Integer productId,
			@RequestParam(value="question")String question,
			HttpSession session,
			RedirectAttributes redirectAttributes) {
		ShopmemberBean smbean = (ShopmemberBean) session.getAttribute("memberbean");
		if (smbean==null) {
			Map<String,String> errormsg =(Map<String,String>)session.getAttribute("errormsg"); 
			if(errormsg==null) {
				errormsg=new HashMap<>(); //errormsg清空
			}
			errormsg.put("qanologin","詢問商品問題必須登入");
			session.setAttribute("errormsg", errormsg);
			redirectAttributes.addAttribute("id", productId);
			return "redirect:/product";
		}

		QaBean qabean = new QaBean();
		qabean.setpKey(smbean.getSeqNo());
		qabean.setAccount(smbean.getMemberid());
		qabean.setQuestion(question);
		Timestamp ts = new Timestamp(System.currentTimeMillis());  
		qabean.setQuestiondatetime(ts);
		qabean.setAnswer("賣家尚未回答您的問題");
		 qabean.setProductId(productId);
		 qaservice.askquestion(qabean);
		redirectAttributes.addAttribute("id", productId);
		return "redirect:/product";
	}
	
	@RequestMapping("/answerquestion")
	public String answerquestion(@RequestParam(value="productId")Integer productId,
			@RequestParam(value="qaId")Integer qaId,
			@RequestParam(value="answer")String answer,
			HttpSession session,
			RedirectAttributes redirectAttributes) {
		ShopmemberBean smbean = (ShopmemberBean) session.getAttribute("memberbean");
		if (smbean==null) {
			Map<String,String> errormsg =(Map<String,String>)session.getAttribute("errormsg"); 
			if(errormsg==null) {
				errormsg=new HashMap<>(); //errormsg清空
			}
			errormsg.put("qanologin","詢問商品問題必須登入");
			session.setAttribute("errormsg", errormsg);
			redirectAttributes.addAttribute("id", productId);
			return "redirect:/product";
		}
		System.out.println(qaId);
		QaBean qabean = qaservice.findbyqaId(qaId);
		Timestamp ts = new Timestamp(System.currentTimeMillis());  
		qabean.setAnswer(answer);
		qabean.setAnswerdatetime(ts);
		qaservice.answerquestion(qabean);
		redirectAttributes.addAttribute("id", productId);
		return "redirect:/product";
	}
}
