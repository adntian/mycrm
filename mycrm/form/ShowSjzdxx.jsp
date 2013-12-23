<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>ShowSjzdxx</title>
</head>

<body>
	<form action="updatesjzdxx.action" method="post">
		<center>
			<img src="image/user.gif"> <font size="2">录入${requestScope.sjzdflmc}</font>
		</center>
		<table align="center" border="1" cellspacing="0">
			<tr bgcolor="#666666" height="27">
				<td align="center">
					<font color="#FFFFFF" size="2">序号</font>
				</td>
				<td>
					<font color="#FFFFFF" size="2">启用</font>
				</td>
				<td>
					<font color="#FFFFFF" size="2">选项内容</font>
				</td>
			</tr>
			<s:hidden name="sjzdflId" value="%{#request.sjzdflId}" />
			<s:iterator value="#request.allSjzdxx" id="sjzdxx">
				<tr bgcolor="#E3E3E3">
					<td align="center"><s:property value="%{#sjzdxx.sjzdxxId % 10 ? #sjzdxx.sjzdxxId % 10 : #sjzdxx.sjzdxxId % 10 + 10}" /></td>
					<s:hidden name="sjzdxxIds" value="%{#sjzdxx.sjzdxxId}" />
					<td align="center"><input type="checkbox" 
					<s:if test="#request.state == 1"> checked="checked" </s:if>
					name="checks" value='<s:property value="#sjzdxx.sjzdxxId" />' /></td>
					<td align="center"><input type="text" name="sjzdxxmcs" value='<s:property value="#sjzdxx.sjzdxxmc" />'></td>
				</tr>
			</s:iterator>
		</table>
		<br>
		<center>
			<input type="submit" value="提交">
		</center>
	</form>
</body>
</html>
