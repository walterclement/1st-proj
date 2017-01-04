package com.bakeecom.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bakeecom.handler.Checkouthandler;
import com.bakeecom.model.Cart;
import com.bakeecom.model.Cartuser;
import com.bakeecom.model.Order;
import com.bakeecom.model.Shipping;
import com.bakeecom.services.CartService;
import com.bakeecom.services.ProductService;

@Controller
public class OrderController {
	
	@Autowired
	CartService cs;
	
	@Autowired
	ProductService ps;

	@Autowired
	CartController cc;
	

	String username;
	
	@RequestMapping(value = "/saveorder")
	public String saveorder(Map<String, Object> map) {
		
		Cartuser updatedshipping= Checkouthandler.getUc();
		Order order = new Order();
		DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
		// Get the date today using Calendar object.
		// Calendar cal= Calendar.getInstance();
		Date today = Calendar.getInstance().getTime();
		// Using DateFormat format method we can create a string
		// representation of a date with the defined format.
		String reportDate = df.format(today);
		order.setOrderdate(reportDate);
		order.setStatus("Shipping");
		System.out.println(updatedshipping.getShippingdetails().getSid());
		int sid = updatedshipping.getShippingdetails().getSid();
		order.setCartdetails(updatedshipping);
		System.out.println(sid);
		username = cc.sample();
		order.setUsername(username);
		System.out.println("ordercontroller" + username);
		// Print what date is today!
		System.out.println("Report Date: " + reportDate);
		List<Cart> cu = cs.getAllCart(username);
		for (int ci = 0; ci < cu.size(); ci++) 
		{
			int prodquan=cu.get(ci).getQuantity();
			order.setQuantity(prodquan);
			double totprice=cu.get(ci).getTotalprice(); 
			order.setTotalprice(totprice);
			String cartprdnmae = cu.get(ci).getProduct().getName();
			Double crtprdprice = cu.get(ci).getProduct().getPrice();
			order.setProductname(cartprdnmae);
			order.setPoductprice(crtprdprice);
			cs.addord(order);
		}
		
		//or.send1(updatedshipping, order);
		String toAddr = updatedshipping.getShippingdetails().getMailId();
		System.out.println("SENDMAIL"+toAddr);
		String fromAddr = "vasan.v17@gmail.com";

		// email subject
		String subject = "Order Conformation";

		// email body
		String body = "Hai" + " " + username + "." + System.getProperty("line.separator") + "your OrderID="
				+ order.getOrderId() + System.getProperty("line.separator") + "Ordered Date=" + order.getOrderdate()
				+ System.getProperty("line.separator") + "Shippment Details" + System.getProperty("line.separator")
				+ updatedshipping.getShippingdetails().getSname() + System.getProperty("line.separator") + updatedshipping.getShippingdetails().getAddr1() + ","
				+ updatedshipping.getShippingdetails().getCity() + "-" + updatedshipping.getShippingdetails().getPincode() + System.getProperty("line.separator")
				+ System.getProperty("line.separator") + "Grand Total:" + updatedshipping.getGrandtotal()
				+ System.getProperty("line.separator") + "It wil arrive as soon as posile"
				+ System.getProperty("line.separator") + "Thanks to begin with us."
				+ System.getProperty("line.separator") + System.getProperty("line.separator")
				+ System.getProperty("line.separator") + System.getProperty("line.separator") + "------------"
				+ System.getProperty("line.separator") + "Electronics";
		
		
		
		cs.deleteallcartitem(username);
		map.put("Orders",order);
		return "admin";
	}
	@RequestMapping("/payments")
	public String gotoH(@ModelAttribute("comd")Shipping comd,HttpServletRequest req,Model m) {
		List<Order> itemLt=cs.getHistory(username);
		List<Order> items=new ArrayList<Order>(); 
		
		for(Order i:itemLt)
		{
		if(i.getUsername().equals(username))
		{
			items.add(i);
		}
		}
		m.addAttribute("cart", items);
		return "payment";
	}


}
