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

import com.bakeecom.bean.UserBean;
import com.bakeecom.model.Cart;
import com.bakeecom.model.Cartuser;
import com.bakeecom.model.Order;
import com.bakeecom.model.Product;
import com.bakeecom.model.Shipping;

@Repository("cartDao")
public class CartDaoImpl implements CartDao {
	
	@Autowired
	 private SessionFactory sessionFactory;

	@Transactional(propagation=Propagation.SUPPORTS)
	public void add(Cart cart) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(cart);
		  session.flush();
		  tx.commit();
		  Serializable cartid = session.getIdentifier(cart);
		  session.close();
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Cart> getAllCart(String username) {
		Session session = sessionFactory.openSession();
		return session.createQuery("from CART where USERNAME='"+username+"'").list();
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public void addbuy(Cartuser cud, String username) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(cud);
		  tx.commit();
		  Serializable cartuserid = session.getIdentifier(cud);
		  session.close();
		
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public void saveshipment(Shipping shippingdetails, String username) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		System.out.println("Shipping"+username);
		String mail=null;
		@SuppressWarnings({ "unchecked" })
		List<UserBean> beanModule=session.createQuery("from USER where NAME='"+username+"'").list();
	
		for(UserBean n:beanModule)
		{
			mail=n.getEmailid();
		}
		System.out.println(mail);
		shippingdetails.setMailId(mail);
		session.saveOrUpdate(shippingdetails);
		tx.commit();
		  Serializable shipid = session.getIdentifier(shippingdetails);
		  session.close();
		
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Cartuser> getCartforuser(int sid){
		Session session = sessionFactory.openSession();
		  return session.createQuery("from SHIPPEDCART where SHIPPINGDETAILS_SID='"+sid+"'").list();
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public void saveorder(Order order) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(order);
		  tx.commit();
		  Serializable orderid = session.getIdentifier(order);
		  session.close();
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public void update(Cart cart) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(cart);
		session.flush();
		  tx.commit();
		  Serializable cid = session.getIdentifier(cart);
		  session.close();
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public Cartuser getdetails(int sid) {
		Session session = sessionFactory.openSession();
		Cartuser cartuser = (Cartuser) session.get(Cartuser.class, sid);
		return cartuser;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public void deletecartitem(int cid) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.delete(getCartdetbycid(cid));
		  tx.commit();
		  session.close();
	}

	@Transactional(propagation=Propagation.SUPPORTS)
    public void deleteallcartitem(String username) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		System.out.println("username");
		session.createQuery("delete from CART where username='"+username+"'").executeUpdate();
		tx.commit();
		session.close();
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public Cart getCartdetbycid(int cid) {
		Session session = sessionFactory.openSession();
		System.out.println("CARTPOINT"+(Cart)session.get(Cart.class, cid));
		Cart cart=(Cart)session.get(Cart.class,cid);
		return cart;
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Order> getHistory(String username) {
		Session session = sessionFactory.openSession();
		return session.createQuery("from FINALTBL where USERNAME='"+username+"'").list();
	}
	
}