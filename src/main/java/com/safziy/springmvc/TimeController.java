package com.safziy.springmvc;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

// 通过注解的方式 来实现Controller
@Controller
public class TimeController {

	@RequestMapping("time")
	public ModelAndView time(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("time", new Date());
		mv.setViewName("time");
		return mv;
	}

}
