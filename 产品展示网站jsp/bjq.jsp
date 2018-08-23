<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<!doctype html>

<html>
<head>
    <meta charset="utf-8">
    <title>产品中心</title>
    <meta name="keywords" content="背胶,背涂胶,粘结剂,填缝剂,地漏,瓷砖背涂胶,膏状背涂胶" />
    <meta name="description" content="公司主要生产背胶,背涂胶,粘结剂,填缝剂,地漏,瓷砖背涂胶,膏状背涂胶等,是一家专业化,全面化瓷胶辅料生产型公司.选购粘结剂,填缝剂,地漏," />
    <link href="style/css/mainstyle.css" rel="stylesheet">
    <script type="text/javascript" src="style/js/jquery.js"></script>
    <script type="text/javascript" src="style/js/superslide.2.1.js"></script>
    <link href="style/css/style.css" rel="stylesheet" type="text/css" />
    <link href="style/css/lrtk.css" rel="stylesheet" type="text/css" />
    <script src="style/js/modernizr.custom.97074.js"></script>

</head>
<body style="background: #e8e8e8;">
<div class="nav">
    <div class="nav_center">
        <div class="logo">
            <img src="style/images/logo.png">
        </div>
        <ul>
            <li><h2><a href="index.jsp" title="网站首页">网站首页</a></h2></li>
            <li><h2><a href="gygs.html" title="关于公司"  >关于公司</a></h2></li>
            <li><h2><a href="tfj.jsp" title="产品中心"  >产品中心</a></h2></li>
            <li><h2><a href="index.jsp#news" title="新闻资讯"  >新闻资讯</a></h2></li>
            <li><h2><a href="hzal.html" title="合作案例"  >合作案例</a></h2></li>
            <li><h2><a href="lxwm.html" title="联系我们"  >联系我们</a></h2></li>
            <div class="clearfix"></div>
        </ul>
    </div>
</div>

<!-- 关于公司的简介，左边的导航-->
<div class="liebiao">
    <div class="liebiao_left">
        <div class="liebiao_biaoti">
            <h1>产品中心<br>
            </h1>
        </div>

        <!--lwllwllwl在哪一个界面时，<dt class='hover'> -->
        <div class="liebiao_fenlei">
            <dl>
                <dt><a  href="tfj.jsp" >填缝剂</a></dt>

                <dt><a  href="fscl.jsp" >防水材料</a></dt>

                <dt class='hover'><a href='bjq.jsp'>背涂胶</a></dt>

                <dt><a  href="zcj.jsp">真瓷胶</a></dt>

                <dt><a  href="njj.jsp" >粘结剂（瓷砖胶）</a></dt>

                <dt><a  href="dl.jsp" >地漏</a></dt>

            </dl>
        </div>
    </div>

<!--数据库设置代码-->
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

    <div class="liebiao_right">
        <div class="liebiao_right_biaoti">
            <!--lwllwllwl
            1.在哪一个类别，这里<h1>后面的文字就改成哪一类
            2.后面是某一类别所有的产品列表。需要图片和名称
             -->
            <h1>背胶漆<span class="fr">当前位置：<a href='index.jsp'>主页</a> > <a href=#'>产品中心</a> >  </span></h1>
        </div>

        <div class="articleBox">
            <ul>
                <%
                try
                {
                    Class.forName(DBDRIVER) ;
                    conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS) ;
                    String sql = "SELECT * FROM source where typeid='3' " ;
                    pstmt = conn.prepareStatement(sql) ;
                    rs = pstmt.executeQuery() ;
                    while(rs.next())
                    {
                        String name=rs.getString(2);
                        String url=rs.getString(3);
                        %>
                            <li>

                                    <a href="" class="fl"><img src="style/images/<%=url%>" >
                                        <div class="fr">
                                            <h2 class="eps"><%=name%> </h2>
                                        </div></a>
                            </li>
                        <%
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
            </ul>
        </div>

    </div>
</div>

<div class="yejiao">
    <div class="yejiao_center">

        <div class="yejiao_right">
            <img src="style/images/weixin.png" alt="二维码">
            <p>微信公众号 | 关注贝邦</p>
        </div>
    </div>
</div>


<div class="banquan">
    <p> Copy right ©江苏淮安贝邦建材有限公司 &nbsp;&nbsp;&nbsp;&nbsp; </p>
</div>
<div class="yejiao_yingying">
    <img src="style/images/f_yy.png">
</div>
</body>
</html>