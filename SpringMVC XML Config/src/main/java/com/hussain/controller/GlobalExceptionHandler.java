package com.hussain.controller;

import java.io.IOException;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

	@ExceptionHandler(value= NullPointerException.class)
	public String nullPointer(Exception ex)
	{
		return "nullPointerException";
	}
	
	@ExceptionHandler(value= IOException.class)
	public String ioException(Exception e)
	{
		return "IOException";
	}
}
