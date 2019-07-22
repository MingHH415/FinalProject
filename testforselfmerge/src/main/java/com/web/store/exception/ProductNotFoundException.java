package com.web.store.exception;

public class ProductNotFoundException extends RuntimeException {
	Integer productId;
	public ProductNotFoundException() { }
	public ProductNotFoundException(Integer productId) {
		this.productId = productId;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public ProductNotFoundException(String message) {
		super(message);
	}
	public ProductNotFoundException(Throwable cause) {
		super(cause);
	}
	public ProductNotFoundException(String message, Throwable cause) {
		super(message, cause);
	}
	public ProductNotFoundException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}
}
