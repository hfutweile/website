<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>
<html> 
 <head>  
 <title>登录页面</title> 
 </head> 
  
 <body> 
 <form action="login_action.jsp" method="post">
<center>
    <h1>后台管理界面</h1>
    <hr>
    <hr>
        <table> 
                <tr> 
                 <td colspan="2">登录窗口</td> 
                </tr> 
                <tr> 
                 <td>用户名：</td> 
                 <td><input type="text" name="username" /> 
                 </td> 
                </tr> 
                <tr> 
                 <td>密码：</td> 
                 <td><input type="password" name="password" /> 
                 </td> 
                </tr> 
                <tr> 
                 <td colspan="2"><input type="submit" value="登录" /> 
                 </td> 
                </tr> 
               </table> 
</center> 
 </form> 
</body> 
</html> 