<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	   String name1=request.getParameter("name");
	   String password=request.getParameter("password1");
	   String date=request.getParameter("userdate");
    %>
<body>
    <%
       
    String url="jdbc:sqlserver://localhost:1433;DatabaseName=weeklyreport"; //���ݿ������ַ���;
     
    String user="sa";                 //���ݿ��û���;
    String userpassword="12345678";              //���ݿ�����;
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); //������������;   
    
    Connection conn = DriverManager.getConnection(url,user,userpassword); //����Connection����;
    Statement stmt=conn.createStatement();  
    String sql="insert into system(name,password,Usedate)values('"+name1+"','"+password+"','"+date+"')";
    int count=stmt.executeUpdate(sql);
    if(count!=0) { %>
        <jsp:forward page="success_register.jsp"></jsp:forward>
    <%
    }else{  %>
        <jsp:forward page="failed_register.jsp"></jsp:forward>
    <% } 
    %>
</body>
</html>

