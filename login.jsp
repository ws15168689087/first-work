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

	String url="jdbc:sqlserver://localhost:1433;DatabaseName=weekly"; //���ݿ������ַ���;
 
	String user="sa";                 //���ݿ��û���;
	String userpassword="12345678";              //���ݿ�����;
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); //������������;   
	Connection conn = DriverManager.getConnection(url,user,userpassword); //����Connection����;
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

