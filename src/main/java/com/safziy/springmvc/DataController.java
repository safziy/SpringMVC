package com.safziy.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.safziy.vo.User;

// 通过注解的方式 来实现Controller
@Controller
public class DataController {

	@RequestMapping("data1")
	public String data1(String name) {
		System.out.println(name);
		return "data";
	}

	@RequestMapping("data2")
	public String data2(@RequestParam(value = "uname") String name) {
		System.out.println(name);
		return "data";
	}
	
	@RequestMapping("data3")
	public String data3(User user) {
		System.out.println(user);
		return "data";
	}

}
