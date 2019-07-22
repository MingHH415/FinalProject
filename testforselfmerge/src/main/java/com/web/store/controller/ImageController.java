package com.web.store.controller;


import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.store.model.ProductBean;
import com.web.store.service.ImageBeanService;
import com.web.store.service.ProductBeanService;


@Controller
public class ImageController {

//	@Autowired
//	CellBeanService service;
	@Autowired
	ProductBeanService service;
	@Autowired
	ImageBeanService service3;
	@Autowired
	ServletContext context;

	@RequestMapping("/")
	public String home() {
		return "index";
	}

//	@RequestMapping(value = "/getImage/{productId}", method = RequestMethod.GET)
//	public ResponseEntity<byte[]> getImage(HttpServletResponse resp, @PathVariable Integer productId) {
//		String filePath = "/resources/images/NoImage.jpg";
//		byte[] media = null;
//		HttpHeaders headers = new HttpHeaders();
//		String filename = "";
//		int len = 0;
//		ImageBean bean = service3.getProductById(productId);
//		if (bean != null) {
//			Blob blob = bean.getProductImage1();
//			filename = bean.getFileName1();
//			if (blob != null) {
//				try {
//					len = (int) blob.length();
//					media = blob.getBytes(1, len); // blob.getBytes(1, len): 是 1 開頭。Jdbc相關的類別都是1 開頭。
//				} catch (SQLException e) {
//					throw new RuntimeException("ImageController的getPicture()發生SQLException: " + e.getMessage());
//				}
//			} else {
//				media = toByteArray(filePath);
//				filename = filePath;
//			}
//		} else {
//			media = toByteArray(filePath);
//			filename = filePath;
//		}
//		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
//		String mimeType = context.getMimeType(filename);
//		MediaType mediaType = MediaType.valueOf(mimeType);
//		System.out.println("mediaType =" + mediaType);
//		headers.setContentType(mediaType);
//		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
//		return responseEntity;
//	}
//
//	private byte[] toByteArray(String filepath) {
//		byte[] b = null;
//		try {
//			File file = new File(filepath);
//			long size = file.length();
//			b = new byte[(int) size];
//			InputStream fis = context.getResourceAsStream(filepath);
//			fis.read(b);
//		} catch (FileNotFoundException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		return b;
//	}
	@RequestMapping("/ajax")
	public void ajax1(String name, PrintWriter out){
		String result = "hello " +name;
		out.write(result);
	}
	
	@RequestMapping("/advertiselistajax")
	public String toAjax(){
		return "advertiselistajax";
	}
	
	@RequestMapping(value="/adv/{txt}", method = RequestMethod.GET)
	@ResponseBody
	public ProductBean advertiselistajax(@PathVariable int txt){
		System.out.println("===========advertiselistajax IN=============");
		ProductBean bean=service.getProductById(txt);
		System.out.println("all the : "+bean);
//		for (List<ProductBean> bb:list) {
//			System.out.println("name : "+bb.get);
//		}
		System.out.println("===========advertiselistajax IN=============");
		return bean;
	}
	@RequestMapping(value="/advertiselistajax", method = RequestMethod.POST)
	@ResponseBody
	public List<ProductBean> advertiselistajax(){
	
		List<ProductBean> list=service.getAllProducts();
//		System.out.println("listcontrller "+list);
//		for (ProductBean bb:list) {
//			System.out.println("name : "+bb.getCategory());
//		}

		return list;
	}
	
	
}
