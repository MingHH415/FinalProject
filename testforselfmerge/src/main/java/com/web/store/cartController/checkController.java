package com.web.store.cartController;

import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.store.cartservice.cartService;
import com.web.store.model.CartBean;
import com.web.store.model.CartItemBean;
import com.web.store.model.ProductBean;
import com.web.store.model.ShipmethodBean;
import com.web.store.model.ShopmemberBean;
import com.web.store.service.ProductBeanService;

@Controller
public class checkController {
	@Autowired
	ProductBeanService service;

	@Autowired
	cartService service1;
	
	@Autowired
	ServletContext context;
	

//	@RequestMapping("/ezshipcheck")
//	public String ezship(@RequestParam(value="totalprice") Integer totalprice,HttpSession session,HttpServletRequest request) {
//		CartBean cart = (CartBean)session.getAttribute("ShoppingCart");
//		Map<String,String> errormsg = new HashMap<>(); 
//		if(cart==null) {
//			return "nocart";
//		}
//		Collection<CartItemBean> values=cart.getCartitemmap().values();
//        Iterator<CartItemBean> iterator2=values.iterator();
//        while (iterator2.hasNext()){
//        	service1.addcartitem(iterator2.next());
//        }
//        
//        Set<String> keys=cart.getCartitemmap().keySet();
//        Iterator<String> iterator1=keys.iterator();
//        while (iterator1.hasNext()){
//        	String keyid=iterator1.next();
//        	int quantity= cart.getCartitemmap().get(keyid).getQuantity();
//        	Integer productId = Integer.parseInt(keyid);
//        	ProductBean pb =service.getProductById(productId);
//        	int beforestock =pb.getStock();
//        	if(beforestock>=quantity) {
//        		int newstock = beforestock-quantity;
//        	service.updateStock(productId, newstock);
//    		cart.setTotalprice(totalprice);
//        	}else {
//        		errormsg.put("adjusterror", "庫存不足");
//    			request.setAttribute("errormsg", errormsg);
//    			return "shopcart";
//        	}
//        }
//		
//		service1.addcart(cart); 
//		request.setAttribute("processID", cart.getCartID());
//		return"ezship";
//	}
	@RequestMapping("/backezship")
	public String backezship(@RequestParam(value="seller")String seller,HttpSession session) {
		Map<String,CartBean> mapcartbean = (Map<String, CartBean>) session.getAttribute("shopCart");
		session.setAttribute("now", mapcartbean.get(seller));
		session.setAttribute("sellerID", seller);
		return "ezship";
	}
	@RequestMapping("/ezship2")
	public String backezship(HttpSession session) {
		CartBean nowcartbean = (CartBean) session.getAttribute("now");
		session.setAttribute("now", nowcartbean);
		return "ezship2";
	}

	@RequestMapping("/toshiptohome")
	public String shiptohome(@RequestParam(value="seller")String seller,HttpSession session) {
		Map<String,CartBean> mapcartbean = (Map<String, CartBean>) session.getAttribute("shopCart");
		session.setAttribute("now", mapcartbean.get(seller));
		session.setAttribute("sellerID", seller);
		return"shiptohome";
	}
	@RequestMapping("/checkout")
	public String checkout(@RequestParam(value="totalprice") Integer totalprice,
			HttpSession session,HttpServletRequest request,
			@RequestParam(value="receiver")String receiver,
			@RequestParam(value="receiverphone")String phone,
			@RequestParam(value="address")String address,
			@RequestParam(value="method")String method,
			@RequestParam(value="shippingfee")Integer fee,
			@RequestParam(value="paymethod")Integer paymethod
			){
		
		Map<String,CartBean> mapcartbean = (Map<String, CartBean>) session.getAttribute("shopCart");
		String seller = (String) session.getAttribute("sellerID");
		CartBean cart =mapcartbean.get(seller);
		Map<String,String> errormsg = new HashMap<>(); 
		if(cart==null) {
			return "nocart";
		}
		Collection<CartItemBean> values=cart.getCartitemmap().values();
        Iterator<CartItemBean> iterator2=values.iterator();
        while (iterator2.hasNext()){
        	service1.addcartitem(iterator2.next());
        }
        
        //庫存
        Set<String> keys=cart.getCartitemmap().keySet();
        Iterator<String> iterator1=keys.iterator();
        while (iterator1.hasNext()){
        	String keyid=iterator1.next();
        	int quantity= cart.getCartitemmap().get(keyid).getQuantity();
        	int productId = Integer.parseInt(keyid);
        	ProductBean pb =service.getProductById(productId);
        	int beforestock =pb.getStock();
        	if(beforestock>=quantity) {
        		int newstock = beforestock-quantity;
        	service.updateStock(productId, newstock);
    		cart.setTotalprice(totalprice);
        	}else {
        		errormsg.put("adjusterror", "庫存不足");
    			request.setAttribute("errormsg", errormsg);
    			return "shopcart";
        	}
        }
		//運送方式
		ShipmethodBean shbean = new ShipmethodBean();
		shbean.setRecivername(receiver);
		shbean.setReciverphone(phone);
		shbean.setAddress(address);
		shbean.setMethod(method);
		shbean.setShippingfee(fee);
		cart.setFee(fee);
		cart.setShipmethodBean(shbean);
		cart.setPaymethod(paymethod);
		ShopmemberBean shopmemberBean=(ShopmemberBean)session.getAttribute("memberbean");
		cart.setShopmemberBean(shopmemberBean);
		cart.setStatus("尚未收貨");
		Date orderdate = new Date();
		java.sql.Date sqlDate = new java.sql.Date(orderdate.getTime());
		cart.setOrderdate(sqlDate);
		cart.setSeller(seller);
		service1.addcart(cart);
		if (paymethod==0) {
			System.out.println("貨到付款預設成功");
			mapcartbean.remove(seller);
			session.setAttribute("shopCart",mapcartbean);
			session.removeAttribute("sellerID");
			System.out.println(session.getAttribute("sellerID"));
			return "success";
		}else{
			System.out.println("事先付款");
			session.setAttribute("checkoutcart", cart);
			mapcartbean.remove(seller);
			session.setAttribute("shopCart",mapcartbean);
			return "aioCheckOut";
		}

		
	}
}
