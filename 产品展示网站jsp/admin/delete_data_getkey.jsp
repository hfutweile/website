<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>

<%@ page import="java.sql.*" %> 
<html>
    <body>
        <form action="delete_data.jsp" method="post">
                <center>
                    <h1>数据删除界面</h1>
                    <hr>
                    <hr>
                        <table>  
                                <tr> 
                                 <td>编号:</td> 
                                 <td><input type="text" name="sourceID" /> 
                                 </td> 
                                </tr> 
                                <tr> 
                                 <td colspan="2"><input type="submit" value="提交" /> 
                                 </td> 
                                </tr> 
                               </table> 
                </center> 
                 </form> 
    </body>
</html>
