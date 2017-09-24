<%@page contentType="text/html;charset=utf-8"%>
<%@page import="java.sql.*"%>
<%
	String userName=request.getParameter("userName");
	String password=request.getParameter("password");
	//out.println("userName:"+userName);
	//out.println("password:"+password);
	Connection con;
	Statement sql;
	ResultSet rs;
	try{
	Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){}
    try
    {
    	String uri="jdbc:mysql://127.0.0.1/mycount";
    	String user="root";
    	String pad="";
    	con=DriverManager.getConnection(uri,user,pad);
    	sql=con.createStatement();
    	rs=sql.executeQuery("select * from baseinf");
    	while(rs.next())
    	{
    		if(rs.getString(1).equals(userName))
    		{
    			if(rs.getString(2).equals(password))
 %><jsp:forward page="mainWindow.jsp"/>
 <%
    		}
    		else
    		{
   				out.println("用户名或者密码错误，请重新登录！");
 %><a href="index.jsp">返回登录界面</a>
 <%
    		}
    	}
    }
    catch(SQLException e)
    {
    	out.println(e);
    }
%>