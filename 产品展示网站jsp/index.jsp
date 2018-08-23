<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>江苏淮安贝邦建材有限公司</title>
    <meta name="keywords" content="背胶,背涂胶,粘结剂,填缝剂,地漏,瓷砖背涂胶,膏状背涂胶" />
    <meta name="description" content="公司主要生产背胶,背涂胶,粘结剂,填缝剂,地漏,瓷砖背涂胶,膏状背涂胶等,是一家专业化,全面化瓷胶辅料生产型公司.选购粘结剂,填缝剂,地漏," />
    <link href="style/css/mainstyle.css" rel="stylesheet">
    <script type="text/javascript" src="style/js/jquery.js"></script>
    <script type="text/javascript" src="style/js/superslide.2.1.js"></script>
    <link href="style/css/style.css" rel="stylesheet" type="text/css" />
    <link href="style/css/lrtk.css" rel="stylesheet" type="text/css" />
    <script src="style/js/modernizr.custom.97074.js"></script>

</head>
<body>
<!--这是导航-->
<div class="nav">
    <div class="nav_center">
        <div class="logo">
            <img src="style/images/logo.png" >
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

<!--关于首页显示的滑动图片，有三张固定图片:1.jpg/2.jpg/3.jpg-->
<div class="fullSlide">
        <div class="bd">
            <ul style="position: relative; width: 1349px; height: 600px;">
                <li  _src="url(style/images/1.jpg)" style="position: absolute; width: 1349px; left: 0px; top: 0px; background-image: url('style/images/1.jpg'); display: list-item;"><a href=""></a></li>
                <li _src="url(style/images/2.jpg)" style="position: absolute; width: 1349px; left: 0px; top: 0px; background-image: url('style/images/2.jpg'); display: list-item;"><a href=""></a></li>
                <li _src="url(style/images/3.jpg)" style="position: absolute; width: 1349px; left: 0px; top: 0px; background-image: url('style/images/3.jpg'); display: list-item;"><a href=""></a></li>
            </ul>
        </div>
        <div class="hd"><ul></ul></div>
        <span class="prev" style="opacity: 0.5; display: none;"></span>
        <span class="next" style="opacity: 0.5; display: none;"></span>
    </div>
<script type="text/javascript">
        $(".fullSlide").hover(function(){
                    $(this).find(".prev,.next").stop(true, true).fadeTo("show", 0.5)
                },
                function(){
                    $(this).find(".prev,.next").fadeOut()
                });
        $(".fullSlide").slide({
            titCell: ".hd ul",
            mainCell: ".bd ul",
            effect: "fold",
            autoPlay: true,
            autoPage: true,
            trigger: "click",
            startFun: function(i) {
                var curLi = jQuery(".fullSlide .bd li").eq(i);
                if ( !! curLi.attr("_src")) {
                    curLi.css("background-image", curLi.attr("_src")).removeAttr("_src")
                }
            }
        });
    </script>
<!--fullSlide end-->

<!--关于公司介绍-->
<div class="aboutus">
    <div class="aboutus_center">
        <div class="shang">
            <div class="shang_left">
            <h1><span ></span> INTRODUCTION</h1>
            <h2 style="color: #D07447;">关于公司</h2>
            </div>
        </div>
        <div class="xia">
            <div class="xia_left">

                <img id="testimg" src="style/images/about1.png" alt="" width="296px" height="281px" style="cursor: pointer;margin-top: 20px;">


                </div>
            <div class="xia_zhong">
                <p>江苏淮安贝邦建材有限公司是一家专业生产瓷砖辅助产品，本公司成立于2000年，是一家研发、生产、销售专业化建筑生产企业。 公司主要生产地漏、纯铜地漏、防虫地漏、防臭地漏填缝剂、美缝剂、防水、瓷砖胶、铝合金修边线系列、不锈钢修边线系列等，是一家专业化，全面化生产厂家。
                    <br><br>    公司主打品牌有“金贝利”、"贝利邦"等畅销品牌系列，多年来一直被新老客户所青睐。
                        公司经过十几年的发展，销售网点遍布全国，产品畅销国内外。竭诚欢迎各地的客户来函来电洽谈业务和提出宝贵意见！
                </p>
            </div>

            <div class="" style="float: right;margin-top: 20px;">
                <img src="style/images/about2.png" alt="公司简介">
            </div>


    </div>
    </div>
</div>

<!--产品列表-->
<div class="chanpin">
    <div class="chanpin-center">
        <ul>

            <li><h3><a href="tfj.jsp" title="">查看全部产品</a></h3></li>
            <div class="clearfix"></div>
        </ul>
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

<!-- 刘伟乐刘伟乐！！！！！！！！！！     产品图片；类别名称；herf指向那一类别的网页    例如：tfj.jsp(填缝剂)  -->
<div class="chanpin-liebiao">
    <div id=demo style="overflow:hidden;width:750;margin-top: 30px;" align=center>
        <table border=0 align=center cellpadding=1 cellspacing=1 cellspace=0 >
            <tr><td valign=top bgcolor=ffffff id=marquePic1>
                <table width='100%' border='0' cellspacing='0'><tr>
                        <%
                        try
                        {
                            Class.forName(DBDRIVER) ;
                            conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS) ;
                            String sql = "SELECT * FROM source" ;
                            pstmt = conn.prepareStatement(sql) ;
                            rs = pstmt.executeQuery() ;
                            while(rs.next())
                            {
                                String url=rs.getString(3);
                                String typeid=rs.getString(4);
                                String sql1 = "SELECT typepy,typename FROM type where typeid='"+typeid+"' " ;
                                PreparedStatement pstmt1 = conn.prepareStatement(sql1) ;
                                ResultSet rs1 = pstmt1.executeQuery();
                                while(rs1.next())
                                {
                                    String typepy=rs1.getString(1);
                                    String typename=rs1.getString(2);
                                    %>
                                    <td align=center><a href="<%=typepy%>.jsp" style="color: #353535;font-size: 15px;font-weight: bold;"><img src="style/images/<%=url%>"  width="230" height="173" border="0" ><br> <%=typename%><br></a></td>
                                    <%
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


                </tr></table>
            </td><td id=marquePic2 valign=top></td></tr>
        </table></div>
    <script type="text/javascript">
        var speed=50
        marquePic2.innerHTML=marquePic1.innerHTML
        function Marquee(){
            if(demo.scrollLeft>=marquePic1.scrollWidth){
                demo.scrollLeft=0
            }else{
                demo.scrollLeft++
            }
        }
        var MyMar=setInterval(Marquee,speed)
        demo.onmouseover=function() {clearInterval(MyMar)}
        demo.onmouseout=function() {MyMar=setInterval(Marquee,speed)}
    </script>
</div>

<!--新闻资讯-->
<div class="news" >    <a name="news"></a>
    <div class="news-center">
        <ul>

            <div class="clearfix"></div>
        </ul>
    </div>
</div>

<div class="news_bg">
    <div class="news_bg_center">
        <div class="news_liebiao">

            <a title="装修时在什么时候做美缝比较好" href="allnews/n1.html">
                <div class="news_diyi">
                    <div style="width:146px; height:84px;float: left;">   装修时在什么时候做美缝比较好    </div>
                    <div class="wenzi">

                        <p>美缝剂 装修时在什么时候做美缝比较好？ 因为家装美缝剂施工的要求：1、要干</p>
                    </div>
                </div>
            </a>
            <a title="瓷砖粘接剂的优点有哪些" href="allnews/n2.html">
                <div class="news_diyi">
                    <div style="width:146px; height:84px;float: left;">   瓷砖粘接剂的优点有哪些    </div>
                    <div class="wenzi">

                        <p>瓷砖 粘接剂 的优点有哪些？ 所谓瓷砖粘接剂是一种高品质环保型聚合物水泥基</p>
                    </div>
                </div>
            </a>
            <a title="瓷砖胶使用方法和用途有哪些" href="allnews/n3.html">
                <div class="news_diyi">
                    <div style="width:146px; height:84px;float: left;">  瓷砖胶使用方法和用途有哪些    </div>
                    <div class="wenzi">

                        <p>瓷砖背涂胶 瓷砖胶使用方法和用途有哪些？ 瓷砖胶又称瓷砖粘合剂或粘结剂、粘胶泥等多种叫法</p>
                    </div>
                </div>
            </a>
            <a title="背涂胶使用方法不当容易造成什么危害" href="allnews/n4.html">
                <div class="news_diyi">
                    <div style="width:146px; height:84px;float: left;">  背涂胶使用方法不当容易造成什么危害    </div>
                    <div class="wenzi">

                        <p>背涂胶 使用方法不当容易造成什么危害？ 我们装修厕所的时候，虽然不是到处</p>
                    </div>
                </div>
            </a>
            <a title="如何正确选择地漏" href="allnews/n5.html">
                <div class="news_diyi">
                    <div style="width:146px; height:84px;float: left;">  如何正确选择地漏    </div>
                    <div class="wenzi">

                        <p>地漏 如何正确选择地漏？ 如何正确选择地漏？相信很多朋友还不太了解。专家</p>
                    </div>
                </div>
            </a>
            <a title="瓷砖背涂胶有什么特点" href="allnews/n6.html">
                <div class="news_diyi">
                    <div style="width:146px; height:84px;float: left;">  瓷砖背涂胶有什么特点    </div>
                    <div class="wenzi">

                        <p>瓷砖背涂胶 瓷砖背涂胶有什么特点？ 瓷砖背涂胶是结合国内玻化砖、大型石材</p>
                    </div>
                </div>
            </a>
            <a title="地漏,铜的好还是不锈钢的好" href="allnews/n7.html">
                <div class="news_diyi">
                    <div style="width:146px; height:84px;float: left;">  地漏,铜的好还是不锈钢的好    </div>
                    <div class="wenzi">

                        <p>地漏,铜的好还是不锈钢的好</p>
                    </div>
                </div>
            </a>
            <a title="瓷砖背涂胶有什么作用" href="allnews/n8.html">
                <div class="news_diyi">
                    <div style="width:146px; height:84px;float: left;">  瓷砖背涂胶有什么作用    </div>
                    <div class="wenzi">

                        <p>瓷砖背涂胶有什么作用？ 瓷砖背涂胶有以下作用： 广泛用于旧墙翻新、粘贴瓷</p>
                    </div>
                </div>
            </a>
            <a title="填缝剂是什么，有什么特点？" href="allnews/n9.html">
                <div class="news_diyi">
                    <div style="width:146px; height:84px;float: left;">  填缝剂是什么，有什么特点    </div>
                    <div class="wenzi">

                        <p>　填缝剂是什么，有什么特点？填缝剂是装修中比用的一种辅助材料，具有修补地板表面的开裂或破损</p>
                    </div>
                </div>
            </a>
            <a title="粘结剂球团粘结" href="allnews/n10.html">
                <div class="news_diyi">
                    <div style="width:146px; height:84px;float: left;">  粘结剂球团粘结    </div>
                    <div class="wenzi">

                        <p> 粘结剂球团粘结
                            冶金 球团粘结剂是生产钢铁行业加工球团矿的关键性辅助原料，它的性能优劣直接关系着</p>
                    </div>
                </div>
            </a>
            <a title="填缝剂的特点及注意事项" href="allnews/n11.html">
            <div class="news_diyi">
                <div style="width:146px; height:84px;float: left;"> 填缝剂的特点及注意事项    </div>
                <div class="wenzi">

                    <p> 填缝剂的特点
                        填缝剂黏合性强、收缩小、颜色固着力强，具有防裂纹的柔性，装饰质感好，抗压力耐磨损</p>
                </div>
            </div>
        </a>
            <a title="如何正确使用填缝剂" href="allnews/n12.html">
                <div class="news_diyi">
                    <div style="width:146px; height:84px;float: left;"> 如何正确使用填缝剂   </div>
                    <div class="wenzi">

                        <p>如何正确使用填缝剂？正确使用填缝剂的方法 1. 将专用搅拌液(或净水)倒入</p>
                    </div>
                </div>
            </a>
        </div>

    </div>
</div>

<!--合作案例-->
<div class="hezuobt" >
    <div class="news-center">
        <ul>
            <li><a href="hzal.html" title="更多资讯">更多合作案例</a></li>
            <div class="clearfix"></div>
        </ul>
    </div>
</div>
<div class="hezuo">
<div class="container" style="min-height: 600px;">
    <section>
        <ul id="da-thumbs" class="da-thumbs" style="position: relative;">
            <li style="background: #D07447;width: 298px;height:28px;text-align: center;padding-top: 50px;padding-bottom: 50px;position:absolute;top:0;left: 0px;"><a href="" style="color:white;font-size: 33px;font-weight: bold;">新开元大酒店</a></li>

            <li style="position:absolute;top:130px;left:0px;">
                <a title="开元酒店 ">
                    <img src="style/images/hezuo2.jpg" />
                    <div><span style="padding-top: 20px;font-size: 14px;line-height: 30px;">杭州新开元大酒店（复兴店）位于复兴路与南复路交叉口，背依钱塘江，正对杭州陶瓷品市场、南宋官窑博物馆，毗邻西湖风景区，与钱江四桥入口咫尺之遥，交通便利。 杭州新开元大酒店（复兴店）拥有各式舒适客房，特设无烟楼层、行楼楼层，为尊贵的客人提供个性化全方位的服务；所有客房豪华卫浴设备、丰富的国际卫</span></div>
                </a>
            </li>

            <li style="position:absolute;top:0px;left:300px;">
                <a title="银泰百货" >
                    <img src="style/images/hezuo1.jpg" />
                    <div><span style="padding-top: 20px;font-size: 14px;line-height: 30px;">银泰百货是以百货零售业为主营业务的百货零售集团，包含了美食、服饰鞋包、化妆品、娱乐等多种类别，是一个大型购物商场。周边就是玉长城商业广场，非常方便购物。</span></div>
                </a>
            </li>

            <li  style="position:absolute;top:234px;left:300px;">
                <a title="皇冠假日酒店">
                    <img src="style/images/hezuo3.jpg" />
                    <div><span style="padding-top: 20px;font-size: 14px;line-height: 30px;">黄山太平湖皇冠假日酒店坐落于黄山太平湖畔，这里青山延绵起伏，湖水碧绿清澈，素有“中华翡翠”之美誉。。</span></div>
                </a>
            </li>

            <li style="position:absolute;top:0px;left:600px;">
                <a title="希尔顿酒店" >
                    <img src="style/images/hezuo4.jpg" />
                    <div><span style="padding-top: 20px;font-size: 14px;line-height: 30px;">杭州千岛湖滨江希尔顿度假酒店于2011年7月开业。酒店坐落于千岛湖畔，依山面湖，是千岛湖区域拥有最长湖岸线的国际酒店,</span></div>
                </a>
            </li>

            <li style="background: #D07447;width: 298px;height:28px;text-align: center;padding-top: 50px;padding-bottom: 50px;position:absolute;top:336px;left:600px;">
                <a href="hzal.html" style="color:white;font-size: 25px;font-weight: bold;">查看更多合作案例  &gt;&gt;</a></li>
            <li  style="position:absolute;top:0px;right:-13px;">
                <a title="黄山丰大国际大酒店" >
                    <img src="style/images/hezuo5.jpg" />
                    <div><span style="padding-top: 20px;font-size: 14px;line-height: 30px;">黄山丰大国际大酒店，占地1100余亩，依山傍水，景色秀丽，有多个免费景点及娱乐设施，是名符其实的“天然氧吧”。   </span></div>
                </a>
            </li>

            <li style="position:absolute;top:233px;right:-13px;">
                <a title="浙江音乐学院" >
                    <img src="style/images/hezuo6.jpg"/>
                    <div><span style="padding-top: 20px;font-size: 14px;line-height: 30px;">浙江音乐学院是教育部于2016年3月1日批准正式成立的公办全日制普通本科高校，以本科教育为主，</span></div>
                </a>
            </li>

        </ul>
    </section>
</div>
<script type="text/javascript" src="style/js/jquery.hoverdir.js"></script>
<script type="text/javascript">
    $(function() {

        $(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );

    });
</script>
</div>


<!--  二维码 weixin.png -->
<div class="yejiao">
<div class="yejiao_center">

    <div class="yejiao_right">
        <img src="style/images/weixin.png" alt="二维码">
        <p>微信公众号 | 关注永泰</p>
    </div>
</div>
</div>


<div class="banquan">
    <p>Copy right © 2017 无锡永泰建筑密封材料有限公司 All Rights Reserved &nbsp;&nbsp;&nbsp;&nbsp; 备案号：苏ICP备16058894号</p>
</div>
<div class="yejiao_yingying">
    <img src="style/images/f_yy.png">
</div>
</body>
</html>