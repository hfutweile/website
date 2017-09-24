<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<center>
	<br>
	<h1>欢迎登录主界面</h1>
	<hr>
	<form action="baseinf.jsp" method="post">
		<input type="submit" name="baseinf" value="个人基本信息"><br><br><br>
	</form>
	<form action="countinf.jsp" method="post">
		<input type="submit" name="countinf" value="个人账户信息"><br><br><br>
	</form>
	<form action="logout.jsp" method="post">
		<input type="submit" name="logout" value="退出个人主页"><br><br><br>
	</form>
</center>
</body>
</html>