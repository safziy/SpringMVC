<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC</title>
</head>
<body>
	${hello }

<pre>
<!-- &lt; 替代 '<'  &gt; 替代 '>' <br/>/r/n 替换 '/r/n' &#9;替换 /tab -->
Controller配置方式<br/>
<br/>
第一种 URL对应Bean<br/>
如果要使用此类配置方式，需要在XML中做如下样式配置<br/>
<br/>
&lt;!-- 配置HandlerMapping --&gt;<br/>
&lt;bean class="org.springframework.web.servlet.handler.BeanNameUrlHandlerMapping" /&gt;<br/>
&lt;!-- 配置请求和处理器 --&gt;<br/>
&lt;bean name="/hello.do" class="com.safziy.springmvc.HelloController"/&gt;<br/>
<br/>
以上配置，访问/hello.do就会寻找ID为/hello.do的Bean，此类方式仅适用小型的应用系统<br/>
<br/>
第二种 为URL分配Bean<br/>
使用一个统一配置集合，对各个URL对应的Controller做关系映射<br/>
<br/>
&lt;!-- 为URL分配Bean 可以支持通配符 --&gt;<br/>
&lt;bean class="org.springframework.web.servlet.handler.SimpleUrlHandlerMapping"&gt;<br/>
&#9;&lt;property name="mappings"&gt;<br/>
&#9;&#9;&lt;props&gt; <br/>
&#9;&#9;&#9;&lt;prop key="/hello.do"&gt;helloController&lt;/prop&gt;<br/>
&#9;&#9;&#9;&lt;prop key="/hello*.do"&gt;helloController&lt;/prop&gt;<br/>
&#9;&#9;&lt;/props&gt;<br/>
&#9;&lt;/property&gt;<br/>
&lt;/bean&gt;<br/>
&lt;bean id="helloController" class="com.safziy.springmvc.HelloController" /&gt;<br/>
<br/>
此类配置还可以使用通配符，访问/hello.do时，Spring会把请求分配给helloController进行处理<br/>
<br/>
第三种 URL匹配Bean<br/>
如果定义的Controller名称规范，也可以使用如下配置<br/>
<br/>
&lt;!-- 将hello*.do交给helloController处理--&gt;<br/>
&lt;bean class="org.springframework.web.servlet.mvc.support.ControllerClassNameHandlerMapping" /&gt;<br/>
&lt;bean name="helloController" class="com.safziy.springmvc..HelloController" /&gt;<br/>
<br/>
第四种 注解<br/>
首先在配置文件中开启注解<br/>
<br/>
&lt;!-- 启用 spring 注解 --&gt;<br/>
&lt;context:component-scan base-package="com.safziy.springmvc." /&gt;<br/>
&lt;bean class="org.springframework.web.servlet.mvc.annotation.AnnotationMethodHandlerAdapter"/&gt;<br/>
<br/>
在编写类上使用注解@org.springframework.stereotype.Controller标记这是个Controller对象<br/>
使用@RequestMapping("/hello.do")指定方法对应处理的路径，这里只是简单示例，会有更复杂配置<br/>
代码类如下：<br/>
<br/>
package com.safziy.springmvc;<br/>
<br/>
import java.util.Date;<br/>
<br/>
import javax.servlet.http.HttpServletRequest;<br/>
import javax.servlet.http.HttpServletResponse;<br/>
import org.springframework.stereotype.Controller;<br/>
import org.springframework.web.bind.annotation.RequestMapping;<br/>
import org.springframework.web.servlet.ModelAndView;<br/>
<br/>
// 通过注解的方式 来实现Controller<br/>
@Controller<br/>
public class TimeController {<br/>
<br/>
&#9;@RequestMapping("time")<br/>
&#9;public ModelAndView time(HttpServletRequest request, HttpServletResponse response) {<br/>
&#9;&#9;ModelAndView mv = new ModelAndView();<br/>
&#9;&#9;mv.addObject("time", new Date());<br/>
&#9;&#9;mv.setViewName("time");<br/>
&#9;&#9;return mv;<br/>
&#9;}<br/>
<br/>
}<br/>

</pre>
</body>
</html>