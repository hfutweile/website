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
        <form action="insert_data_sql.jsp" method="get">
                <center>
                    <h1>数据插入界面</h1>
                    <hr>
                    <hr>
                        <table>  
                                <tr> 
                                    <td>编号:</td> 
                                    <td><input type="text" name="news_id" /> 
                                    </td> 
                                </tr> 
       
                                <tr> 
                                    <td>标题:</td> 
                                    <td><input type="text" name="news_title" /> 
                                    </td> 
                                </tr> 
       
                                <tr> 
                                <td>图片:</td> 
                                <td><input type="text" name="news_picture" /> 
                                </td> 
                                </tr> 
       
                                <tr> 
                                    <td>内容:</td> 
                                    <td><input type="text" name="news_content" /> 
                                    </td> 
                                </tr>

                                <tr>
                                        <td>时间:</td>
                                        <td><input type="text" name="news_time" />
                                        </td>
                                    </tr>

                                <tr> 
                                <tr> 
                                        <td>类别:</td> 
                                        <td><input type="text" name="news_type" /> 
                                        </td> 
                                    </tr> 

                                <tr>           
                                    <td colspan="2"><input type="submit" value="提交" /> 
                                    </td> 
                                </tr> 
                        </table> 
                </center> 
                 </form> 
    </body>
</html>
