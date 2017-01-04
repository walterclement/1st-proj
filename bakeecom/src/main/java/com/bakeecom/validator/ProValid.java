package com.bakeecom.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.bakeecom.model.Product;

@Component
public class ProValid implements Validator {

	@Override
	public boolean supports(Class<?> c) {
		return Product.class.isAssignableFrom(c);
	}

	@Override
	public void validate(Object com, Errors errors) {
		Product regbean=(Product)com;
		
	}
	
}
