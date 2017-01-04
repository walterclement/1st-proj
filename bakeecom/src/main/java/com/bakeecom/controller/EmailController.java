package com.bakeecom.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bakeecom.bean.UserBean;
import com.bakeecom.controller.CartController;
import com.bakeecom.model.Order;
import com.bakeecom.services.CartService;
import com.bakeecom.services.UserBeanServices;

@Controller
public class EmailController {
	
	@Autowired
	private JavaMailSender mailSender;
	@Autowired 
	UserBeanServices userBeanService;
    @Autowired
    CartService itemService;
    @Autowired
    CartController ca;
	public EmailController() {
//		super();
		// TODO Auto-generated constructor stub
		System.out.println("inside controller");
	}

	@RequestMapping("/EmailForm")
	public String gotoHome(Model m)
	{
		String username=ca.username;
		List<UserBean> userLt=userBeanService.getList();
		List<Order> itemLt=itemService.getHistory(username);
		List<Order> items=new ArrayList<Order>(); 
		for(UserBean u:userLt)
		{
			if(u.getName().equals(username))
			{
				m.addAttribute("email",u.getEmailid() );
				break;
			}
		}
		for(Order i:itemLt)
		{
		if(i.getUsername().equals(username))
		{
			items.add(i);
		}
		}
		m.addAttribute("cart", items);
	
		return "EmailForm";
	}
	
	@RequestMapping(value="/sendEmail", method = RequestMethod.POST)
	public String doSendEmail(HttpServletRequest request) {
		// takes input from e-mail form
		String recipientAddress = request.getParameter("recipient");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		String from = "bakeecom91@gmail.com";
		
		// prints debug info
		System.out.println("To: " + recipientAddress);
		System.out.println("Subject: " + subject);
		System.out.println("Message: " + message);
		
		// creates a simple e-mail object
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(recipientAddress);
		email.setSubject(subject);
		email.setText(message);
		
		// sends the e-mail
		mailSender.send(email);
		
		// forwards to the view named "Result"
		return "Result";
	}
}