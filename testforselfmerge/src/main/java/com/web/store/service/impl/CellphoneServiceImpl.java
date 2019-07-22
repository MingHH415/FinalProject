
//package com.web.store.service.impl;
//
//
//import java.util.List;
//
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import com.web.store.dao.CellDao;
//import com.web.store.model.CellBean;
//
//import com.web.store.model.ProductBean;
//import com.web.store.service.CellBeanService;
//
//@Transactional
//@Service
//public class CellphoneServiceImpl implements CellBeanService {
//    @Autowired
//	CellDao dao;
//    
//  
//   
//
//  
//	@Override
//	public CellBean getCellphoneById(int productId) {
//    	System.out.println(productId);
//		return dao.getcellphoneById(productId);
//		
//    }
//
//	@Override
//	public List<CellBean> getCellsList() {
//		
//		return dao.getCellsList();
//	}
//
//	@Override
//	public void addProduct2(CellBean cell, int cellphoneId) {
//		System.out.println("dDAO　："+cell);
//		dao.addProduct2(cell,cellphoneId);
//	
//	}
//
//
//	@Override
//	public CellBean getProductById(int productId) {
//			 return dao.getProductById(productId);
//	}
//
//	@Override
//	public List<CellBean> getAllCells() {
//		return dao.getAllCells();
//		}
//
//	@Override
//	public void updateCell(int productId) {	
//		dao.updateCell(productId);		
//	}
//	@Override
//	public void update(CellBean cell) {
//		dao.update(cell);
//	}
//	
//	
//}
