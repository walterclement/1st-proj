package com.bakeecom.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bakeecom.dao.CartDao;
import com.bakeecom.dao.CategoryDao;
import com.bakeecom.model.Cart;
import com.bakeecom.model.Cartuser;
import com.bakeecom.model.Order;
import com.bakeecom.model.Shipping;

@Service("cartService")
public class CartServiceImpl implements CartService {

	@Autowired
	CartDao cd;

	@Transactional(propagation = Propagation.SUPPORTS)
	public void add(Cart cart) {
		cd.add(cart);	
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List<Cart> getAllCart(String username) {
		return cd.getAllCart(username);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public void addbuy(Cartuser cud, String username) {
		cd.addbuy(cud,username);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public void saveshipment(Shipping shippingdetails, String username) {
		cd.saveshipment(shippingdetails,username);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List<Cartuser> getCartforuser(int sid) {
		return cd.getCartforuser(sid);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public void addord(Order order) {
		cd.saveorder(order);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public void update(Cart cart) {
		cd.update(cart);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public Cartuser getdetails(int sid) {
		return cd.getdetails(sid);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public void deletecartitem(int cid) {
		cd.deletecartitem(cid);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public void deleteallcartitem(String username) {
		cd.deleteallcartitem(username);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public Cart getcartitembyid(int cartitemid) {
		
		return cd.getCartdetbycid(cartitemid);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List<Order> getHistory(String username) {
		
		return cd.getHistory(username);
	}

}
