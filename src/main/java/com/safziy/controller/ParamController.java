package com.safziy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// 通过注解的方式 来实现Controller
@Controller
@RequestMapping("param")
public class ParamController {

	@RequestMapping("hello")
	public String hello() {
		System.out.println("ParamController hello");
		return "data";
	}

	@RequestMapping(params = "method=add")
	public String add() {
		System.out.println("ParamController add");
		return "data";
	}

	@RequestMapping(params = "method=update", method = RequestMethod.GET)
	public String update() {
		System.out.println("ParamController update");
		return "data";
	}

}
