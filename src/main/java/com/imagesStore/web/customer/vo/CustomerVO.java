package com.imagesStore.web.customer.vo;

import org.springframework.stereotype.Component;

@Component("customerVO")
public class CustomerVO {
	private String id;
	private String title;
	private String writer_id;
	private String content;
	private String regDate;
	private String hit;
	private String files;	
	private String pub;
	
	public CustomerVO() {
		// TODO Auto-generated constructor stub
	}
	
	public CustomerVO(String id, String title, String writer_id, String content, String regDate, String hit,
			String files, String pub) {
		super();
		this.id = id;
		this.title = title;
		this.writer_id = writer_id;
		this.content = content;
		this.regDate = regDate;
		this.hit = hit;
		this.files = files;
		this.pub = pub;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter_id() {
		return writer_id;
	}
	public void setWriter_id(String writer_id) {
		this.writer_id = writer_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getHit() {
		return hit;
	}
	public void setHit(String hit) {
		this.hit = hit;
	}
	public String getFiles() {
		return files;
	}
	public void setFiles(String files) {
		this.files = files;
	}
	public String getPub() {
		return pub;
	}
	public void setPub(String pub) {
		this.pub = pub;
	}
	
	
}
	