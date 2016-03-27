<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC</title>
</head>
<body>
	<p>Register</p>
	<fieldset>
		<legend>注册</legend>
		<form action="/user/register.action" method="POST">
			<c:if test="${errMsg != null}">
				<span>${errMsg }</span><br/>
			</c:if>
			<input type="text" name="name" /><br/>
			<input type="password" name="pwd" /><br/>
			<input type="submit" value="注册" /><br/>
		</form>
	</fieldset>
	
</body>
</html>