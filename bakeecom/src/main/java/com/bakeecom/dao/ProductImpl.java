package com.bakeecom.dao;
import java.io.Serializable;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bakeecom.model.Product;
@Repository("productDao")


public class ProductImpl implements ProductDao {
	
	 @Autowired
	 private SessionFactory sessionFactory;

	@Transactional(propagation=Propagation.SUPPORTS) 
	 public int insertRow(Product product) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  session.saveOrUpdate(product);
	  session.flush();
	  tx.commit();
	  Serializable pid = session.getIdentifier(product);
	  session.close();
	  return (Integer) pid;
	 }

	@Transactional(propagation=Propagation.SUPPORTS) 
	 public List getList() {
	  Session session = sessionFactory.openSession();
	  @SuppressWarnings("unchecked")
	  List productList = session.createQuery("from PRODUPL")
	    .list();
	  session.close();
	  return productList;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public Product getRowById(int pid) {
	  Session session = sessionFactory.openSession();
	  Product product = (Product) session.get(Product.class, pid);
	  return product;
	 }

	@Transactional(propagation=Propagation.SUPPORTS)
	 public int updateRow(Product product) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  session.saveOrUpdate(product);
	  tx.commit();
	  Serializable pid = session.getIdentifier(product);
	  session.close();
	  return (Integer) pid;
	}

	  @Transactional(propagation=Propagation.SUPPORTS)
	 public int deleteRow(int pid) {
	  Session session = sessionFactory.openSession();
	  Transaction tx = session.beginTransaction();
	  Product product = (Product) session.get(Product.class, pid);
	  session.delete(product);
	  tx.commit();
	  Serializable ids = session.getIdentifier(product);
	  session.close();
	  return (Integer) ids;
	 }
	 
	}
	