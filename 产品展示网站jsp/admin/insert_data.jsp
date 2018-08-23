<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>

<%@ page import="java.sql.*" %> 
<html>
    <body>
        <form action="insert_data_sql.jsp" method="post">
                <center>
                    <h1>数据插入界面</h1>
                    <hr>
                    <hr>
                        <table>  
                                <tr> 
                                    <td>编号:</td> 
                                    <td><input type="text" name="sourceID" /> 
                                    </td> 
                                </tr> 
       
                                <tr> 
                                    <td>产品名称:</td> 
                                    <td><input type="text" name="sourceName" /> 
                                    </td> 
                                </tr> 
       
                                <tr> 
                                <td>图片名称:</td> 
                                <td><input type="text" name="sourceURL" /> 
                                </td> 
                                </tr> 
       
                                <tr> 
                                    <td>产品种类:</td> 
                                    <td><input type="text" name="sourceType" /> 
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
