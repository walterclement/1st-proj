package com.bakeecom.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bakeecom.bean.UserBean;
import com.bakeecom.dao.UserBeanDAO;



@Service("userBeanService")
public class UserBeanServiceImpl implements UserBeanServices {
	@Autowired
	 UserBeanDAO userBeanDAO;

	@Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(UserBean use) {
	  return userBeanDAO.insertRow(use);
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  return userBeanDAO.getList();
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public UserBean getRowById(int id) {
	  return userBeanDAO.getRowById(id);
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(UserBean use) {
	  return userBeanDAO.updateRow(use);
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  return userBeanDAO.deleteRow(id);
	 }

}
