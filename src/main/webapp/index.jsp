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
	<a href="data1.action?name=safziy">获取请求参数(域名称和参数名称一致)</a><br/>
	<a href="data2.action?uname=safziy">获取请求参数(域名称和参数名称不一致)</a><br/>
	<a href="data3.action?name=safziy&pwd=123456">获取请求参数(通过对象接受参数)</a><br/>
	<a href="data4.action?uname=safziy">使用ModelMap来传递参数到前段(转发)</a><br/>
	<a href="data5.action?uname=safziy">使用ModelMap来传递参数到前段(重定向)</a><br/>
	<a href="data6/safziy.action">Restful风格传递参数1</a><br/>
	<a href="safziy/123456/data7.action">Restful风格传递参数2</a><br/>
	
	<p>同一个Controller通过参数到达不同的处理方法(不重要)</p>
	<a href="param/hello.action">带参数1</a><br/>
	<a href="param.action?method=add">带参数2</a><br/>
	<a href="param.action?method=update">指定方法类型(GET|POST)</a><br/>
	
</body>
</html>