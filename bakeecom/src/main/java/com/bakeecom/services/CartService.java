package com.bakeecom.services;

import java.util.List;

import com.bakeecom.model.Cart;
import com.bakeecom.model.Cartuser;
import com.bakeecom.model.Order;
import com.bakeecom.model.Shipping;

public interface CartService {
    
	public void add(Cart cart);
	
	public List<Cart> getAllCart(String username);

	//void odadd(Shipping sh);

	public void addbuy(Cartuser cud, String username);

	public void saveshipment(Shipping shippingdetails, String username);

	public List<Cartuser> getCartforuser(int sid);

	public void addord(Order order);

	public void update(Cart cart);

	public Cartuser getdetails(int sid);

	public void deletecartitem(int cid);

	public void deleteallcartitem(String username);
	
	public Cart getcartitembyid(int cartitemid);

	public List<Order> getHistory(String username);

}

