<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>
<%@ page import= "java.lang.String" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
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
<body style="background-image: url(style/images/aboutus_bg.png);background: contain;">

<!--这是导航-->
<div class="nav">
    <div class="nav_center">
        <div class="logo">
            <img src="style/images/logo.png" >
            <span style="text-align: center;font-size: 40px;color: #2F76CA;display: block;float: right;padding: 30px;">红云智胜</span>
        </div>
        <ul>
            <li><h2><a href="index.html" title="网站首页">网站首页</a></h2></li>
            <li><h2><a href="cpzx.jsp"  title="产品介绍">产品介绍</a></h2></li>
            <li><h2><a href="xwdt.jsp" title="新闻动态"  >新闻动态</a></h2></li>
            <li><h2><a href="gywm.html" title="关于我们"  >关于我们</a></h2></li>
            <li><h2><a href="jrwm.html" title="加入我们"  >加入我们</a></h2></li>

            <div class="clearfix"></div>
        </ul>
    </div>
</div>

<!--数据库设置代码-->
<%!
public static final String DBDRIVER = "com.mysql.jdbc.Driver" ;
public static final String DBURL = "jdbc:mysql://localhost:3306/mysite" ;
public static final String DBUSER = "root" ;
public static final String DBPASS = "hyzs123456" ;
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
    String sql = "SELECT news_id,news_title,news_picture,news_time FROM news where news_type='cp' ORDER BY news_time DESC limit 5" ;
    pstmt = conn.prepareStatement(sql) ;
    rs = pstmt.executeQuery() ;
%>

<!--这是新闻动态，需要交互-->
<div class="liebiao">

    <div class="liebiao_right_lx">
        <div class="liebiao_right_biaoti">
            <h1>产品介绍</h1>
        </div>

        <div class="main_news">
            <ul>
                <%
                    while(rs.next())
                    {
                        String news_id = rs.getString(1) ;
                        String news_title = rs.getString(2) ;
                        String news_picture = rs.getString(3) ;
                        String news_time = rs.getString(4);
                        String news_picture1 = news_picture.split("%%")[0];
                %>
                <li>

                    <div class="theme"><img src="style/images/<%=news_picture1%>"></div>
                    <div class="content">
                        <form action="chanpindemo.jsp" method="post">
                            <input type="hidden" name="news_id" value=<%=news_id%> />
                            <input type="submit" value=<%=news_title%> />
                        </form>
                    </div>
                </li>
                <%
                    }
                %>
            </ul>

        </div>

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

        <div class="web_pages">
            <ul class="pagelist">
                <li><a href='cpzxmore.jsp'>点击加载更多</a></li>




            </ul>
        </div>


    </div>
</div>


</div>


<!--  二维码 weixin.png -->
<div class="yejiao">
    <div class="yejiao_center">

        <div class="yejiao_right">
            <img src="style/images/erweima.png" alt="二维码" width="203px" height="203px">
            <p>微信公众号 | 关注我们</p>
        </div>
    </div>
</div>


<div class="banquan">
    <p>Copy right © 2018 北京红云智胜科技有限公司 All Rights Reserved &nbsp;&nbsp;&nbsp;&nbsp; </p>
</div>
<div class="yejiao_yingying">
    <img src="style/images/f_yy.png">
</div>
</body>
</html>
