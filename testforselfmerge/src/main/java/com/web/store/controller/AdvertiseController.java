package com.web.store.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.store.model.AdvertiseBean;

import com.web.store.model.ProductBean;
import com.web.store.model.ShopmemberBean;
import com.web.store.service.AdvertiseBeanService;

import com.web.store.service.ProductBeanService;
import com.web.store.service.UserService;



@Controller
public class AdvertiseController {

//	@Autowired
//	CellBeanService service1;
	@Autowired
	ProductBeanService service;
//	@Autowired
//	ImageBeanService service3;
	@Autowired
	AdvertiseBeanService adservice;
	@Autowired
	UserService userService;
	@Autowired
	ServletContext context;

	@RequestMapping(value = "/advertise", method = RequestMethod.GET)
	public String getAddNewProductForm2( Model model) {

			AdvertiseBean cc = new AdvertiseBean();
			
				model.addAttribute("advertiseBean", cc);
		
		return "advertise";
	}

	@RequestMapping(value = "/advertise", method = RequestMethod.POST)
	public String insert( @ModelAttribute("advertiseBean") AdvertiseBean adv,
					BindingResult result, HttpServletRequest request,
					HttpSession session,Model model) {
			String[] suppressedFields = result.getSuppressedFields();
			if (suppressedFields.length > 0) {
				throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
			}
			HashMap<String, String> errorMsgMap = new HashMap<String, String>();
			model.addAttribute("ErrorMsgKey", errorMsgMap);
			Object name = session.getAttribute("memberbean");
			ShopmemberBean info1=userService.findByAccount(name.toString());
	        System.out.println("adv "+adv);
	       adv.setCompanyId(info1.getSeqNo());
	       adv.setStatus(1);
	       if(adv.getProductId()==-1) {
	    	   errorMsgMap.put("notnull", "請選擇產品名稱");
//	    	   System.out.println(errorMsgMap);
	    	   return "advertise";
	       }else {
		   adservice.save(adv);
	       }
		   return "redirect:/advertiselist";  
	}
	
//
//	@RequestMapping(value = "/advertise", method = RequestMethod.POST)
//	public String update( @ModelAttribute("advertiseBean") AdvertiseBean adv,
//			@ModelAttribute("id") Integer aDid,
//					BindingResult result, HttpServletRequest request,
//					HttpSession session) {
//			String[] suppressedFields = result.getSuppressedFields();
//			if (suppressedFields.length > 0) {
//				throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
//			}	       
//		   adservice.update(adv);
//		   
//		   return "redirect:/advertise";  
//	}
	@InitBinder
	public void whiteListing(WebDataBinder binder) {
		binder.setAllowedFields("productId",
				"addiscription" ,
				"qty" , 
				"click" , 
				"price" , 
				"spend" , 
				"budget" , 
				"companyId" , 
				"adId",
				"status"
				);
		}
		@ModelAttribute("productList")
		public Map<Integer, String> getAllProducts() {
			Map<Integer, String> productMap = new HashMap<>();
			List<ProductBean> list = service.getAllProducts();
			for (ProductBean cb1 : list) {
				productMap.put(cb1.getProductId(), cb1.getTitle());
			}
//			System.out.println("productMap "+productMap);
			return productMap;
		}
		@RequestMapping("/advertiselist")
		public String advertiselist(Model model,HttpSession session ) {
			
			Object name = session.getAttribute("memberbean");
			ShopmemberBean info1=userService.findByAccount(name.toString());
	        System.out.println("info1 addproducts"+info1);
			
			List<AdvertiseBean> list=adservice.getAdvertiseByCompanyid(info1.getSeqNo());
			System.out.println("list1 "+list);		
//			List<ProductBean> list = service.getAllProducts();
//			if(list==null) {
//				 System.out.println("insidenull");
//					
//			}else {		
//			ProductBean bb=list.
					
			model.addAttribute("member", info1);
			model.addAttribute("advertise", list);
			
			return "advertiselist";
			
		
		}
		@RequestMapping(value = "/index2", method = RequestMethod.GET)
		public String index2(Model model) {
			
			List<AdvertiseBean> list=adservice.getTop3highCpc();
		if(list.size()>2) {
			int	pI1=list.get(0).getAdId();
			int pI2=list.get(1).getAdId();
			int	pI3=list.get(2).getAdId();
			int	p1=list.get(0).getProductId();
			int p2=list.get(1).getProductId();
			int	p3=list.get(2).getProductId();
				System.out.println("pI 陣列直"+pI1);
				System.out.println("pI 陣列直"+pI2);
				System.out.println("pI 陣列直"+pI3);

			model.addAttribute("product", service.getProductById(p1));
			model.addAttribute("product1", service.getProductById(p2));
			model.addAttribute("product2", service.getProductById(p3));		
			model.addAttribute("advertise", adservice.getAdvertiseById(pI1));
			model.addAttribute("advertise1", adservice.getAdvertiseById(pI2));
			model.addAttribute("advertise2", adservice.getAdvertiseById(pI3));
			return "index2";
		}else {
			
			model.addAttribute("product", service.getProductById(1));
			model.addAttribute("product1", service.getProductById(2));
			model.addAttribute("product2", service.getProductById(3));	
			return "index2";
		}
		 }
		@RequestMapping(value="/countclick", method = RequestMethod.POST)
		@ResponseBody
		public String advertiselistajax(@RequestParam("click") Integer click,				
				@RequestParam("adId") Integer adId,Model model){
			System.out.println("===========advertiselistajax IN=============");
			System.out.println("productId: "+adId);
			System.out.println("click: "+click);			
				AdvertiseBean ad=adservice.getAdvertiseById(adId);
				ad.setClick(click);	
				if(click>=ad.getBudget()) {
					
				System.out.println("budget"+ad.getBudget());
				System.out.println("clickafterupdate"+click);
				ad.setStatus(2);
				adservice.update(ad);	
			
				}else {
					System.out.println("===========advertise no ad IN=============");
				
				adservice.update(ad);
			}
				return "index2";
		}
}
//AdvertiseBean ac=adservice.getAdvertiseById(productId);
//if(ac.getClick()==5) {
//	ac.setStatus(2);
//	ac.setClick(click);
//	adservice.update(ad);
////	List<AdvertiseBean> list=adservice.getTop3highCpc();
////	int	pI1=list.get(0).getProductId();
////	int pI2=list.get(1).getProductId();
////	int	pI3=list.get(2).getProductId();
////	model.addAttribute("product", service.getProductById(pI1));
////	model.addAttribute("product1", service.getProductById(pI2));
////	model.addAttribute("product2", service.getProductById(pI3));

	

