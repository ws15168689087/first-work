<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
    <%@ page import="com.mysql.jdbc.Driver" %> 
<%@ page import="java.sql.*" %> 
<%@ page language="java" %>
<%@ page import="java.util.Date"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>
    <head>
        <title>MIR ʵ���ҹ������ȵ�¼��ҳ</title>
        <meta charset=gb2312>   
    </head>
    <body>
        <h1 align="center">MIR ʵ���ҹ������ȵ�¼��ҳ</h1>
        <hr>                                           
        <h2><img src="redball.gif" alian="left">
            ��д����</h2>
        <form name=form1 action="login.jsp" method=post target=_blank align="center"> 
        <table align="center">
		<tr><td>��¼��:</td><td><input type="text" name="name"></td></tr>
                	<tr><td>����: </td><td><input type="password" name="password"></td></tr>
	   </table>
       <div style="text-align: center;">
                <input type="submit" value="��¼">
        </div>    
        <div style="text-align: right;">
            <a href="register.jsp">�˺�ע��</a>
        </div>
        </form>
         
        <br> 1.�������ÿ�������������ǰ��д��ϡ�������������ҹ��ϵͳ�Զ�������һ�ܣ����޷�����д���ܵĽ����ˡ�
        <br> 2.�����ÿһ����Ҫ��д�������ǡ�����Ԥ����������һ��Ҫ������صġ�Ԥ�����ʱ�䡹��  
        <hr>
        <h2><img src="redball.gif" alian="left">
            �����б�</h2>
        <ul>
        <li>ÿ����д֮���ϣ� 
               <a target=_blank >����</a>��
	           <a target=_blank >ǰһ��</a>��
	           <a target=_blank >ǰ����</a>��
	           <a target=_blank >ǰ����</a>��
	           <a target=_blank >ǰ����</a>
        </li>

        <li>ÿ���˵���ʷ���ϣ�
        
        	<%
        	String url="jdbc:sqlserver://localhost:1433;DatabaseName=weeklyreport"; //���ݿ������ַ���;
        	 String m1;
        	String user="sa";                 //���ݿ��û���;
        	String userpassword="12345678";              //���ݿ�����;
        	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); //������������;   
        	Connection conn = DriverManager.getConnection(url,user,userpassword); //����Connection����;
        	Statement stmt=conn.createStatement();         
        	String sql="select name from system ";
        	ResultSet rs = stmt.executeQuery(sql);%>
        	<form  name=form2 action="listEachPerson.jsp" method=POST>
        	<%while(rs.next()){ 
        		m1=rs.getString("name");%>
        		<a target=_blank href="listEachPerson.jsp" >
        		<% out.print(m1); %></a>,
        	<% }
        	%>   
        	</form>
        </li>
        <li><a target=_blank>ÿ���˵�����һ������</a>
        </li>
        </ul>
        <hr>   
        <h2><img src="redball.gif" alian="left">
            �йر�ϵͳ</h2>
        <ul>
            <li>��ϵͳ�ص㣺���������ã��ʺ�æµ�Ĺ�����
            <li>��Ҫ������ϵͳ��ֲ���Լ���ʵ����ʹ����û���⣬��ֱ�Ӻͱ�ϵͳ��չ��������</a>��Ǣ��
        </ul>
        <hr>
    </body>
</html>