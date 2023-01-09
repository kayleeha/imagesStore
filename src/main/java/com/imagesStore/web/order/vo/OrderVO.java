package com.imagesStore.web.order.vo;

import org.springframework.stereotype.Component;

@Component("orderVO")
public class OrderVO {
	private String member_id;
	private int order_id;
	private int goods_id;
	private String orderer_name;
	private String goods_title;
	private int goods_sales_price;
	private int total_goods_price;
	private int cart_goods_qty; //장바구니에 담긴 제품 수
	private int order_goods_qty; ///최종 주문  제품 수
	private String pay_method;
	private String card_com_name;
	private String card_pay_month;
	private String pay_order_time;
	
	private String final_total_price;
	private int goods_qty;
	private String goods_fileName;
	private String orderer_hp;
	
	
	public OrderVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public OrderVO(String member_id, int order_id, int goods_id, String orderer_name, String goods_title,
			int goods_sales_price, int total_goods_price, int cart_goods_qty, int order_goods_qty, String pay_method,
			String card_com_name, String card_pay_month, String pay_order_time, String final_total_price, int goods_qty,
			String goods_fileName, String orderer_hp) {
		this.member_id = member_id;
		this.order_id = order_id;
		this.goods_id = goods_id;
		this.orderer_name = orderer_name;
		this.goods_title = goods_title;
		this.goods_sales_price = goods_sales_price;
		this.total_goods_price = total_goods_price;
		this.cart_goods_qty = cart_goods_qty;
		this.order_goods_qty = order_goods_qty;
		this.pay_method = pay_method;
		this.card_com_name = card_com_name;
		this.card_pay_month = card_pay_month;
		this.pay_order_time = pay_order_time;
		this.final_total_price = final_total_price;
		this.goods_qty = goods_qty;
		this.goods_fileName = goods_fileName;
		this.orderer_hp = orderer_hp;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public String getOrderer_name() {
		return orderer_name;
	}
	public void setOrderer_name(String orderer_name) {
		this.orderer_name = orderer_name;
	}
	public String getGoods_title() {
		return goods_title;
	}
	public void setGoods_title(String goods_title) {
		this.goods_title = goods_title;
	}
	public int getGoods_sales_price() {
		return goods_sales_price;
	}
	public void setGoods_sales_price(int goods_sales_price) {
		this.goods_sales_price = goods_sales_price;
	}
	public int getTotal_goods_price() {
		return total_goods_price;
	}
	public void setTotal_goods_price(int total_goods_price) {
		this.total_goods_price = total_goods_price;
	}
	public int getCart_goods_qty() {
		return cart_goods_qty;
	}
	public void setCart_goods_qty(int cart_goods_qty) {
		this.cart_goods_qty = cart_goods_qty;
	}
	public int getOrder_goods_qty() {
		return order_goods_qty;
	}
	public void setOrder_goods_qty(int order_goods_qty) {
		this.order_goods_qty = order_goods_qty;
	}
	public String getPay_method() {
		return pay_method;
	}
	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}
	public String getCard_com_name() {
		return card_com_name;
	}
	public void setCard_com_name(String card_com_name) {
		this.card_com_name = card_com_name;
	}
	public String getCard_pay_month() {
		return card_pay_month;
	}
	public void setCard_pay_month(String card_pay_month) {
		this.card_pay_month = card_pay_month;
	}
	public String getPay_order_time() {
		return pay_order_time;
	}
	public void setPay_order_time(String pay_order_time) {
		this.pay_order_time = pay_order_time;
	}
	public String getFinal_total_price() {
		return final_total_price;
	}
	public void setFinal_total_price(String final_total_price) {
		this.final_total_price = final_total_price;
	}
	public int getGoods_qty() {
		return goods_qty;
	}
	public void setGoods_qty(int goods_qty) {
		this.goods_qty = goods_qty;
	}
	public String getGoods_fileName() {
		return goods_fileName;
	}
	public void setGoods_fileName(String goods_fileName) {
		this.goods_fileName = goods_fileName;
	}
	public String getOrderer_hp() {
		return orderer_hp;
	}
	public void setOrderer_hp(String orderer_hp) {
		this.orderer_hp = orderer_hp;
	}
	
}
	