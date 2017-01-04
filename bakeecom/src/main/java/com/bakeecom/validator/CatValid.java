package com.bakeecom.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.bakeecom.model.Category;


@Component
public class CatValid implements Validator {
	@Override
	public boolean supports(Class<?> a) {
		return Category.class.isAssignableFrom(a);
	}

	@Override
	public void validate(Object con, Errors errors) {
		Category catbean=(Category)con;
		
	}

}
