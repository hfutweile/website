<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图片上传</title>
</head>
<body>
<h1>图片上传</h1>
<form method="post" action="UploadServlet" enctype="multipart/form-data">
    选择图片:
    <input type="file" name="uploadFile" />
    <br/><br/>
    <input type="submit" value="上传" />
    <a href="admin/operator.jsp">上传完成，返回数据操作界面</a>
</form>
</body>
</html>