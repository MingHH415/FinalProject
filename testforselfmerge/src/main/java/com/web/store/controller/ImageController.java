package com.web.store.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.store.service.ImageBeanService;



@Controller
public class ImageController {

//	@Autowired
//	CellBeanService service1;
//	@Autowired
//	ProductBeanService service;
	@Autowired
	ImageBeanService service3;
	@Autowired
	ServletContext context;

	@RequestMapping("/")
	public String home() {
		return "index";
	}
//	@RequestMapping(value = "/addimage", method = RequestMethod.GET)
//	public String AddImage(Model model) {
//		ImageBean PI = new ImageBean();
//		model.addAttribute("imageBean", PI);
//		return "addimage";
//
//	}
//	@RequestMapping(value = "/addimage", method = RequestMethod.POST)
//	public String AddImage(@ModelAttribute("imageBean") ImageBean PI, 
//			HttpServletRequest request) {
//				MultipartFile PdImage1 = PI.getPdImage1();
//		String originalFilename = PdImage1.getOriginalFilename();
//		PI.setFileName1(originalFilename);
//
//		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
//		String rootDirectory = context.getRealPath("/");
//		// 建立Blob物件，交由 Hibernate 寫入資料庫
//		if (PdImage1 != null && !PdImage1.isEmpty()) {
//			try {
//				byte[] b = PdImage1.getBytes();
//				Blob blob = new SerialBlob(b);
//				PI.setProductImage1(blob);
//			} catch (Exception e) {
//				e.printStackTrace();
//				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
//			}
//		}
//		service3.addImage(PI);
//	
//		// 將上傳的檔案移到指定的資料夾
//		try {
//			File imageFolder = new File(rootDirectory, "images");
//			if (!imageFolder.exists())
//				imageFolder.mkdirs();
//			File file = new File(imageFolder, PI.getProductId() + ext);
//			PdImage1.transferTo(file);
//		} catch (Exception e) {
//			e.printStackTrace();
//			throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
//		}
//		System.out.println(PI);
//		return "redirect:/products";
//	}
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
//	
}
