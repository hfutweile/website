<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>

<% 
    String username = request.getParameter("username"); 
    String password = request.getParameter("password"); 
    if(username==null||"".equals(username.trim())||password==null||"".equals(password.trim()))
    { 
        response.sendRedirect("login.jsp"); 
        return; 
    }
%>

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
try
{
    Class.forName(DBDRIVER) ;
    conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS) ;
    String sql = "SELECT * FROM user" ;
    pstmt = conn.prepareStatement(sql) ;
    rs = pstmt.executeQuery() ;
    while(rs.next())
    {
        String user=rs.getString(1);
        String psd=rs.getString(2);
        if(user.equals(username)&&psd.equals(password))
        {
            response.sendRedirect("main.jsp"); 
            return;
        }
        else 
        {
            response.sendRedirect("login.jsp"); 
            return;
        }
    }
}
catch(Exception e)    
{
    out.print(e);
    System.out.println(e) ;
}
finally
{
    //rs.close();
    //pstmt.close() ;
    conn.close() ;    // 如果直接关闭连接也可以
}
%>
