package com.imagesStore.web.goods.vo;

import java.sql.Date;
import java.util.ArrayList;

public class GoodsVO {
	private int goods_id;
	private String goods_title;
	private String goods_seller;
	private int    goods_price;
	private String goods_sort;
	private int    goods_sales_price;
	private int    goods_point;
	private String goods_fileName;
	private String goods_detail;
	
	
	public GoodsVO() {
		// TODO Auto-generated constructor stub
	}
	
	public GoodsVO(int goods_id, String goods_title, String goods_seller, int goods_price, String goods_sort,
			int goods_sales_price, int goods_point, String goods_fileName, String goods_detail) {
		this.goods_id = goods_id;
		this.goods_title = goods_title;
		this.goods_seller = goods_seller;
		this.goods_price = goods_price;
		this.goods_sort = goods_sort;
		this.goods_sales_price = goods_sales_price;
		this.goods_point = goods_point;
		this.goods_fileName = goods_fileName;
		this.goods_detail = goods_detail;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public String getGoods_title() {
		return goods_title;
	}
	public void setGoods_title(String goods_title) {
		this.goods_title = goods_title;
	}
	public String getGoods_seller() {
		return goods_seller;
	}
	public void setGoods_seller(String goods_seller) {
		this.goods_seller = goods_seller;
	}
	public int getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}
	public String getGoods_sort() {
		return goods_sort;
	}
	public void setGoods_sort(String goods_sort) {
		this.goods_sort = goods_sort;
	}
	public int getGoods_sales_price() {
		return goods_sales_price;
	}
	public void setGoods_sales_price(int goods_sales_price) {
		this.goods_sales_price = goods_sales_price;
	}
	public int getGoods_point() {
		return goods_point;
	}
	public void setGoods_point(int goods_point) {
		this.goods_point = goods_point;
	}
	public String getGoods_fileName() {
		return goods_fileName;
	}
	public void setGoods_fileName(String goods_fileName) {
		this.goods_fileName = goods_fileName;
	}
	public String getGoods_detail() {
		return goods_detail;
	}
	public void setGoods_detail(String goods_detail) {
		this.goods_detail = goods_detail;
	}
	

	

}
