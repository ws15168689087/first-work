<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<%@ page language="java" %> 
<%@ page import="com.mysql.jdbc.Driver" %> 
<%@ page import="java.sql.*" %>                
<html>
    <head>
        <title>�û���Ϣ��</title>
        <meta charset=gb2312>   
    </head>
    <body>
        <h1 align="center">ʵ�����û���Ϣ��</h1>
        <hr>                                           
        <table border="1" align="center">
        
        
        <th>name</th>
        <th>Usedate</th>
        <%
		String m1,m2;
    	String url="jdbc:sqlserver://localhost:1433;DatabaseName=weeklyreport"; //���ݿ������ַ���;
    	String user="sa";                 //���ݿ��û���;
    	String userpassword="12345678";              //���ݿ�����;
    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); //������������;   
    	Connection conn = DriverManager.getConnection(url,user,userpassword); //����Connection����;
    	Statement stmt=conn.createStatement(); 
    	ResultSet rs=stmt.executeQuery( "select name,Usedate from system" );
    	while(rs.next())
    	{
    		m1=rs.getString("name");
    		m2=rs.getString("Usedate");
    		%>
    		<tr>
    		<td><%out.print(m1);%></td>
    		<td><%out.print(m2);%></td>
    		</tr>
    		<% 
    	}
        %>
        
        </table>
    </body>
</html>               