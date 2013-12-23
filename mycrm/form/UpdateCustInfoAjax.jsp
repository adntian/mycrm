<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>客户信息更新</title>
	<link href="<%=basePath%>/css/rightStyle.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<%=basePath%>/dwr/engine.js"></script>
	<script type="text/javascript" src="<%=basePath%>/dwr/util.js"></script>
  	<script type="text/javascript" src="<%=basePath%>/dwr/interface/custajax.js"></script>
  	<script type="text/javascript">
  		function custupdate(){
  			var formMap = DWRUtil.getValues("custupdateform");
  			custajax.updateCustInfo(formMap,result);
  			function result(Data){
  				alert(Data);
  				var index = parent.layer.getFrameIndex(window.name);
  				parent.layer.close(index);
  			}
  			//alert("客户名称"+formMap["custnames"]);
  		}
  	</script>
  </head>
  
  <body> 
		 <h1 align="center" style="font-family:华文彩云;"> 客户信息更新</h1>
			<form name="custupdateform" action="custinfoadd.action" method="post">
			      <table width="100%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#aaaaaa"  bordercolorlight="#FFFFFF">
				    <s:hidden name="custId" value="%{#request.custinfodetail.custId}"></s:hidden>
				    <tr style="padding:5px;">
				      <td bgcolor="#eeeeee"> 客户名称</td>
				      <td><input type="text" name="custnames"  value="${requestScope.custinfodetail.custName}"><font color="red">${requestScope.error }</font> </td>
				     
				      <td bgcolor="#eeeeee"> 客户性质</td>
				      <td>
					      <select name="custxzs">
					              <s:iterator value="#request.allCustxz" id="custxz">
					                  <s:if test="#custxz.sjzdxxmc !='' && #custxz.state==1">
						                  <option value="${custxz.sjzdxxId}"
							                  <s:if test="#request.custinfodetail.sjzdxxByCustXz.sjzdxxId== #custxz.sjzdxxId">
							                  		selected="selected"
							                  </s:if>
						                  >
						                       ${custxz.sjzdxxmc}
						                  </option>
					                  </s:if>
					              </s:iterator>
					      </select>
				      </td>
				    </tr>
				      
				      <tr style="padding:5px;">
					      <td bgcolor="#eeeeee">客户类型</td>
					      <td>
						      <select name="custtypes">
						         <s:iterator value="#request.allCusttype" id="custtype">
					                  <s:if test="#custtype.sjzdxxmc !='' && #custtype.state==1">
						                  <option value="${custtype.sjzdxxId}"
						                      <s:if test="#request.custinfodetail.sjzdxxByCustType.sjzdxxId == #custtype.sjzdxxId">
							                  		selected="selected"
							                  </s:if>
						                  >
						                       ${custtype.sjzdxxmc}
						                  </option>
					                  </s:if>
					              </s:iterator>
						      </select>
					      </td>
					      
					       <td bgcolor="#eeeeee">客户级别:</td>
					       <td>
						      <select name="custlevels">
						         <s:iterator value="#request.allCustlevel" id="custlevel">
					                  <s:if test="#custlevel.custLevel !='' && #custlevel.state==1">
						                  <option value="${custlevel.levelId }"
						                      <s:if test="#request.custinfodetail.custLevelInfo.levelId== #custlevel.levelId">
							                  		selected="selected"
							                  </s:if>
						                  >
						                       ${custlevel.custLevel}
						                  </option>
					                  </s:if>
					              </s:iterator>
						      </select>
					      </td>
					    </tr>
					  
					  
					  
					  <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 公司网址：</td>
					      <td>
					      <input type="text" name="comsites"  value="${requestScope.custinfodetail.compSite}">
					      </td>
					      <td bgcolor="#eeeeee"> 公司电话：</td>
					      <td>
					      <input type="text" name="comtels"  value="${requestScope.custinfodetail.compTel}">
					      </td>
					  </tr>     
				
				
				        <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 登记人：</td>
					      <td>
					      <input type="text" name="registers"  value="${requestScope.custinfodetail.opera}" readonly="readonly">
					      <input type="hidden" name="hyId" value="1">
					      </td>
					      <td bgcolor="#eeeeee"> 客户地址：</td>
					      <td>
					      <input type="text" name="custadds"  value="${requestScope.custinfodetail.custAddress}">
					      </td>
					     </tr>  
					     
					     
					    <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 所属省份：</td>
					      <td>
					      <input type="text" name="custprovs"  value="${requestScope.custinfodetail.pcode}" >
					      </td>
					      <td bgcolor="#eeeeee"> 所属城市：</td>
					      <td>
					      <input type="text" name="custcitys"  value="${requestScope.custinfodetail.provCode}">
					      </td>
					    </tr> 
					    
					    <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 公司邮编：</td>
					      <td>
					      <input type="text" name="comcodes"  value="${requestScope.custinfodetail.zipCode}" >
					      </td>
					      <td bgcolor="#eeeeee"> 开户银行：</td>
					      <td>
						      <select name="banks">
						              <s:iterator value="#request.allCustbank" id="custbank">
					                    <s:if test="#custbank.sjzdxxmc !='' && #custbank.state==1">
						                  <option value="${custbank.sjzdxxId}"
						                  	<s:if test="#request.custinfodetail.sjzdxxByBank.sjzdxxId== #custbank.sjzdxxId">
						                  		selected="selected"
						                  	</s:if>
						                  >
						                       ${custbank.sjzdxxmc}
						                  </option>
					                    </s:if>
					                  </s:iterator>
						      </select>
					      </td>
					    </tr> 
					    
					    <tr style="padding:5px;">
					      <td bgcolor="#eeeeee"> 银行账号：</td>
					      <td>
					      <input type="text" name="bankaccs"  value="${requestScope.custinfodetail.bankAccount}" >
					      </td>
					      <td bgcolor="#eeeeee"> 客户来源：</td>
					      <td>
						      <select name="custfroms">
						              <s:iterator value="#request.allCustfrom" id="custfrom">
					                    <s:if test="#custfrom.sjzdxxmc !='' && #custfrom.state==1">
						                  <option value="${custfrom.sjzdxxId}"
						                      <s:if test="#request.custinfodetail.sjzdxxByCustFrom.sjzdxxId== #custfrom.sjzdxxId">
							                  		selected="selected"
							                  </s:if>
						                  >
						                       ${custfrom.sjzdxxmc}
						                  </option>
					                    </s:if>
					                  </s:iterator>
						      </select>
					        </td>
					     </tr> 
					    
					     <tr>
					      <td bgcolor="#eeeeee"> 备注信息：</td>
					      <td colspan="3">
					          <textarea rows="3" cols="48" name="custnotices">${requestScope.custinfodetail.memo}</textarea>
					      </td>
					    </tr> 
			      </table>
			      <p align="center">
			      <input type="button" onclick="custupdate()" id="updatebtn" value="提交">
			      <input type="reset" value="重置">
			      </p>
			</form>
  </body>
</html>