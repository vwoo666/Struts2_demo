package com.store.model;

public class OrderItem {

	private int buynum;
	private Order order;//定单（外键）
	private Product product;//商品 （外键）
	public int getBuynum() {

		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
	
}
