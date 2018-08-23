<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*"%>
<head>
<title>连接MySQL</title>
</head>
<body>
<%
   //以下是关键部分
   Connection con=null;
   String DriverName="com.mysql.jdbc.Driver";
   String DBname="jdbc:mysql://localhost:3306/mysite";
   String DBuser="root";
   String DBcode="123456";
   ////以上是关键部分
   try
   {
       con=DriverManager.getConnection(DBname,DBuser,DBcode);
    }
   catch(SQLException e)
   {
       out.print(e.toString());
    }
%>
<p><b>JDBC连接数据库测试结果</b></p>
<%
   if(con!=null)
   {
       DatabaseMetaData dbmeta=con.getMetaData() ;
       out.print("<br><b>数据库产品：</b>"+dbmeta.getDatabaseProductName());
       out.print("<br><b>数据库版本：</b>"+dbmeta.getDatabaseProductVersion());
       out.print("<br><b>用户名：</b>"+dbmeta.getUserName());
       out.print("<br><b>测试连接成功 ! </b>"); 
       try{con.close();}
       catch(Exception e){}
   }
   else
       out.print("<br><b>连接失败</b>");
%>
</body>
</html>