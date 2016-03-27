<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/js/jquery-1.12.2.min.js" ></script>
<script type="text/javascript">
	$(function(){
		$("#ajaxSubmit").click(function(){
			$.post("ajax.action",{'name':$("#ajaxName").val()},function(data){
				alert(data);
			});
		});
		$("#ajaxGetJson").click(function(){
			$.post("json.action",function(data){
				var html="";
				for (var i = 0; i < data.length; i++) {
					html += "<tr><td>"+data[i].id+"</td><td>"+data[i].name+"</td><td>"+data[i].pwd+"</td></tr>";
				}
				$("#userDatas").html(html);
			});
		});
	});
</script>
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
	
	<p>文件上传</p>
	<fieldset>
		<legend>文件上传</legend>
		<form action="upload.action" method="POST" enctype="multipart/form-data">
			上传文件:<input type="file" name="file" /> <br/>
			<input type="submit" value="上传">
		</form>
	</fieldset>
	<fieldset>
		<legend>批量文件上传</legend>
		<form action="batchUpload.action" method="POST" enctype="multipart/form-data">
			上传文件:<input type="file" name="file" /> <br/>
			上传文件:<input type="file" name="file" /> <br/>
			<input type="submit" value="上传">
		</form>
	</fieldset>
	
	<p>Ajax</p>
	<fieldset>
		<legend>ajax提交</legend>
		<input type="text" id="ajaxName" /> <br/>
		<input type="button" id="ajaxSubmit" value="提交">
	</fieldset>
	<fieldset>
		<legend>Ajax获取json格式数据</legend>
		<input type="button" id="ajaxGetJson" value="Ajax获取Json">
		<table width="80%" align="center">
			<tr>
				<td>Id</td>
				<td>Name</td>
				<td>Pwd</td>
			</tr>
			<tbody id="userDatas"></tbody>
		</table>
	</fieldset>
	
	<p>登陆示例</p>
	<a href="/user/login.jsp">登陆页</a><br/>
	<a href="/user/register.jsp">注册页</a><br/>
	



	
</body>
</html>