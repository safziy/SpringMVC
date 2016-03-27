package com.safziy.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.safziy.vo.User;

public class LoginInterceptor implements HandlerInterceptor {
	private List<String> allowPaths;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		for (String path : allowPaths) {
			if(request.getRequestURI().endsWith(path)){
				return true;
			}
		}
		User user = (User)request.getSession().getAttribute("user");
		if(user != null){
			return true;
		}
		response.sendRedirect(request.getContextPath() + "/user/login.jsp");
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}
	
	public void setAllowPaths(List<String> allowPaths) {
		this.allowPaths = allowPaths;
	}

}
