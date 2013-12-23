<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>查看客户详细信息</title>
	<link href="<%=basePath%>/css/rightStyle.css" rel="stylesheet" type="text/css">
  </head>
  
  <body> 
		 <h1 align="center" style="font-family:华文彩云;"> 客户详细信息</h1>
			
			      <table width="100%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
				    <tr style="padding:5px;">
				      <td bgcolor="#eeeeee"> 客户名称：</td>
				      <td>${custinfodetail.custName} </td>
				     
				      <td bgcolor="#eeeeee"> 客户性质：</td>
				      <td>
					     ${custinfodetail.sjzdxxByCustXz.sjzdxxmc}
				      </td>
				    </tr>
				      
				      
				      
				      <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 客户类型：</td>
					      <td>
						     ${custinfodetail.sjzdxxByCustType.sjzdxxmc}
					      </td>
					      
					       <td bgcolor="#eeeeee"> 客户级别：</td>
					       <td>
						     ${custinfodetail.custLevelInfo.custLevel}
					      </td>
					    </tr>
					  
					  
					  
					  <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 公司网址：</td>
					      <td>${custinfodetail.compSite} </td>
					      <td bgcolor="#eeeeee"> 公司电话：</td>
					      <td>${custinfodetail.compTel} </td>
					  </tr>     
				
				
				        <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 登记人：</td>
					      <td> ${custinfodetail.opera}</td>
					      <td bgcolor="#eeeeee"> 客户地址：</td>
					      <td> ${custinfodetail.custAddress}</td>
					     </tr>  
					     
					     
					    <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 所属省份：</td>
					      <td> ${custinfodetail.pcode}</td>
					      <td bgcolor="#eeeeee"> 所属城市：</td>
					      <td> ${custinfodetail.provCode}</td>
					    </tr> 
					    
					    <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 公司邮编：</td>
					      <td> ${custinfodetail.zipCode}</td>
					      <td bgcolor="#eeeeee"> 开户银行：</td>
					      <td>
						      ${custinfodetail.sjzdxxByBank.sjzdxxmc}
					      </td>
					    </tr> 
					    
					    <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 银行账号：</td>
					       <td> ${custinfodetail.bankAccount}</td>
					       <td bgcolor="#eeeeee"> 客户来源：</td>
					      <td>
						      ${custinfodetail.sjzdxxByCustFrom.sjzdxxmc}
					       </td>
					     </tr> 
					    
					     <tr>
					     <td bgcolor="#eeeeee"> 备注信息：</td>
					      <td colspan="3"> 
					      ${custinfodetail.memo}
					       </td>
					    </tr> 
			      </table>
		
  </body>
</html>

