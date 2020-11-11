<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<%@ page import="com.mysql.jdbc.Driver" %> 
<%@ page import="java.sql.*" %> 
<%@ page language="java" %>
<%@ page import="java.util.Date"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>

<html>
<%
	String name=request.getParameter("m1");
%>
<body>
<% 
	String url="jdbc:sqlserver://localhost:1433;DatabaseName=weeklyreport"; //数据库连接字符串;
	String user="sa";                 //数据库用户名;
	String userpassword="12345678";              //数据库密码;
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); //加载驱动程序;   
	Connection conn = DriverManager.getConnection(url,user,userpassword); //创建Connection连接;
	Statement stmt=conn.createStatement();         
	String sql="select * from work ";
	ResultSet rs = stmt.executeQuery(sql);
%>
<table border="1" align="center">
		<tr>
		<th>工作编号</th>
        <th>工作内容</th>
        <th>完成时间</th>
        <th>姓名</th>
        </tr>
       <%  while(rs.next()){%>
        <tr>
        <td><% out.print(rs.getString("bianhao"));%></td>
        <td><% out.print(rs.getString("neirong"));%></td>
        <td><% out.print(rs.getString("shijian"));%></td>
        <td><% out.print(rs.getString("name"));}%></td>
        </tr>
        
</table>
<%
out.println("<meta http-equiv='refresh' content='3;url=default.jsp'> ");
%>
</body>
</html>