package com.bakeecom.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bakeecom.dao.ProductDao;
import com.bakeecom.model.Product;

@Service("productService")
public class DataServiceImpl implements ProductService {

	@Autowired
	ProductDao productDao;

	@Transactional(propagation = Propagation.SUPPORTS)
	public int insertRow(Product product) {
		return productDao.insertRow(product);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List getList() {
		return productDao.getList();
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public Product getRowById(int pid) {
		return productDao.getRowById(pid);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateRow(Product product) {
		return productDao.updateRow(product);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int deleteRow(int pid) {
		return productDao.deleteRow(pid);
	}

}

