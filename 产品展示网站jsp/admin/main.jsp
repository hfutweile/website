<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>  

<html>

    <center><h1>后台管理界面</h1></center>
    <h5><a href="operator.jsp">数据操作</a></h5>
<hr>
<hr>
<%!
    public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
    public static final String DBURL = "jdbc:mysql://localhost:3306/mysite" ;
    public static final String DBUSER = "root" ;
    public static final String DBPASS = "123456" ;
%>
<%
    Connection conn = null ;
    PreparedStatement pstmt = null ;
    ResultSet rs = null ;
%>
<%
try{
    Class.forName(DBDRIVER) ;
    conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS) ;
    String sql = "SELECT * FROM source" ;
    pstmt = conn.prepareStatement(sql) ;
    rs = pstmt.executeQuery() ;
%>
<center>
        <table border="1" width="80%">
            <tr>
                <td>编号</td>
                <td>产品名称</td>
                <td>图片名称</td>
                <td>产品种类</td>
                <td>操作</td>
            </tr>
        <%
            while(rs.next()){
                String id = rs.getString(1) ;
                String name = rs.getString(2) ;
                String url = rs.getString(3) ;
                String type = rs.getString(4) ;
        %>
            <tr>
                <td><%=id%></td>
                <td><%=name%></td>
                <td><%=url%></td>
                <td><%=type%></td>
                <td><a href='update_data.jsp'>修改</a> </td>
            </tr>    
        <%
            }
        %>
        </table>
</center>
        <%
        }catch(Exception e)    {
            System.out.println(e) ;
        }finally{
            rs.close() ;
            pstmt.close() ;
            conn.close() ;    // 如果直接关闭连接也可以
        }
        %> 
<%
%> 
</html> 
