<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>CRM客户关系管理系统</title>
</head>

<frameset rows="70,*" cols="*" frameborder="NO" border="0"
	framespacing="0">

	<frame src="top.jsp" name="top" scrolling="NO" noresize>

	<frameset id="mainframe" rows="*" cols="200,9,*" framespacing="0"
		frameborder="NO" border="0" bordercolor="#404040">
		<frame src="left.jsp" name="left" scrolling="NO" noresize>
		<frame scrolling=NO noresize name="toogle" marginwidth="0"
			marginheight="0" src="toogle.jsp">
		<frame src="right.jsp" name="main" scrolling="yes">
	</frameset>
</frameset>
<noframes>
	<body>
	</body>
</noframes>
</html>
