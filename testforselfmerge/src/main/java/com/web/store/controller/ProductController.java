package com.web.store.controller;


import java.io.File;


import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.web.store.exception.ProductNotFoundException;
//import com.web.store.model.CellBean;
import com.web.store.model.CompanyBean;
import com.web.store.model.ImageBean;
import com.web.store.model.ProductBean;
import com.web.store.model.ShopmemberBean;
//import com.web.store.service.CellBeanService;
import com.web.store.service.ImageBeanService;
import com.web.store.service.ProductBeanService;
import com.web.store.service.UserService;

@Controller
public class ProductController {
	@Autowired
	ProductBeanService service;
//	@Autowired
//	CellBeanService service1;
	@Autowired
	ImageBeanService service3;
	@Autowired
	UserService userService;
	@Autowired
	ServletContext context;

	@RequestMapping("/products")
	public String list(Model model) {
		List<ProductBean> list = service.getAllProducts();
	
		if(list.size()<=9) {	
	
			model.addAttribute("products", list);		
		}else {
		int beginpage=0;
		int total=9;
		int page=1;
		
		list=list.subList((beginpage)*page,total*page);		
	
		model.addAttribute("products", list);
		}
			
		model.addAttribute("products", list);

		return "products";
	}
	@RequestMapping("/products1")
	public String productlist(Model model) {
		
		List<ProductBean> list = service.getAllProducts();
		if(list.size()<8) {
			model.addAttribute("products", list);
		
		}else {
		int beginpage=10;
		int total=19;
		int page=1;
		
		list=list.subList(beginpage*page,total*page);
		
		
		model.addAttribute("products", list);
		}
		return "products";
	}
	@RequestMapping("/productsall")
	public String allproduct(Model model) {
		List<ProductBean> list = service.getAllProducts();
	
		model.addAttribute("products", list);

		return "products";
	}

	@RequestMapping("/backproducts")
	public String list2(Model model,HttpSession session) {
		
		Object name = session.getAttribute("memberbean");
		ShopmemberBean info1=userService.findByAccount(name.toString());
        System.out.println("info1 addproducts"+info1);
		List<ProductBean> list=service.getProductByCompanyid(info1.getSeqNo());
		System.out.println("list1 "+list);		
//		List<ProductBean> list = service.getAllProducts();
//		int maxqty=list.size();
//		info1.setProductqty(maxqty);
		if(list.size()<=8) {	
			model.addAttribute("member", info1);
			model.addAttribute("products", list);		
		}else {
		int beginpage=0;
		int total=8;
		int page=1;
		
		list=list.subList((beginpage)*page,total*page);		
		model.addAttribute("member", info1);
		model.addAttribute("products", list);
		}
		return "backproducts";
	}
	

	@RequestMapping("/backproducts2")
	public String list5(Model model) {
		List<ProductBean> list = service.getAllProducts();
				
	
		model.addAttribute("products", list);

		return "backproducts";
	}
	@RequestMapping("/backproducts1")
	public String list4(Model model) {
		
		List<ProductBean> list = service.getAllProducts();
		int beginpage=9;
		int total=17;
		int page=1;
		
		list=list.subList(beginpage,total);
	
		model.addAttribute("products", list);

		return "backproducts";
	}
//	@RequestMapping("/cells")
//	public String list1(Model model) {
//		List<ProductBean> list = service.getAllProducts();
//
//		List<CellBean> list1 = service1.getAllCells();
//
//		model.addAttribute("cells", list);
//		model.addAttribute("cells", list1);
//
//		System.out.println("cells:" + list1);
//		return "cells";
//	}

	@RequestMapping("/update/stock")
	public String updateStock(Model model) {
		service.updateAllStocks();
		return "redirect:/products";
	}

	@RequestMapping("/queryByCategory")
	public String getCategoryList(Model model) {
		List<String> list = service.getAllCategories();
		model.addAttribute("categoryList", list);
		return "category";
	}

	@RequestMapping("/{category}")
	public String getProductsByCategory(@PathVariable("category") String category, Model model) {
		List<ProductBean> products = service.getProductsByCategory(category);
		model.addAttribute("products", products);
		return "products";
	}

	@RequestMapping(value = "/updateProduct", method = RequestMethod.GET)
	public String updateproduct(@ModelAttribute("id") Integer id, Model model) {
		ProductBean bb = service.getProductById(id);
		bb.setProductId(id);
		model.addAttribute("productBean", bb);
		
		return "updateProduct";

	}
	
	@RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
	public String productupdate(@ModelAttribute("id") Integer id, @ModelAttribute("productBean") ProductBean product,
			BindingResult result, HttpServletRequest request,HttpSession session) {
		
		String[] suppressedFields = result.getSuppressedFields();
		if (suppressedFields.length > 0) {
			throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}
		
		product.setProductId(id);
		Object name = session.getAttribute("memberbean");
		ShopmemberBean info1=userService.findByAccount(name.toString());
		product.setCompanyId(info1.getSeqNo());
		

		MultipartFile productImage = product.getProductImage();
		String originalFilename = productImage.getOriginalFilename();
		product.setFileName(originalFilename);

		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		String rootDirectory = context.getRealPath("/");
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage != null && !productImage.isEmpty()) {
			try {
				byte[] b = productImage.getBytes();
				Blob blob = new SerialBlob(b);
				product.setCoverImage(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		service.save(product, id);
		
		MultipartFile productImage2 = product.getProductImage2();
		String originalFilename1 = productImage2.getOriginalFilename();
		product.setFileName2(originalFilename1);

			// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage2 != null && !productImage2.isEmpty()) {
			try {
				byte[] b = productImage2.getBytes();
				Blob blob = new SerialBlob(b);
				product.setImage2(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		service.update(product);

		return "redirect:/backproducts";
	}

//	@RequestMapping(value = "/cellphone", method = RequestMethod.GET)
//	public String getAddNewProductForm2(@ModelAttribute("id") Integer id, Model model) {
//
//			CellBean cc = service1.getCellphoneById(id);
//			
//		if(cc!=null) {		
//			model.addAttribute("cellBean", cc);
//			model.addAttribute("product", service.getProductById(id));
//	
//		}else {
//		cc = new CellBean();		
//			ProductBean bb = service.getProductById(id);
//			cc.setProductId(bb.getProductId());
//			
//				model.addAttribute("cellBean", cc);
//				model.addAttribute("product", bb);}
//		return "cellphone";
//	}
//	@RequestMapping(value = "/cellphone", method = RequestMethod.POST)
//	public String insert(@ModelAttribute("id") Integer id, @ModelAttribute("cellBean") CellBean cell,
//			BindingResult result, HttpServletRequest request) {
//		String[] suppressedFields = result.getSuppressedFields();
//		if (suppressedFields.length > 0) {
//			throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
//		}
//	System.out.println("cell info "+cell);
////	CellBean identify=service1.getCellphoneById(id);
//	ProductBean identify=service.getProductById(id);
//		if (identify != null) {
//			System.out.println("cell!=null "+cell);
//			service1.addProduct2(cell,id);
//		    } 
//		//修改
//		    else{
//		        // 
//		    	CellBean cc = new CellBean();
//		    	cc=cell;
//		        cc.setProductId(id);
//		        cc.setCellphoneId(id);
//		        System.out.println("cc"+cc);
//		        service1.update(cc);
//		    }
//		//新增
//		return "redirect:/backproducts";
//	}

	@RequestMapping(value = "/backaddProduct", method = RequestMethod.GET)
	public String getAddNewProductForm(Model model) {
		ProductBean bb = new ProductBean();

		model.addAttribute("productBean", bb);
//		model.addAttribute("cellBean", cc);
		return "backaddProduct";

	}

	@RequestMapping(value = "/backaddProduct", method = RequestMethod.POST)
	public String processAddNewProductForm(HttpSession session, @ModelAttribute("productBean") ProductBean bb,
			BindingResult result, HttpServletRequest request) {
		String[] suppressedFields = result.getSuppressedFields();
		if (suppressedFields.length > 0) {
			throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}
		if (bb.getStock() == null) {
			bb.setStock(0);
		}
		Object name = session.getAttribute("memberbean");
		ShopmemberBean info1 = userService.findByAccount(name.toString());
		bb.setCompanyId(info1.getSeqNo());

		MultipartFile productImage = bb.getProductImage();
		String originalFilename = productImage.getOriginalFilename();
		bb.setFileName(originalFilename);

		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		String rootDirectory = context.getRealPath("/");
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage != null && !productImage.isEmpty()) {
			try {
				byte[] b = productImage.getBytes();
				Blob blob = new SerialBlob(b);
				bb.setCoverImage(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}

//		service.addProduct(bb);

		
		MultipartFile productImage2 = bb.getProductImage2();
		String originalFilename2 = productImage2.getOriginalFilename();//抓檔名
		bb.setFileName2(originalFilename2);//抓檔名

		String ext2 = originalFilename2.substring(originalFilename2.lastIndexOf("."));
		String rootDirectory2 = context.getRealPath("/");
	
		
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage2 != null && !productImage2.isEmpty()) {
			try {
				byte[] b = productImage2.getBytes();
				Blob blob = new SerialBlob(b);
				bb.setImage2(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		
		
		MultipartFile productImage3 = bb.getProductImage3();
		String originalFilename3 = productImage3.getOriginalFilename();//抓檔名
		bb.setFileName3(originalFilename3);//抓檔名

		String ext3 = originalFilename3.substring(originalFilename3.lastIndexOf("."));
		String rootDirectory3 = context.getRealPath("/");
	
		
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage3 != null && !productImage3.isEmpty()) {
			try {
				byte[] b = productImage3.getBytes();
				Blob blob = new SerialBlob(b);
				bb.setImage3(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		
		
		MultipartFile productImage4 = bb.getProductImage4();
		String originalFilename4 = productImage4.getOriginalFilename();//抓檔名
		bb.setFileName4(originalFilename4);//抓檔名

		String ext4 = originalFilename4.substring(originalFilename4.lastIndexOf("."));
		String rootDirectory4 = context.getRealPath("/");
	
		
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage4 != null && !productImage4.isEmpty()) {
			try {
				byte[] b = productImage4.getBytes();
				Blob blob = new SerialBlob(b);
				bb.setImage4(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		
		
		MultipartFile productImage5 = bb.getProductImage5();
		String originalFilename5 = productImage5.getOriginalFilename();//抓檔名
		bb.setFileName5(originalFilename5);//抓檔名

		String ext5 = originalFilename5.substring(originalFilename5.lastIndexOf("."));
		String rootDirectory5 = context.getRealPath("/");
	
		
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage5 != null && !productImage5.isEmpty()) {
			try {
				byte[] b = productImage5.getBytes();
				Blob blob = new SerialBlob(b);
				bb.setImage5(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
			
		
		
		
		
		service.addProduct(bb);


		System.out.println("----------------------------------------------------------------");
		System.out.println(bb);
		System.out.println("----------------------------------------------------------------");
		return "redirect:/backproducts";
	}

	@ModelAttribute("companyList")
	public Map<Integer, String> getCompanyList() {
		Map<Integer, String> companyMap = new HashMap<>();
		List<CompanyBean> list = service.getCompanyList();
		for (CompanyBean cb : list) {
			companyMap.put(cb.getId(), cb.getName());
		}
		return companyMap;
	}

//	@ModelAttribute("cellphoneList")
//	public Map<Integer, String> getCellphoneList() {
//		Map<Integer, String> cellMap = new HashMap<>();
//		List<CellBean> list = service1.getCellsList();
//		for (CellBean cb1 : list) {
//			cellMap.put(cb1.getCellphoneId(), cb1.getColor());
//		}
//		return cellMap;
//	}

	@ModelAttribute("categoryList")
	public List<String> getCategoryList() {
	
	
		return service.getAllCategories();
	}

	@InitBinder
	public void whiteListing(WebDataBinder binder) {
		binder.setAllowedFields("author", "ProductNo", "category", "price", "title", "companyId", "productImage", "CPU",
				"system", "rom", "ram", "screensize", "screenpixel", "releasedate", "modelid", "brand", "weight",
				"color", "stock", "productNo", "id", "productBean", "pddetail", "product", "cellBean", "PdImage1",
				"productImage2","productImage3","productImage4","productImage5");
	}

	@RequestMapping(value = "/getPicture/{productId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture(HttpServletResponse resp, @PathVariable Integer productId) {
		String filePath = "/resources/images/NoImage.jpg";
		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		ProductBean bean = service.getProductById(productId);
		if (bean != null) {
			Blob blob = bean.getCoverImage();
			filename = bean.getFileName();
			if (blob != null) {
				try {
					len = (int) blob.length();
					media = blob.getBytes(1, len); // blob.getBytes(1, len): 是 1 開頭。Jdbc相關的類別都是1 開頭。
				} catch (SQLException e) {
					throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
				}
			} else {
				media = toByteArray(filePath);
				filename = filePath;
			}
		} else {
			media = toByteArray(filePath);
			filename = filePath;
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(filename);
		MediaType mediaType = MediaType.valueOf(mimeType);
		System.out.println("mediaType =" + mediaType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}
	@RequestMapping(value = "/getimage1/{productId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getimage1(HttpServletResponse resp, @PathVariable Integer productId) {
		String filePath = "/resources/images/NoImage.jpg";
		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		ProductBean bean = service.getProductById(productId);
		if (bean != null) {
			Blob blob = bean.getImage2();
			filename = bean.getFileName2();
			if (blob != null) {
				try {
					len = (int) blob.length();
					media = blob.getBytes(1, len); // blob.getBytes(1, len): 是 1 開頭。Jdbc相關的類別都是1 開頭。
				} catch (SQLException e) {
					throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
				}
			} else {
				media = toByteArray(filePath);
				filename = filePath;
			}
		} else {
			media = toByteArray(filePath);
			filename = filePath;
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(filename);
		MediaType mediaType = MediaType.valueOf(mimeType);
		System.out.println("mediaType =" + mediaType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}

	private byte[] toByteArray(String filepath) {
		byte[] b = null;
		try {
			File file = new File(filepath);
			long size = file.length();
			b = new byte[(int) size];
			InputStream fis = context.getResourceAsStream(filepath);
			fis.read(b);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return b;
	}
	@RequestMapping(value = "/getPicture2/{productId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture2(HttpServletResponse resp, @PathVariable Integer productId) {
		String filePath = "/resources/images/NoImage.jpg";
		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		ProductBean bean = service.getProductById(productId);
		if (bean != null) {
			Blob blob = bean.getImage2();
			filename = bean.getFileName2();
			if (blob != null) {
				try {
					len = (int) blob.length();
					media = blob.getBytes(1, len); // blob.getBytes(1, len): 是 1 開頭。Jdbc相關的類別都是1 開頭。
				} catch (SQLException e) {
					throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
				}
			} else {
				media = toByteArray(filePath);
				filename = filePath;
			}
		} else {
			media = toByteArray(filePath);
			filename = filePath;
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(filename);
		MediaType mediaType = MediaType.valueOf(mimeType);
		System.out.println("mediaType =" + mediaType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}
	
	@RequestMapping(value = "/getPicture3/{productId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture3(HttpServletResponse resp, @PathVariable Integer productId) {
		String filePath = "/resources/images/NoImage.jpg";
		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		ProductBean bean = service.getProductById(productId);
		if (bean != null) {
			Blob blob = bean.getImage3();
			filename = bean.getFileName3();
			if (blob != null) {
				try {
					len = (int) blob.length();
					media = blob.getBytes(1, len); // blob.getBytes(1, len): 是 1 開頭。Jdbc相關的類別都是1 開頭。
				} catch (SQLException e) {
					throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
				}
			} else {
				media = toByteArray(filePath);
				filename = filePath;
			}
		} else {
			media = toByteArray(filePath);
			filename = filePath;
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(filename);
		MediaType mediaType = MediaType.valueOf(mimeType);
		System.out.println("mediaType =" + mediaType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}
	
	@RequestMapping(value = "/getPicture4/{productId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture4(HttpServletResponse resp, @PathVariable Integer productId) {
		String filePath = "/resources/images/NoImage.jpg";
		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		ProductBean bean = service.getProductById(productId);
		if (bean != null) {
			Blob blob = bean.getImage4();
			filename = bean.getFileName4();
			if (blob != null) {
				try {
					len = (int) blob.length();
					media = blob.getBytes(1, len); // blob.getBytes(1, len): 是 1 開頭。Jdbc相關的類別都是1 開頭。
				} catch (SQLException e) {
					throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
				}
			} else {
				media = toByteArray(filePath);
				filename = filePath;
			}
		} else {
			media = toByteArray(filePath);
			filename = filePath;
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(filename);
		MediaType mediaType = MediaType.valueOf(mimeType);
		System.out.println("mediaType =" + mediaType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}
	
	
	@RequestMapping(value = "/getPicture5/{productId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture5(HttpServletResponse resp, @PathVariable Integer productId) {
		String filePath = "/resources/images/NoImage.jpg";
		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		ProductBean bean = service.getProductById(productId);
		if (bean != null) {
			Blob blob = bean.getImage5();
			filename = bean.getFileName5();
			if (blob != null) {
				try {
					len = (int) blob.length();
					media = blob.getBytes(1, len); // blob.getBytes(1, len): 是 1 開頭。Jdbc相關的類別都是1 開頭。
				} catch (SQLException e) {
					throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
				}
			} else {
				media = toByteArray(filePath);
				filename = filePath;
			}
		} else {
			media = toByteArray(filePath);
			filename = filePath;
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(filename);
		MediaType mediaType = MediaType.valueOf(mimeType);
		System.out.println("mediaType =" + mediaType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}
	
	

	@ExceptionHandler({ ProductNotFoundException.class })
	public ModelAndView handleError(HttpServletRequest request, ProductNotFoundException exception) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("invalidProductId", exception.getProductId());
		mv.addObject("exception", exception);
		mv.addObject("url", request.getRequestURL() + "?" + request.getQueryString());
		mv.setViewName("productNotFound");
		return mv;
	}

	@RequestMapping("/product")
	public String productdetailpage(@RequestParam("id") Integer id, Model model) {

//		CellBean bb = service1.getProductById(id);
//		System.out.println(bb);
		model.addAttribute("image", service3.getProductById(id));
		model.addAttribute("product", service.getProductById(id));
//		model.addAttribute("cellphone", bb);
		return "product";
	}

	@RequestMapping("/backproduct")
	public String productdetailpage1(@RequestParam("id") Integer id, Model model) {

//		CellBean bb = service1.getProductById(id);
//		System.out.println(bb);
		model.addAttribute("image", service3.getProductById(id));
		model.addAttribute("product", service.getProductById(id));
//		model.addAttribute("cellphone", bb);
		return "backproduct";
	}

	@RequestMapping("/hello")
	// read the provided form data
	public String display(@RequestParam("title") String title, Model m) {
		List<ProductBean> bb = service.getProductsBytitle(title);
		m.addAttribute("products", bb);
		return "products";
	}
	@RequestMapping(value = "/getImage/{productId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getImage(HttpServletResponse resp, @PathVariable Integer productId) {
		String filePath = "/resources/images/NoImage.jpg";
		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		ImageBean PI = service3.getProductById(productId);
		
		System.out.println("bean"+PI);
		if (PI != null) {
			Blob blob = PI.getProductImage1();
			System.out.println("BLOB image1 " + blob);
			filename = PI.getFileName1();
			System.out.println("filename " + filename);
			if (blob != null) {
				
				try {
					len = (int) blob.length();
					System.out.println("hi i am here.");
					media = blob.getBytes(1, len); // blob.getBytes(1, len): 是 1 開頭。Jdbc相關的類別都是1 開頭。
				} catch (SQLException e) {
					throw new RuntimeException("ProductController的getImage()發生SQLException: " + e.getMessage());
				}
			} else {
				media = toByteArray(filePath);
				filename = filePath;
			}
		} else {
			media = toByteArray(filePath);
			filename = filePath;
		}
		
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(filename);
		MediaType mediaType = MediaType.valueOf(mimeType);
		System.out.println("mediaType =" + mediaType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		System.out.println("==============222222==============");
		return responseEntity;
	}
	@RequestMapping(value = "/addimage", method = RequestMethod.GET)
	public String AddImage(Integer id, Model model) {
		ImageBean PI = new ImageBean();
		model.addAttribute("imageBean", PI);
//		System.out.println("get"+PI);
		return "addimage";

	}

	@RequestMapping(value = "/addimage", method = RequestMethod.POST)
	public String processAddNewProductForm(@RequestParam("id") Integer productId, @ModelAttribute("imageBean") ImageBean PI,
			BindingResult result, HttpServletRequest request) {
		
		
//		System.out.println("addImage "+PI);
		String[] suppressedFields = result.getSuppressedFields();
		if (suppressedFields.length > 0) {
			throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}
		PI.setProductId(productId);
	
		MultipartFile PdImage1 = PI.getPdImage1();
		String originalFilename = PdImage1.getOriginalFilename();
		PI.setFileName1(originalFilename);

		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		String rootDirectory = context.getRealPath("/");
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (PdImage1 != null && !PdImage1.isEmpty()) {
			try {
				byte[] b = PdImage1.getBytes();
				Blob blob = new SerialBlob(b);
				PI.setProductImage1(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
	
		service3.addImage(PI);
	
		// 將上傳的檔案移到指定的資料夾
		
		try {
			File imageFolder = new File(rootDirectory, "images");
			if (!imageFolder.exists())
				imageFolder.mkdirs();
			File file = new File(imageFolder, PI.getProductId() + ext);
			PdImage1.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
		}
		return "products";
		
		
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@ModelAttribute("id") Integer id) {
		service.deleteProductBean(id); 
	 
	
		return "redirect:/backproducts";

	}
}
