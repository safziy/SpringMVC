package com.safziy.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

// 通过注解的方式 来实现Controller
@Controller
public class ResultController {

	// 可以使用HttpServlet API来实现结果的返回以及转发和重定向
	@RequestMapping("result1")
	public void result1(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.getWriter().println("ResultController result1");
	}

	// 可以使用HttpServlet API来实现重定向
	@RequestMapping("result2")
	public void result2(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.sendRedirect("result.jsp?result=ResultController-redirect");
	}

	// 可以使用HttpServlet API来实现转发
	@RequestMapping("result3")
	public void result3(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setAttribute("result", "ResultController forward");
		request.getRequestDispatcher("result.jsp").forward(request, response);
	}

	// 可以使用SpringMVC来实现转发和重定向
	@RequestMapping("result4")
	public String result4() {
		return "hello";
		// 下面写法也可以
		// return "forward:hello";
		// 重定向
		// return "redirect:result.jsp";

		// 有视图渲染器的时候 会被视图渲染器解释
		// 没有视图渲染器的时候 要写成下面的方式
		// return "hello.jsp";
		// 下面写法也可以
		// return "forward:hello.jsp";
		// 重定向
		// return "redirect:result.jsp";
	}

}
