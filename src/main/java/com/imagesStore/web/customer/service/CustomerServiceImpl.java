package com.imagesStore.web.customer.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.imagesStore.web.customer.dao.CustomerDAO;
import com.imagesStore.web.customer.vo.CustomerVO;
import com.imagesStore.web.member.vo.MemberVO;


@Service("customerService")
@Transactional(propagation = Propagation.REQUIRED)
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerDAO customerDAO;


	@Override
	public List<CustomerVO> getList(int page, String field, String query) throws ClassNotFoundException, SQLException {
		List customersList = null;
		customersList = customerDAO.selectAllMemberList();
		return customersList;
	}

	@Override
	public int getCount() throws ClassNotFoundException, SQLException {
		return customerDAO.getCount(id);
	}

	@Override
	public int insert(CustomerVO customerVO) throws SQLException, ClassNotFoundException {
		return customerDAO.insert(id);
	}

	@Override
	public int update(CustomerVO customerVO) throws SQLException, ClassNotFoundException {
		return customerDAO.update(id);
	}

	@Override
	public int delete(int id) throws ClassNotFoundException, SQLException {
		return customerDAO.delete(id);
	}


	

}
