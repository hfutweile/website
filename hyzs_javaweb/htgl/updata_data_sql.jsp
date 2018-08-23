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
    String news_title = request.getParameter("news_title"); 
    String news_picture = request.getParameter("news_picture"); 
    String news_content = request.getParameter("news_content");
    String news_time = request.getParameter("news_time"); 
    String news_type = request.getParameter("news_type"); 
    if(news_id==null || "".equals(news_id.trim()) || news_title==null ||"".equals(news_title.trim()) || news_picture==null || "".equals(news_picture.trim()) || news_content==null ||"".equals(news_content.trim()) )
    {
        response.sendRedirect("failed.jsp");
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
    String sql="delete from news where news_id = '"+news_id+"' ";
    st = (Statement) conn.createStatement();    // 创建用于执行静态sql语句的Statement对象   
    int count = st.executeUpdate(sql);  // 执行插入操作的sql语句，并返回插入数据的个数   
    if(count<=0)
    {
        response.sendRedirect("fail.jsp");
    }  
    else
    {
        String sql2="INSERT INTO news(news_id,news_title,news_picture,news_content,news_time,news_type) VALUES('"+news_id+"','"+news_title+"','"+news_picture+"','"+news_content+"','"+news_time+"','"+news_type+"')";
        st = (Statement) conn.createStatement();    // 创建用于执行静态sql语句的Statement对象   
        count = st.executeUpdate(sql2);  // 执行插入操作的sql语句，并返回插入数据的个数   
        if(count>0)
        {
            response.sendRedirect("success.jsp");
        }  
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
