<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>
    <head>
        <title>MIR 实验室工作进度登录网页</title>
        <meta charset=gb2312>   
    </head>
    <body>
        <h1 align="center">MIR 实验室工作进度登录网页</h1>
        <hr>                                           
        <h2><img src="redball.gif" alian="left">
            填写进度</h2>
        <form name=form1 action="login.jsp" method=post target=_blank align="center"> 
        <table align="center">
		<tr><td>登录名:</td><td><input type="text" name="name"></td></tr>
                	<tr><td>密码: </td><td><input type="password" name="password"></td></tr>
	   </table>
       <div style="text-align: center;">
                <input type="submit" value="登录">
        </div>    
        <div style="text-align: right;">
            <a href="register.jsp">账号注册</a>
        </div>
        </form>
         
        <br> 1.请务必在每星期五下午五点前填写完毕。过了星期六午夜，系统自动跳到下一周，就无法再填写本周的进度了。
        <br> 2.请务必每一栏都要填写，尤其是「本周预定完成事项」，一定要填入相关的「预定完成时间」。  
        <hr>
        <h2><img src="redball.gif" alian="left">
            资料列表</h2>
        <ul>
        <li>每周填写之资料： 
               <a target=_blank >本周</a>、
	           <a target=_blank >前一周</a>、
	           <a target=_blank >前两周</a>、
	           <a target=_blank >前三周</a>、
	           <a target=_blank >前四周</a>
        </li>

        <li>每个人的历史资料：   
        </li>
        <li><a target=_blank>每个人的最後一笔资料</a>
        </li>
        </ul>
        <hr>   
        <h2><img src="redball.gif" alian="left">
            有关本系统</h2>
        <ul>
            <li>本系统特点：超级简单易用，适合忙碌的管理者
            <li>想要把整套系统移植到自己的实验室使用吗？没问题，请直接和本系统发展者张智星</a>接洽。
        </ul>
        <hr>
    </body>
</html>