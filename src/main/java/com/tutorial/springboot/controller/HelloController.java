package com.tutorial.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;

@Controller

public class HelloController {
	
	@RequestMapping("/test")
	public String index() 
	{
		return "/index";
	}
	
	@RequestMapping("/hello")
	public String sayHello(@RequestParam("name") String name, Model model) 
	{
		model.addAttribute("name", name);
		return "/hello";
	}

}
