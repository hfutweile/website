<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>
<%@ page import= "java.lang.String" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>新闻动态</title>
    <meta name="keywords" content="人工智能,计算机视觉" />
    <meta name="description" content="北京红云智胜科技有限公司专注于人工智能，系国内首家通过人工智能方法解决心脑血管疾病和心理疾病的公司，公司全员具有人工智能相关领域硕士及以上学历，在人工智能、计算机视觉等领域拥有扎实且先进的理论基础和丰富的项目经验。公司目前与阜外心血管医院等多家医院合作，致力于用科学创造社会价值，为人们的身体健康和心理健康提供帮助。" />
    <link href="style/css/mainstyle.css" rel="stylesheet">

    <link href="style/css/style.css" rel="stylesheet" type="text/css" />
    <link href="style/css/lrtk.css" rel="stylesheet" type="text/css" />
</head>
<%
    String news_id = request.getParameter("news_id");
    String news_title = request.getParameter("news_title");
    String news_picture = request.getParameter("news_picture");
    String news_content = request.getParameter("news_content");
    String news_type = request.getParameter("news_type");
%>


<h1><%=news_id%></h1>
<h1><%=news_title%></h1>
<h1><%=news_picture%></h1>
<h1><%=news_content%></h1>
<h1><%=news_type%></h1>
