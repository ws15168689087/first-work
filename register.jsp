<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>
    <head>
		<title>账号注册</title>
	</head>
     <body>
		<form name="form1" action="register2.jsp" method=POST>
		<center><h2>账号注册</h2></center>
		<table align="center">
		 			<tr>
                    		<td>用户名：</td>
                    		<td><input type="text" name="name"></td>
                	</tr>
                	<tr>
                    		<td>密码：</td>
                    		<td><input type="password" name="password1"></td>
                	</tr>
                	<tr>
                    		<td>生日：</td>
                    		<td><input type="text" name="userdate"></td>
                	</tr>
                	
		</table >
  		<center><input type="submit" value="确认注册"></center>
  		</form>
	</body>
</html>