<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>客户添加</title>
	<link href="../css/rightStyle.css" rel="stylesheet" type="text/css">

  </head>
  
  <body> 
		 <h1 align="center" style="font-family:华文彩云;"> 客户信息添加</h1>
			<form action="custinfoadd.action" method="post">
			      <table width="100%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
				    <tr style="padding:5px;">
				      <td bgcolor="#eeeeee"> 客户名称</td>
				      <td><input type="text" name="custnames"  value=""><font color="red">${requestScope.error }</font> </td>
				     
				      <td bgcolor="#eeeeee"> 客户性质</td>
				      <td>
					      <select name="custxzs">
					              <s:iterator value="#request.allCustxz" id="custxz">
					                  <s:if test="#custxz.sjzdxxmc !='' && #custxz.state==1">
						                  <option value="${custxz.sjzdxxId}">
						                       ${custxz.sjzdxxmc}
						                  </option>
					                  </s:if>
					              </s:iterator>
					      </select>
				      </td>
				    </tr>
				      
				      <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 客户类型</td>
					      <td>
						      <select name="custtypes">
						         <s:iterator value="#request.allCusttype" id="custtype">
					                  <s:if test="#custtype.sjzdxxmc !='' && #custtype.state==1">
						                  <option value="${custtype.sjzdxxId }">
						                       ${custtype.sjzdxxmc}
						                  </option>
					                  </s:if>
					              </s:iterator>
						      <!--  
						          <option value="20">制造业</option>
						          <option value="31">金融业</option>
						          <option value="3">其他</option>
						          <option value="2">服务业</option>
						       -->
						      </select>
					      </td>
					      
					       <td bgcolor="#eeeeee"> 客户级别:</td>
					       <td>
						      <select name="custlevels">
						         <s:iterator value="#request.allCustlevel" id="custlevel">
					                  <s:if test="#custlevel.custLevel !='' && #custlevel.state==1">
						                  <option value="${custlevel.levelId }">
						                       ${custlevel.custLevel}
						                  </option>
					                  </s:if>
					              </s:iterator>
						              <!--  
						              <option value="20">潜在客户</option>
						              <option value="21">VIP客户</option>
						              <option value="22">高级客户</option>
						              -->
						      </select>
					      </td>
					    </tr>
					  
					  
					  
					  <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 公司网址：</td>
					      <td>
					      <input type="text" name="comsites"  value="">
					      </td>
					      <td bgcolor="#eeeeee"> 公司电话：</td>
					      <td>
					      <input type="text" name="comtels"  value="">
					      </td>
					  </tr>     
				
				
				        <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 登记人：</td>
					      <td>
					      <input type="text" name="registers"  value="记录人名称" readonly="readonly">
					      <input type="hidden" name="hyId" value="1">
					      </td>
					      <td bgcolor="#eeeeee"> 客户地址：</td>
					      <td>
					      <input type="text" name="custadds"  value="">
					      </td>
					     </tr>  
					     
					     
					    <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 所属省份：</td>
					      <td>
					      <input type="text" name="custprovs"  value="" >
					      </td>
					      <td bgcolor="#eeeeee"> 所属城市：</td>
					      <td>
					      <input type="text" name="custcitys"  value="">
					      </td>
					    </tr> 
					    
					    <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 公司邮编：</td>
					      <td>
					      <input type="text" name="comcodes"  value="" >
					      </td>
					      <td bgcolor="#eeeeee"> 开户银行：</td>
					      <td>
						      <select name="banks">
						              <s:iterator value="#request.allCustbank" id="custbank">
					                    <s:if test="#custbank.sjzdxxmc !='' && #custbank.state==1">
						                  <option value="${custbank.sjzdxxId }">
						                       ${custbank.sjzdxxmc}
						                  </option>
					                    </s:if>
					                  </s:iterator>
					                  <!-- 
						              <option value="20">中国银行</option>
						              <option value="21">工商银行</option>
						              <option value="22">农业银行</option>
						              <option value="23">招商银行</option>
						              <option value="24">建设银行</option>
						              <option value="24">其他</option>
						               -->
						      </select>
					      </td>
					    </tr> 
					    
					    <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 银行账号：</td>
					      <td>
					      <input type="text" name="bankaccs"  value="" >
					      </td>
					      <td bgcolor="#eeeeee"> 客户来源：</td>
					      <td>
						      <select name="custfroms">
						              <s:iterator value="#request.allCustfrom" id="custfrom">
					                    <s:if test="#custfrom.sjzdxxmc !='' && #custfrom.state==1">
						                  <option value="${custfrom.sjzdxxId}">
						                       ${custfrom.sjzdxxmc}
						                  </option>
					                    </s:if>
					                  </s:iterator>
					                  <!--  
						              <option value="20">其他 展销会</option>
						              <option value="21">网络</option>
						              <option value="22">商业活动</option>
						              -->
						      </select>
					        </td>
					     </tr> 
					    
					     <tr>
					      <td bgcolor="#eeeeee"> 备注信息：</td>
					      <td colspan="3">
					          <textarea rows="3" cols="48" name="custnotices"></textarea>
					      </td>
					    </tr> 
			      </table>
			      <p align="center">
			      <input type="submit" value="提交">
			      <input type="reset" value="重置">
			      </p>
			</form>
  </body>
</html>