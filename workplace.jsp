<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<%@ page import="com.mysql.jdbc.Driver" %> 
<%@ page import="java.sql.*" %> 
<%@ page language="java" %>
<html>
<body>
	<h1 align="center">���ܹ�������</h1>
	<form name="form1" action="success_work.jsp" method=POST>
	<table border="1" align="center">
		<tr>
		<td>�������</td>
        <td>��������</td>
        <td>���ʱ��</td>
        <td>����</td>
        </tr>
        <tr>
        <td><input  type="text" name="bianhao"/></td>
        <td><input  type="text" name="neirong"/></td>
        <td><input  type="text" name="shijian"/></td>
        <td><input  type="text" name="name"/></td>
        </tr>
	</table>
<center><input type="submit" value="ȷ�ϵǼ�"></center>
</form>
</body>
</html> 