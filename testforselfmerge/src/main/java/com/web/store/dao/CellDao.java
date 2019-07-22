package com.web.store.dao;



import java.util.List;

import com.web.store.model.CellBean;



public interface CellDao {

	public CellBean getcellphoneById(int productId);
	
	List<CellBean>  getCellsList(); 


	void addProduct2(CellBean cell);



	public CellBean getProductById(int productId);

	public List<CellBean> getAllCells();

	public void updateCell(int productId);

	void update(CellBean cell);




}
