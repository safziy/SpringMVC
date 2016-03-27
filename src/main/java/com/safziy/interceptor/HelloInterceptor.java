package com.safziy.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class HelloInterceptor implements HandlerInterceptor {

	// 在请求处理的方法前执行
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		System.out.println("HelloInterceptor preHandle()  ----  执行前");
		return true;
	}

	// 在请求处理的方法执行完之后执行
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("HelloInterceptor postHandle()  ----  执行后");
	}

	// 在DispatcherServlet处理后执行 ----一般用来做清理工作
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("HelloInterceptor afterCompletion()  ----  清理");
	}

}
