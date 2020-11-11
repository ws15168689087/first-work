<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<%@ page import="com.mysql.jdbc.Driver" %> 
<%@ page import="java.sql.*" %> 
<html>
<%
	String bh=request.getParameter("bianhao");
	String nr=request.getParameter("neirong");
	String sj=request.getParameter("shijian");
	String nm=request.getParameter("name");
%>
<body>
<% 
	String url="jdbc:sqlserver://localhost:1433;DatabaseName=weeklyreport"; //数据库连接字符串;
	String user="sa";                 //数据库用户名;
	String userpassword="12345678";              //数据库密码;
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); //加载驱动程序;   
	Connection conn = DriverManager.getConnection(url,user,userpassword); //创建Connection连接;
	Statement stmt=conn.createStatement();         
	String sql="insert into work(bianhao,neirong,shijian,name)values('"+bh+"','"+nr+"','"+sj+"','"+nm+"')";
	int count=stmt.executeUpdate(sql);
%>
<h1 align="center">登记成功！</h1>
<%
out.println("<meta http-equiv='refresh' content='3;url=default.jsp'> ");
%>
</body>
</html>