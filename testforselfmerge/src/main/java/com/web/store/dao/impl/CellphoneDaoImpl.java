package com.web.store.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.CellDao;
import com.web.store.model.CellBean;



@Repository
public class CellphoneDaoImpl implements CellDao {
	@Autowired
    SessionFactory factory;

	@Override
	public CellBean getcellphoneById(int cellphoneId) {
		Session session = factory.getCurrentSession();
		CellBean bb = session.get(CellBean.class, cellphoneId);
		return bb;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CellBean> getCellsList() {
		String hql = "FROM CellBean";
	    Session session = null;
	    List<CellBean> list1 = new ArrayList<>();
	    session = factory.getCurrentSession();
	    list1 = session.createQuery(hql).getResultList();
		return list1;
	}
	
	@Override
	public void addProduct2(CellBean cell) {
	    Session session = factory.getCurrentSession();
//	    ProductBean cc = getProductById(cell.getProductId());
//	    cell.setProductBean(cc);
	    System.out.println("dao: "+cell);
	    session.save(cell);
	}
	@Override
	public void update(CellBean cell) {
	    Session session = factory.getCurrentSession();
	  
	    session.update(cell);
	    
	    
//	    String hql = "UPDATE CellBean WHERE id = :productId";
	
//	  "FROM ProductBean bb WHERE bb.title like :title";
	  
//		 session.createQuery(hql).setParameter("CPU", cell)
//                .setParameter("system", cell).setParameter("rom", cell)
//                .setParameter("ram", cell).setParameter("screensize", cell)
//                .setParameter("screenpixel", cell).setParameter("releasedate", cell)
//                .setParameter("brand", cell).setParameter("modelid", cell)
//                .setParameter("weight", cell).setParameter("color", cell)
//                .executeUpdate();
//		
	}
//	@SuppressWarnings("unused")
//	@Override
//	public void updateCell(int cellphoneId) {
//		String hql = "UPDATE CellBean  WHERE CellphoneId = :id";
//		Session session = factory.getCurrentSession();
//		
//		int n = session.createQuery(hql).setParameter("stock", newQuantity)
//	                            .setParameter("id", productId)
//	                            .executeUpdate();
//	}



	
	
	    


	@Override
	public List<CellBean> getAllCells() {
		 String hql = "FROM CellBean";
		    Session session = null;
		    List<CellBean> list1 = new ArrayList<>();
		    session = factory.getCurrentSession();
		    list1 = session.createQuery(hql).getResultList();
		    return list1;
	}

	@Override
	public void updateCell(int productId) {
		
	}

	@Override
	public CellBean getProductById(int productId) {
	    Session session = factory.getCurrentSession();
		CellBean cc=session.get(CellBean.class, productId);
		return cc;

	}


	
}
