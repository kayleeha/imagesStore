package com.imagesStore.web.member.vo;

import org.springframework.stereotype.Component;

@Component("memberVO")
public class MemberVO {
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_gender;
	private String hp;
	private String sms_yn;
	private String email;	
	private String email_yn;
	private String member_birthday_y;
	private String member_birthday_m;
	private String member_birthday_d;
	private String member_birthday_gn;
	private String joinDate;
	private String del_yn;
	
	
	public MemberVO() {
		// TODO Auto-generated constructor stub
	}
	
	public MemberVO(String member_id, String member_pw, String member_name, String member_gender, String hp,
			String sms_yn, String email, String email_yn, String member_birthday_y, String member_birthday_m,
			String member_birthday_d, String member_birthday_gn, String joinDate, String del_yn) {
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_gender = member_gender;
		this.hp = hp;
		this.sms_yn = sms_yn;
		this.email = email;
		this.email_yn = email_yn;
		this.member_birthday_y = member_birthday_y;
		this.member_birthday_m = member_birthday_m;
		this.member_birthday_d = member_birthday_d;
		this.member_birthday_gn = member_birthday_gn;
		this.joinDate = joinDate;
		this.del_yn = del_yn;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getSms_yn() {
		return sms_yn;
	}
	public void setSms_yn(String sms_yn) {
		this.sms_yn = sms_yn;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmail_yn() {
		return email_yn;
	}
	public void setEmail_yn(String email_yn) {
		this.email_yn = email_yn;
	}
	public String getMember_birthday_y() {
		return member_birthday_y;
	}
	public void setMember_birthday_y(String member_birthday_y) {
		this.member_birthday_y = member_birthday_y;
	}
	public String getMember_birthday_m() {
		return member_birthday_m;
	}
	public void setMember_birthday_m(String member_birthday_m) {
		this.member_birthday_m = member_birthday_m;
	}
	public String getMember_birthday_d() {
		return member_birthday_d;
	}
	public void setMember_birthday_d(String member_birthday_d) {
		this.member_birthday_d = member_birthday_d;
	}
	public String getMember_birthday_gn() {
		return member_birthday_gn;
	}
	public void setMember_birthday_gn(String member_birthday_gn) {
		this.member_birthday_gn = member_birthday_gn;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	public String getDel_yn() {
		return del_yn;
	}
	public void setDel_yn(String del_yn) {
		this.del_yn = del_yn;
	}
}
	