package com.safziy.springmvc;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.safziy.vo.User;

// 通过注解的方式 来实现Controller
@Controller
@RequestMapping("/user")
public class UserController {

	@RequestMapping("/login")
	public String login(HttpSession session, String name, String pwd, ModelMap model) {
		if (name == null || pwd == null) {
			model.addAttribute("errMsg", "用户名或密码不能为空");
			return "forward:/user/login.jsp";
		}
		if (name.equals("safziy") && pwd.equals("123456")) {
			session.setAttribute("user", new User(1, name, pwd));
			return "redirect:/user/list.action";
		}
		model.addAttribute("errMsg", "用户名或密码错误");
		return "forward:/user/login.jsp";
	}

	@RequestMapping("/list")
	public String list(ModelMap model) {
		List<User> list = new ArrayList<User>();
		list.add(new User(1, "张三", "123456"));
		list.add(new User(2, "李四", "234567"));
		list.add(new User(3, "王五", "345678"));
		model.addAttribute("userList", list);
		return "forward:/user/list.jsp";
	}

	@RequestMapping("/register")
	public String register(String name, String pwd, ModelMap model) {
		if (name == null || name.trim().equals("") || pwd == null || pwd.trim().equals("")) {
			model.addAttribute("errMsg", "用户名或密码不能为空");
			return "forward:/user/register.jsp";
		}
		if (name.equals("safziy")) {
			model.addAttribute("errMsg", "用户名已存在");
			return "forward:/user/register.jsp";
		}
		return "redirect:/user/login.jsp";
	}

}
