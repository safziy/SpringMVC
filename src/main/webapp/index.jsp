<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC</title>
</head>
<body>
	<p>Spring MVC</p>
	<a href="hello.do">Hello Spring MVC</a><br/>
	<a href="time.action">Time</a><br/>
	
	<p>跳转结果的方式</p>
	<a href="result1.action">使用HttpServlet返回结果</a><br/>
	<a href="result2.action">使用HttpServlet重定向</a><br/>
	<a href="result3.action">使用HttpServlet转发</a><br/>
	<a href="result4.action">使用SpringMVC来实现转发和重定向</a><br/>
	
	<p>数据的处理</p>
	<a href="data1.action?name=safziy">域名称和参数名称一致</a><br/>
	<a href="data2.action?uname=safziy">域名称和参数名称不一致</a><br/>
	<a href="data3.action?name=safziy&pwd=123456">通过对象接受参数</a><br/>
	<a href="result4.action">使用SpringMVC来实现转发和重定向</a><br/>
</body>
</html>