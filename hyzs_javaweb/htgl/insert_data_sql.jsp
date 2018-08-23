<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>

<%@ page import="java.sql.*" %>   
<html>
<head>
    <meta charset="utf-8">
    <title>产品介绍</title>
    <meta name="keywords" content="人工智能,计算机视觉" />
    <meta name="description" content="北京红云智胜科技有限公司专注于人工智能，系国内首家通过人工智能方法解决心脑血管疾病和心理疾病的公司，公司全员具有人工智能相关领域硕士及以上学历，在人工智能、计算机视觉等领域拥有扎实且先进的理论基础和丰富的项目经验。公司目前与阜外心血管医院等多家医院合作，致力于用科学创造社会价值，为人们的身体健康和心理健康提供帮助。" />
    <link href="style/css/mainstyle.css" rel="stylesheet">

    <link href="style/css/style.css" rel="stylesheet" type="text/css" />
    <link href="style/css/lrtk.css" rel="stylesheet" type="text/css" />
</head>
<body>
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
    String sql="INSERT INTO news(news_id,news_title,news_picture,news_content,news_time,news_type) VALUES('"+news_id+"','"+news_title+"','"+news_picture+"','"+news_content+"','"+news_time+"','"+news_type+"')";     
    st = (Statement) conn.createStatement();    // 创建用于执行静态sql语句的Statement对象   
    int count = st.executeUpdate(sql);  // 执行插入操作的sql语句，并返回插入数据的个数   
    if(count>0)
    {
        response.sendRedirect("success.jsp");
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

</body>
