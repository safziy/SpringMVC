package com.safziy.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.safziy.vo.User;

@Controller
public class AjaxController {

	@RequestMapping("/ajax")
	public void ajax(String name,HttpServletResponse resp) throws IOException {
		String msg = "receive name : " + name;
		resp.getWriter().println(msg);
	}
	
	@RequestMapping("/json")
	@ResponseBody
	public List<User> json() {
		List<User> list = new ArrayList<User>();
		list.add(new User(1, "张三", "123456"));
		list.add(new User(2, "李四", "234567"));
		list.add(new User(3, "王五", "345678"));
		return list;
	}

}
