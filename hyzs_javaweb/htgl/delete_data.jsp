<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>

<%@ page import="java.sql.*" %>   
<%!
    public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
    public static final String DBURL = "jdbc:mysql://localhost:3306/mysite?useUnicode=true&characterEncoding=UTF8" ;
    public static final String DBUSER = "root" ;
    public static final String DBPASS = "hyzs123456" ;
%>

<% 
    String news_id = request.getParameter("news_id");  
%>
<%
    Connection conn = null ;
    PreparedStatement pstmt = null ;
    ResultSet rs = null ;
    Statement st=null;
%>
<%
try
{
    Class.forName(DBDRIVER) ;
    conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS) ;
    String sql="delete from news where news_id = '"+news_id+"' ";
    st = (Statement) conn.createStatement();    // 创建用于执行静态sql语句的Statement对象   
    int count = st.executeUpdate(sql);  // 执行插入操作的sql语句，并返回插入数据的个数   
    if(count>0)
    {
        response.sendRedirect("success.jsp");
    } 
    else
    {
        response.sendRedirect("failed_delete.jsp");
    }          
}
catch(Exception e)    
{
    out.print(e) ;
}
finally
{
        //rs.close() ;
        //pstmt.close() ;
        conn.close() ;    // 如果直接关闭连接也可以
}
%> 
