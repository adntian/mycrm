<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>客户信息</title>
<script type="text/javascript" src="<%=basePath%>/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/layer.min.js"></script>
<script type='text/javascript' src='<%=basePath%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=basePath%>/dwr/util.js'></script>
<script type='text/javascript'
	src='<%=basePath%>/dwr/interface/custajax.js'></script>
<script type="text/javascript">
        function deletecust(custId){
	      //  var deleteQ=layer.confirm("是否确认删除该记录？");
	        layer.confirm("是否确认删除该记录？", function(){
	            custajax.deleteCust(custId,result);
	        });
        };
        function result(data){
              alert(data);
              location.reload();//窗口刷新本页面
              //self.opener.location.reload();//父窗口刷新
        };
        
        function deleteBetch(){
	        if(DWRUtil.getValue("checkboxDelete")!=false){
		    	layer.confirm("是否确认批量删除记录？", function(){
			       	var selectcustIds=DWRUtil.getValue("checkboxDelete");
			        custajax.deleteCusts(selectcustIds,result);
			    });
			}else{
				layer.msg("请选择要删除的记录");
			};
	    };
        
        //发送到showContactPersonInfo.jsp页面的隐藏Id 和客户名称的name
		function toSup(custName,custId){
                // alert(custId);
        //window.opener.document.getElementById("custName").value =custName; 
       // window.opener.document.getElementById("custId").value =custId;           
        //window.opener.document.getElementById("updatecustName").value =custName;          
       //window.opener.document.getElementById("updatecustId").value =custId;  
        
        //window.opener.document.all.custName.value =custName;
        //window.opener.document.all.custId.value =custId;
       // window.opener.document.all.updatecustName.value =custName;          
       // window.opener.document.all.updatecustId.value =custId;  
       		if(window.opener !=null){
	        	if(window.opener.document.getElementById("custName")!= null){
	                window.opener.document.getElementById("custName").value =custName;
	             }
	             if(window.opener.document.getElementById("custId")!= null){
	                window.opener.document.getElementById("custId").value =custId;
	             }
	             if(window.opener.document.getElementById("updatecustName${param.contactId}")!= null){
	                window.opener.document.getElementById("updatecustName${param.contactId}").value =custName;
	              }
	             if(window.opener.document.getElementById("updatecustId${param.contactId}") != null){
	                window.opener.document.getElementById("updatecustId${param.contactId}").value =custId;
	             }  
			};
        	window.close();
        };
        
        
		function quanxuan(){
        	var quanxuan=document.getElementById("selectAll").checked;
                //alert(quanxuan);
        	var selectAll=document.getElementsByName("checkboxDelete");
	        if(quanxuan){
	        	for(var i=0;i<selectAll.length;i++){
	                selectAll[i].checked=true;
	        	}
	        }else{
		    	for(var i=0;i<selectAll.length;i++){
		       		selectAll[i].checked=false;
		    	}
	    	};
        };
        
    </script>
</head>

<body>
	<form action="custinfoQuery.action" method="post">
		<input name="currentPage" type="hidden" value="1">
		<table width="100%" height="23" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td colspan="2" width="100%" align="center">请输入查询条件： 
				<select name="type" class="textarea">
						<option value="custName" ${custName}>客户名称</option>
						<option value="custAddress" ${custAddress}>客户地址</option>
						<option value="pcode" ${pcode}>所属省份</option>
						<option value="provCode" ${provCode}>所属城市</option>
						<option value="zipCode" ${zipCode}>公司邮编</option>
						<option value="bankAccount" ${bankAccount}>银行账号</option>
						<option value="compSite" ${compSite}>公司网址</option>
						<option value="compTel" ${compTel}>公司电话</option>
						<option value="memo" ${memo}>备注信息</option>
				</select>
					<input name="key" type="text" class="txt_grey" size="24" value="${key}">
					<input type="submit" class="subt_grey" value="搜索"></td>
			</tr>
		</table>
	</form>

	<table width="100%" height="48" border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
		<tr bgcolor="#eeeeee" style="padding:5px;">
			<td align="center"><input type="checkbox" onclick="quanxuan();" id="selectAll"></td>
			<td align="center">编号</td>
			<td align="center">客户名称</td>
			<td align="center">客户性质</td>
			<td align="center">客户类型</td>
			<td align="center">客户级别</td>
			<td align="center">公司网址</td>
			<td align="center">公司电话</td>
			<td align="center">登记人</td>
			<td align="center">查看详情</td>
			<td align="center">修改</td>
			<td align="center">删除</td>
		</tr>
		<s:iterator value="#request.custinfos" id="custinfo">
			<tr style="padding:5px;font-size: 12px;">
				<td align="center"><input type="checkbox" name="checkboxDelete"
					value="${custinfo.custId}">
				</td>
				<td align="center">${custinfo.custId}</td>
				<td align="center"><a
					href="javascript:toSup('${custinfo.custName}','${custinfo.custId}');">${custinfo.custName}</a>
				</td>
				<td align="center">${custinfo.sjzdxxByCustXz.sjzdxxmc}</td>
				<td align="center">${custinfo.sjzdxxByCustType.sjzdxxmc}</td>
				<td align="center">${custinfo.custLevelInfo.custLevel}</td>
				<td align="center">${custinfo.compSite}</td>
				<td align="center">${custinfo.compTel}</td>
				<td align="center">${custinfo.opera}</td>
				<td align="center">
					<input type="button" name="detail" value="查看详情" onclick="detail(${custinfo.custId});">
				</td>
				<td align="center"><img src="<%=basePath%>/image/modify.gif"
					width="15" height="15" alt="修改信息"
					onclick="update(${custinfo.custId});"></td>
				<td align="center"><img src="<%=basePath%>/image/delete.gif"
					width="15" height="15" alt="删除信息"
					onclick="deletecust(${custinfo.custId});"></td>
			</tr>
		</s:iterator>
		<tr style="padding:5px;font-size: 12px;">
			<td colspan="12" align="center">
				<s:if test="#request.page.totalPage>0">
					<s:if test="#request.page.hasPrePage">
						<s:if test="key == null || key == ''">
							<a href="custinfoFindAll.action?currentPage=1">首页</a>
							<a href="custinfoFindAll.action?currentPage=${request.page.currentPage-1}">上一页</a>
						</s:if>
						<s:else>
							<a href="custinfoQuery.action?currentPage=1">首页</a>
							<a href="custinfoQuery.action?currentPage=${request.page.currentPage-1}">上一页</a>
						</s:else>
					</s:if> <s:else>
					       首页
					       上一页
					</s:else>
					<s:if test="#request.page.hasNextPage">
						<s:if test="key == null || key == ''">
							<a href="custinfoFindAll.action?currentPage=${request.page.currentPage+1}">下一页</a>
							<a href="custinfoFindAll.action?currentPage=${request.page.totalPage}">尾页</a>
						</s:if>
						<s:else>
							<a href="custinfoQuery.action?currentPage=${request.page.currentPage+1}">下一页</a>
							<a href="custinfoQuery.action?currentPage=${request.page.totalPage}">尾页</a>
						</s:else>
					</s:if>
					<s:else>
					       下一页
					        尾页
					</s:else> 当前第${request.page.currentPage}页 | 共${request.page.totalPage}页 |
					共${request.page.totalCount}条记录。
				</s:if>
				<s:else>
					无符合条件记录
				</s:else>
				</td>
		</tr>

	</table>
	<input type="button" id="addbtn" name="addbtn" value="添加">
	<input type="button" value="批量删除" onclick="deleteBetch()" />
	<script type="text/javascript">
		$('#addbtn').on('click', function(){
			var i = $.layer({
			    type : 2,
			    iframe : {
			        src : 'custinfogetallsjzdxx.action'
			    },
			    title: ["添加客户信息",true],
			    offset: ['100px','50%'],
			    area: ['600px','310px'],
			    end: function(){location.reload();}
			});
		});
		var funnull = function(){;};
		var funload = function(){
			location.reload();
		};
		
		function detail(id){
			seedetail(id,'custinfoFindDetail','查看客户详细信息',funnull);
		};
		function update(id){
			seedetail(id,'custinfoUpdateBefore','修改客户信息',funload);
			$('#updatebtn').on('click', function(){
				layer.closeAll();
			});
		};
		function seedetail(id,srcs,titles,ends){
			var i = $.layer({
			    type : 2,
			    iframe : {
			        src : srcs+'.action?custId='+id
			    },
			    title: [titles,true],
			    offset: ['100px','50%'],
			    area: ['600px','310px'],
			    end: ends
			});
		};
	</script>
</body>
</html>