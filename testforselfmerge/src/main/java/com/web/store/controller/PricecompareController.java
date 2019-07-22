package com.web.store.controller;

import java.io.File;



import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.store.exception.ProductNotFoundException;
//import com.web.store.model.CellBean;
import com.web.store.model.CompanyBean;
import com.web.store.model.ImageBean;
import com.web.store.model.ProductBean;
//import com.web.store.service.CellBeanService;
import com.web.store.service.ImageBeanService;
import com.web.store.service.ProductBeanService;

@Controller
public class PricecompareController {

//	@Autowired
//	CellBeanService service1;
	@Autowired
	ProductBeanService service;
	@Autowired
	ImageBeanService service2;
	@Autowired
	ServletContext context;
//	@RequestMapping(value = "/pricecompare", method = RequestMethod.GET)
//	public String getAddNewProductForm(Model model) {
//		ProductBean bb = new ProductBean();
//		model.addAttribute("productBean", bb);
//		return "pricecompare";
//	}
//	@RequestMapping("/pricecompare")
//	public String pricecompare(@ModelAttribute("productBean") ProductBean bb, Model model) {
//		ProductBean cc = service.getProductById(id);
//		
//	
//		return "redirect:/pricecompare";
//	}
	@InitBinder
	public void whiteListing(WebDataBinder binder) {
		binder.setAllowedFields("author", "productId", "category", "price", "title", "companyId", "productImage", "CPU",
				"system", "rom", "ram", "screensize", "screenpixel", "releasedate", "modelid", "brand", "weight",
				"color", "stock", "productNo", "id", "productBean", "product", "cellBean","PdImage1",
		"productImage2","productBean1");}
	@RequestMapping(value = "/pricecompare", method = RequestMethod.GET)
	public String getAddpricecompareForm(Model model) {
	
		ProductBean bb = new ProductBean();
		model.addAttribute("productBean", bb);

		
		return "pricecompare";
	}

//	@RequestMapping(value = "/pricecompare",method = RequestMethod.POST)
//	public String pricecompare(@ModelAttribute("productBean") ProductBean bb,
//			 BindingResult result,
//			HttpServletRequest request,Model model) {
//		String[] suppressedFields = result.getSuppressedFields();
//		if (suppressedFields.length > 0) {
//			throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
//		}      
//		ProductBean	allresult=service.getProductById(bb.getProductId());
////		ProductBean	allresult1=service.getProductById(bb1.getProductId());
//		
////		List<ProductBean> allmap=new ArrayList<ProductBean>();
////		allmap.add(0, allresult);
////		allmap.add(1, allresult1);
////		System.out.println("allmap "+allmap);
//		
//		model.addAttribute("product", allresult);
////		model.addAttribute("product1", allresult1);
//		return "pricecompare";
//	
//	}
//	@RequestMapping(value = "/pricecompare",method = RequestMethod.POST)
//	public String pricecomparerq( BindingResult result,
//			@RequestParam("productBean") ProductBean allresult,
//			HttpServletRequest request,Model model) {
//		String[] suppressedFields = result.getSuppressedFields();
//		if (suppressedFields.length > 0) {
//			throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
//		} 
//		model.addAttribute("product", allresult);
//		return "pricecompare";
//	
//	}
	
//	@RequestMapping(value = "/pricecompare1",method = RequestMethod.POST)
//	public String pricecompare1(@ModelAttribute("productBean") ProductBean cc, 
////			@RequestParam("productBean") ProductBean allresult1,
//			BindingResult result,
//			HttpServletRequest request,Model model) {
//		String[] suppressedFields = result.getSuppressedFields();
//		if (suppressedFields.length > 0) {
//			throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
//		}
//		
//		ProductBean allresult1=service.getProductById(cc.getProductId());
//	    System.out.println("allresult result "+allresult1);
//	    
//		model.addAttribute("product1", allresult1);
//		
//		System.out.println("modelinfo "+model);
//		return "pricecompare";
//	
//	}
//	@RequestMapping(value = "/pricecompare1",method = RequestMethod.POST)
//	public String pricecomparerq(@RequestParam("productBean") ProductBean allresult1,
//			BindingResult result,
//			HttpServletRequest request,Model model1) {
//		String[] suppressedFields = result.getSuppressedFields();
//		if (suppressedFields.length > 0) {
//			throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
//		}
//	
//		model1.addAttribute("product1", allresult1);
//		return "pricecompare";
//	
//	}
//	@RequestMapping("/handphone1")
//	// read the provided form data
//	public String display(@RequestParam("title") String title, Model m) {
//		List<ProductBean> bb = service.getProductsBytitle(title);
//		m.addAttribute("products", bb);
//		return "redirect/pricecompare";
//	}
	@ModelAttribute("productList")
	public Map<Integer, String> getAllProducts() {
		Map<Integer, String> productMap = new HashMap<>();
		List<ProductBean> list = service.getAllProducts();
		for (ProductBean cb1 : list) {
			productMap.put(cb1.getProductId(), cb1.getTitle());
		}
//		System.out.println("productMap "+productMap);
		return productMap;
	}
	
	@RequestMapping(value = "/pricecompare",method = RequestMethod.POST)
	public String pricecompare(@ModelAttribute("productBean") ProductBean bb,
//			@ModelAttribute("productBean")ProductBean cc,
			 BindingResult result,
			HttpServletRequest request,ModelMap map) {
		String[] suppressedFields = result.getSuppressedFields();
		if (suppressedFields.length > 0) {
			throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}      
		ProductBean	allresult=service.getProductById(bb.getProductId());
//		CellBean	allresult1=service1.getProductById(bb.getProductId());
//		ProductBean	allresult1=service.getProductById(cc.getProductId());
		
//		List<ProductBean> allmap=new ArrayList<ProductBean>();
//		allmap.add(0, allresult);
//		allmap.add(1, allresult1);
//		System.out.println("allmap "+allmap);
		
//		map.addAttribute("product", allresult);
//		map.addAttribute("product1", allresult1);
//		System.out.println("modelinfo"+map);
//		
		return "pricecompare";
	
	}
//	@RequestMapping(value = "/pricecompare",method = RequestMethod.POST)
//	public String pricecomparerq( BindingResult result,
//			@RequestParam("productBean") ProductBean allresult,
//			HttpServletRequest request,Model model) {
//		String[] suppressedFields = result.getSuppressedFields();
//		if (suppressedFields.length > 0) {
//			throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
//		} 
//		model.addAttribute("product", allresult);
//		return "pricecompare";
//	
//	}
	@RequestMapping(value="/pricecompareajax/{txt}", method = RequestMethod.GET)
	@ResponseBody
	public ProductBean advertiselistajax(@PathVariable int txt){
		System.out.println("===========advertiselistajax IN=============");
		ProductBean list=service.getProductById(txt);
		System.out.println("all the : "+list);
//		for (List<ProductBean> bb:list) {
//			System.out.println("name : "+bb.get);
//		}
		System.out.println("===========advertiselistajax IN=============");
		return list;
	}
	@RequestMapping(value="/comparelist", method = RequestMethod.POST)
	@ResponseBody
	public List<ProductBean> comparelist(){
	
		List<ProductBean> list=service.getAllProducts();
//		List<CellBean> list1=service1.getCellsList();
		for (int i=0;i<list.size();i++) {			
		System.out.println("name : "+list.get(i));	
	}
//		System.out.println("listcontrller "+list);
//		for (ProductBean bb:list) {
//			System.out.println("name : "+bb.getCategory());
//		}
	
		return list;
		
	}
//	@RequestMapping(value="/comparelist1", method = RequestMethod.POST)
//	@ResponseBody
//	public List<CellBean> comparelist1(){
//	
//
//		List<CellBean> list1=service1.getCellsList();
//		for (int i=0;i<list1.size();i++) {			
//		System.out.println("name : "+list1.get(i));
//		
//	}
//		return list1;
//		
//	}
}
