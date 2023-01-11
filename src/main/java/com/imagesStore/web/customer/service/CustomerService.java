package com.imagesStore.web.customer.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;

import com.imagesStore.web.customer.vo.CustomerVO;
import com.imagesStore.web.member.vo.MemberVO;



public interface CustomerService {
	
	List<CustomerVO> getList(int page, String field, String query) throws ClassNotFoundException, SQLException;

	int getCount() throws ClassNotFoundException, SQLException;


	int insert(CustomerVO customerVO) throws SQLException, ClassNotFoundException;


	int update(CustomerVO customerVO) throws SQLException, ClassNotFoundException;


	int delete(int id) throws ClassNotFoundException, SQLException;



}
