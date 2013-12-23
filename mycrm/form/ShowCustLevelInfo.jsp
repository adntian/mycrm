<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>ShowSjzdfl</title>
</head>

<body>
	<form action="updatecustlevelinfo.action" method="post">
		<center>
			<img src="image/user.gif"> <font size="2">录入数据类型配置（客户信息）</font>
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
					<font color="#FFFFFF" size="2">累计业务量</font>
				</td>
				<td>
					<font color="#FFFFFF" size="2">选项内容</font>
				</td>
			</tr>
			<s:iterator value="#request.allcustlevelinfo" id="custlevelinfo">
				<tr bgcolor="#E3E3E3">
					<td align="center"><s:property value="#custlevelinfo.levelId" /></td>
					<s:hidden name="levelIds" value="%{#custlevelinfo.levelId}" />
					<td align="center"><input type="checkbox" 
					<s:if test="#custlevelinfo.state == 1"> checked="checked" </s:if>
					name="checks" value='<s:property value="#custlevelinfo.levelId" />'></td>
					<td align="center"><font size=2>累计业务量<input type="text" name="ywls" value='<s:property value="#custlevelinfo.ywl" />'>以上</font></td>
					<td align="center"><input type="text" name="custlevels" value='<s:property value="#custlevelinfo.custLevel" />'></td>
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
