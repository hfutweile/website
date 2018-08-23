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
    public static final String DBURL = "jdbc:mysql://localhost:3306/mysite?useUnicode=true&characterEncoding=UTF8" ;
    public static final String DBUSER = "root" ;
    public static final String DBPASS = "hyzs123456" ;
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
    String sql = "SELECT * FROM news" ;
    pstmt = conn.prepareStatement(sql) ;
    rs = pstmt.executeQuery() ;
%>
<center>
        <table border="1" width="80%">
            <tr>
                <td>编号</td>
                <td>标题</td>
                <td>图片</td>
                <td>内容</td>
		        <td>时间</td>
		        <td>种类</td>
                <td>操作</td>
            </tr>
        <%
            while(rs.next()){
                String news_id = rs.getString(1) ;
                String news_title = rs.getString(2) ;
                String news_picture = rs.getString(3) ;
                String news_content = rs.getString(4) ;
		String news_time = rs.getString(5) ;
		String news_type = rs.getString(6) ;
        %>
            <tr>
                <td><%=news_id%></td>
                <td><%=news_title%></td>
                <td><%=news_picture%></td>
                <td><%=news_content%></td>
		<td><%=news_time%></td>
		<td><%=news_type%></td>
        <td>
			<form action="update_data.jsp" method="post">
        			<input type="hidden" name="news_id" value=<%=news_id%> />
				    <input type="hidden" name="news_type" value=<%=news_type%> />
        			<input type="submit" value="修改"/>
   		 	</form>
		</td>
            </tr>    
        <%
            }
        %>
        </table>
</center>
<%
}
catch(Exception e)   
{
    System.out.println(e) ;
}
finally
{
    rs.close() ;
    pstmt.close() ;
    conn.close() ;    // 如果直接关闭连接也可以
}
%>  
</html> 
