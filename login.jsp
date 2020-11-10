<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<%@ page import="com.mysql.jdbc.Driver" %> 
<%@ page import="java.sql.*" %> 
<%@ page language="java" %>
<html>
<%  String name=request.getParameter("name");
    String password=request.getParameter("password");
%>
<body>
<%

	String url="jdbc:sqlserver://localhost:1433;DatabaseName=weekly"; //数据库连接字符串;
 
	String user="sa";                 //数据库用户名;
	String userpassword="12345678";              //数据库密码;
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); //加载驱动程序;   
	Connection conn = DriverManager.getConnection(url,user,userpassword); //创建Connection连接;
	Statement stmt=conn.createStatement();         
	String sql="select name,password from system where system.name='"+name+"' AND system.password='"+password+"'";
	ResultSet rs = stmt.executeQuery(sql);
	if(rs.next()){ %>
		<jsp:forward page="success_login.jsp"></jsp:forward>
	<% 
	}else{  %>
		<jsp:forward page="failed_login.jsp"></jsp:forward>
	<% }
%>   
</body>
</html>    

