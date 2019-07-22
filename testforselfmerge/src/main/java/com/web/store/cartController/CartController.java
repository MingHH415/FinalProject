package com.web.store.cartController;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.store.cartservice.cartService;
import com.web.store.model.CartBean;
import com.web.store.model.CartItemBean;
import com.web.store.model.ProductBean;
import com.web.store.service.ProductBeanService;


@Controller
public class CartController {
	
	@Autowired
	ProductBeanService service;

	@Autowired
	cartService service2;
	
	@Autowired
	ServletContext context;
	
//	@RequestMapping(value="/addtocart",method=RequestMethod.GET)
//	public String addtocartnewform(Model model,@RequestParam(value="productiId") String productId,RedirectAttributes redirectAttributes) {
//		CartItemBean cib = new CartItemBean();
//		model.addAttribute("CartItemBean",cib);
//		redirectAttributes.addAttribute("id", productId);
//		return "redirect:/product";
//	}
	@RequestMapping(value="/addtocart",method=RequestMethod.POST)
	public String addtocart(@RequestParam(value="productId")Integer productId,
			@RequestParam(value="price")Float price,
			@RequestParam(value="quantity", defaultValue="1") int quantity,
			@RequestParam(value="position") int position ,
			RedirectAttributes redirectAttributes,Model model,HttpSession session) {
		ProductBean pb =service.getProductById(productId);
		String seller= pb.getCompanyBean().getId().toString();
		Map<String,CartBean> mapcartbean = (Map<String, CartBean>) session.getAttribute("shopCart");
		if(mapcartbean==null) {
			mapcartbean =new HashMap<String,CartBean>();
			session.setAttribute("shopCart", mapcartbean);
		}	
		CartBean cart = null;
		if(mapcartbean.get(seller)==null) {
			cart  = new CartBean();
		}else {
			cart = mapcartbean.get(seller);
		}
		
		//使用productid找出productBean
		//新建Cartitembean
		CartItemBean cib = new CartItemBean();
		//資料轉型
		int intprice =Math.round(price);
		//使用productId作為key,塞入value = Cartitembean
		Map<String,CartItemBean> thecart =cart.getCartitemmap();
		//如果cart中有該product則設定數量+1
		//cart.getCartitemmap().containsKey(productId.toString())==true
		if (thecart.containsKey(productId.toString())==true){			
			quantity = thecart.get(productId.toString()).getQuantity()+quantity;
			thecart.get(productId.toString()).setQuantity(quantity);
		}else {
			//若沒有則放入新productId
			cib.setPrice(intprice);
			cib.setProductBean(pb);
			cib.setQuantity(quantity);
			thecart.put(productId.toString(), cib);
		}
		
		System.out.println(thecart+"這是TheCART");
		cart.setCartitemmap(thecart);
		System.out.println(cart+"這是CART");
		mapcartbean.put(seller, cart);
		System.out.println(mapcartbean+"這是mapcartbean");
		session.setAttribute("shopCart", mapcartbean);
		if(position==0) {
			return "redirect:/products";
		}
		redirectAttributes.addAttribute("id", productId);
		return "redirect:/product";
	}
	
	@RequestMapping(value="/viewtocart")
	public String viewtocart(HttpSession session) {
		Map<String,CartBean> mapcartbean = (Map<String, CartBean>) session.getAttribute("shopCart");
		if(mapcartbean==null||mapcartbean.size()==0) {
			return "nocart";
		}	
		return "shopcart";
	}
	
	@RequestMapping(value="/removefromcart")
	public String removefromcart(@RequestParam(value="removeId")Integer removeId,HttpSession session) {
		Map<String,CartBean> mapcartbean = (Map<String, CartBean>) session.getAttribute("shopCart");
		ProductBean pb =service.getProductById(removeId);
		String seller= pb.getCompanyBean().getId().toString();
		
		CartBean cart =mapcartbean.get(seller);
		Map<String,CartItemBean> cartitems=cart.getCartitemmap();
		cartitems.remove((Object)removeId.toString());
		cart.setCartitemmap(cartitems);
		mapcartbean.replace(seller, cart);
		session.setAttribute("shopCart",mapcartbean);
		if(cartitems.size()==0) {
			mapcartbean.remove(seller);
		}
		if(mapcartbean==null||mapcartbean.size()==0) {
			return "nocart";
		}else {
			return "shopcart";
		}
	}
	
	
	@RequestMapping(value="/adjustnumber")
	public String adjustnumber(@RequestParam(value="adjustId")Integer adjustId,
			@RequestParam(value="adjust")Integer adjust,
			HttpSession session,
			HttpServletRequest request
			) {
		Map<String,String> errormsg = new HashMap<>(); 

		if(adjust==null||adjust<=0) {
			errormsg.put("adjusterror", "請輸入大於零之正整數");
			request.setAttribute("errormsg", errormsg);
			return "shopcart";
		}else {
			Map<String,CartBean> mapcartbean = (Map<String, CartBean>) session.getAttribute("shopCart");
			ProductBean pb =service.getProductById(adjustId);
			String seller= pb.getCompanyBean().getId().toString();
			CartBean cart =mapcartbean.get(seller);
			Map<String,CartItemBean> cartitems=cart.getCartitemmap();
			cartitems.get((Object)adjustId.toString()).setQuantity(adjust);
			cart.setCartitemmap(cartitems);
			mapcartbean.replace(seller, cart);
			session.setAttribute("shopCart",mapcartbean);
			return "shopcart";
		}
		
	}
}
