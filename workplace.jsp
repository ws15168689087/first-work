<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<%@ page import="com.mysql.jdbc.Driver" %> 
<%@ page import="java.sql.*" %> 
<%@ page language="java" %>
<html>
<body>
	<h1 align="center">本周工作安排</h1>
	<form name="form1" action="success_work.jsp" method=POST>
	<table border="1" align="center">
		<tr>
		<td>工作编号</td>
        <td>工作内容</td>
        <td>完成时间</td>
        <td>姓名</td>
        </tr>
        <tr>
        <td><input  type="text" name="bianhao"/></td>
        <td><input  type="text" name="neirong"/></td>
        <td><input  type="text" name="shijian"/></td>
        <td><input  type="text" name="name"/></td>
        </tr>
	</table>
<center><input type="submit" value="确认登记"></center>
</form>
</body>
</html> 