package com.hussain.controller;

import java.io.IOException;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hussain.entity.Student;

@Controller
public class HelloServlet {
	
	
	@InitBinder
	public void databinder(WebDataBinder binder)
	{
		binder.setDisallowedFields(new String[] {"studentMobile"});
	}

	@RequestMapping("/")
	public ModelAndView home() throws Exception
	{
		/*String exc = "IOException";
		if(exc.equalsIgnoreCase("Null_Pointer"))
		{
			throw new NullPointerException("Null pointer exception");
		}
		
		else if(exc.equalsIgnoreCase("IOException"))
		{
			throw new IOException("IOException");
		}*/
		ModelAndView mav = new ModelAndView("home");
		//mav.addObject("msg","Hii Hussain");
		return mav;
	}
	
	
	@ModelAttribute
	public void methodAttr(Model model)
	{
		model.addAttribute("msg","Hi Welcome to Hussain College of Engineering");
	}
	
	@RequestMapping(value="/welcome" , method=RequestMethod.POST)
	public ModelAndView welocme(@Valid @ModelAttribute("st") Student st , BindingResult result)
	{
		if(result.hasErrors())
		{
			ModelAndView mav = new ModelAndView("home");
			return mav;
		}
		ModelAndView mav = new ModelAndView("welcome");
		//String name = getvar.get("studentName");
		//String hobby = getvar.get("studentHobby");
		
		/*Student st = new Student();
		st.setStudentName(name);
		st.setStudentHobby(hobby);*/
		//mav.addObject("msg","Hello in Spring mvc");
	//	mav.addObject("st", st);
		return mav;
	}
	
	
}
