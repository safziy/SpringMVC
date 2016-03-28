package com.safziy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.safziy.vo.User;

// 通过注解的方式 来实现Controller
@Controller
public class DataController {

	@RequestMapping("/data1")
	public String data1(String name) {
		System.out.println(name);
		return "data";
	}

	@RequestMapping("/data2")
	public String data2(@RequestParam(value = "uname") String name) {
		System.out.println(name);
		return "data";
	}
	
	@RequestMapping("/data3")
	public String data3(User user) {
		System.out.println(user);
		return "data";
	}
	
	@RequestMapping("/data4")
	public String data4(@RequestParam(value = "uname") String name,ModelMap model) {
		model.addAttribute("data", name);
		return "data";
	}
	
	@RequestMapping("/data5")
	public String data5(@RequestParam(value = "uname") String name,ModelMap model) {
		model.addAttribute("result", name);
		return "redirect:result.jsp";
	}
	
	// data6/safziy 
	@RequestMapping("/data6/{name}")
	public String data6(@PathVariable String name,ModelMap model) {
		model.addAttribute("data", name);
		return "data";
	}
	
	@RequestMapping("/{name}/{pwd}/data7")
	public String data7(@PathVariable String pwd,@PathVariable String name,ModelMap model) {
		model.addAttribute("data", name);
		return "data";
	}

}
