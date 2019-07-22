package com.web.store.cartController;

import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.store.cartservice.cartService;
import com.web.store.cartservice.commentService;
import com.web.store.cartservice.companyService;
import com.web.store.model.CartBean;
import com.web.store.model.CommentBean;
import com.web.store.model.CompanyBean;

@Controller
public class commentController {
	@Autowired
	commentService service;
	@Autowired
	cartService cservice;
	@Autowired
	companyService cpservice;
	
	@RequestMapping("/comment")
	public String commentseller(@RequestParam(value="stars") Double star ,
			@RequestParam(value="comment")String comment,
			HttpSession session){
		CartBean cb =(CartBean)session.getAttribute("commentorder");	
		CompanyBean cpb = (CompanyBean)session.getAttribute("CompanyBean");
		CommentBean cmb =new CommentBean();
	
		if(service.findcommentbyorder(cb).size()==0) {
			cmb.setCartBean(cb);
			cmb.setId(cpb.getId());
			cmb.setComment(comment);
			cmb.setRanking(star);
			Timestamp ts = new Timestamp(System.currentTimeMillis());  
			cmb.setCommenttime(ts);
			service.comment(cmb);
			cb.setCommentBean(cmb);
			cservice.update(cb);
			if(service.average(cpb.getId())>=4){
				cpb.setLevel("優秀賣家");
			}else if(service.average(cpb.getId())>=2) {
				cpb.setLevel("普通賣家");
			}else {
				cpb.setLevel("無星賣家");
			}
			cpservice.update(cpb);
			return "index";
		}
		return "index";
	}
	
	@RequestMapping(value = "/viewcomment", method = RequestMethod.GET)
	public String viewsellercomment(@RequestParam(value="sellerId") Integer sellerId,Model model) {
		List<CommentBean> list =service.commentofseller(sellerId);
		CompanyBean cpb =cpservice.findBySellerId(sellerId);
		Double stars=service.average(sellerId);
		model.addAttribute("comments",list);
		model.addAttribute("company",cpb);
		model.addAttribute("Stars",stars);
		return"viewallcomment";
	}
}
