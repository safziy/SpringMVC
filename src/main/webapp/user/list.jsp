<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC</title>
</head>
<body>
	<p>Login</p>
	<fieldset>
		<legend>用户列表</legend>
		<table width="80%" align="center">
			<tr>
				<td>Id</td>
				<td>Name</td>
				<td>Pwd</td>
			</tr>
			<tbody id="userDatas">
				<c:forEach items="${userList }" var="user" >
					<tr>
						<td>${user.id }</td>
						<td>${user.name }</td>
						<td>${user.pwd }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</fieldset>
	
</body>
</html>