package com.bakeecom.handler;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;

import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.bakeecom.bean.UserBean;
import com.bakeecom.services.UserBeanServices;

 
@Component
public class Demohandler {
 
	@Autowired
	UserBeanServices userBeanServices;
	
	public UserBean initFlow(){
		return new UserBean();
	}
 
	public String validateDetails(UserBean userBean,MessageContext messageContext){
		String status = "success";
		if(userBean.getName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"name").defaultText("name cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getEmailid().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"emailid").defaultText("Emailid cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"password").defaultText("password cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getAddress().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"address").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getMobile().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"mobile").defaultText("mobile cannot be Empty").build());
			status = "failure";
		}
		List<UserBean> usrLt=userBeanServices.getList();
		for(UserBean usr:usrLt)
		{
			if(userBean.getName().equals(usr.getName()))
			{
				messageContext.addMessage(new MessageBuilder().error().source(
						"name").defaultText("UserName already exists..").build());
				status="failure";
			}
		}
	/*	if(userBean.getAddress().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"address").defaultText("address cannot be Empty").build());
			status = "failure";
		}
		*/
		if(status.equals("success"))
		{
			userBeanServices.insertRow(userBean);
		}
		return status;
	}
}