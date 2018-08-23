<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>

<%@ page import="java.sql.*" %>   
<%!
    public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
    public static final String DBURL = "jdbc:mysql://localhost:3306/mysite" ;
    public static final String DBUSER = "root" ;
    public static final String DBPASS = "123456" ;
%>
<% 
    String sourceID = request.getParameter("sourceID"); 
    String sourceName = request.getParameter("sourceName"); 
    String sourceURL = request.getParameter("sourceURL"); 
    String sourceType = request.getParameter("sourceType"); 
    if(sourceID==null || "".equals(sourceID.trim()) || sourceName==null ||"".equals(sourceName.trim()) || sourceURL==null || "".equals(sourceURL.trim()) || sourceType==null ||"".equals(sourceType.trim()) )
    {
        response.sendRedirect("fail.jsp");
    }
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
    String sql="INSERT INTO source(id,name,url,typeid) VALUES('"+sourceID+"','"+sourceName+"','"+sourceURL+"','"+sourceType+"')";     
    st = (Statement) conn.createStatement();    // 创建用于执行静态sql语句的Statement对象   
    int count = st.executeUpdate(sql);  // 执行插入操作的sql语句，并返回插入数据的个数   
    if(count>0)
    {
        response.sendRedirect("success_insert.jsp");
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