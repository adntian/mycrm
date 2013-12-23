<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>导航栏</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src='dwr/engine.js'></script>
	<script type="text/javascript" src='dwr/interface/SjzdflDAO.js'></script>
	<script type="text/javascript" src="js/dtree.js" ></script>
	<link rel="stylesheet" href="css/dtree.css" type="text/css"></link>
  	<link rel="stylesheet" href="css/leftStyle.css" type="text/css"></link>
  </head>
  
  <body>
  	<p><a href="javascript:d.openAll();">打开全部</a> |  <a href="javascript:d.closeAll();">关闭全部</a></p>
  	<script type="text/javascript">
  	
   		<!--
   		var sjzdflArr;
   		DWREngine.setAsync(false);
  		SjzdflDAO.findAll(load);
  		DWREngine.setAsync(true);
  		function load(data){
  			sjzdflArr=data;
  		//	alert(sjzdflArr);
  		}
  			var d = new dTree("d");
  			d.config.userCookies=false; //不使用cookies
	        d.config.useStatusText=true;//状态栏显示文本
	        d.config.closeSameLevel=true;//关闭同一层次的节点
	        //root
	        d.add(0,-1,"CRM客户关系管理系统");
	        
	        //一级导航
	        d.add(1,0,"客户信息");
			d.add(2,0,"客户服务");
			d.add(3,0,"日程/任务");
			d.add(4,0,"项目管理");
			d.add(5,0,"系统管理");
			d.add(6,0,"数据字典");
			d.add(7,0,"消息提醒");
			
			//二级导航
			d.add(11,1,"客户","form/custinfoFindAll.action?currentPage=1","","main");
			d.add(12,1,"联系人","form/loadingContactPersonInfo.jsp","","main");
			
			d.add(21,2,"客户投诉","form/loadingComplainInfo.jsp","","main");
			d.add(22,2,"投诉报表","form/loadingCreateJFreeChart.jsp","","main");
			
			d.add(31,3,"日程");
			d.add(32,3,"任务");
		   
			d.add(41,4,"项目管理");
			d.add(42,4,"项目立项");
			d.add(43,4,"项目审批");
			d.add(44,4,"项目进程");
			d.add(45,4,"项目总结");
			d.add(46,4,"项目交易");
		   
			d.add(51,5,"用户","form/loadingUserInfo.jsp","","main");
			d.add(52,5,"角色","form/loadingRoleInfo.jsp","","main");
			
/* 			d.add(61,6,"企业类型-分类");
			d.add(62,6,"企业性质-分类");
			d.add(63,6,"开户银行-分类");
			d.add(64,6,"信息来源-分类");
			d.add(65,6,"客户满意度-分类");
			d.add(66,6,"客户级别-分类"); */
			d.add(61,6,"数据字典分类","sjzdfl.action","","main");
			var i;
			for(i=0; i < sjzdflArr.length; i++){
				if(sjzdflArr[i].sjzdflmc != null && sjzdflArr[i].sjzdflmc != "" && sjzdflArr[i].state == 1)
					d.add(62 + i, 6, sjzdflArr[i].sjzdflmc, "getsjzdxx.action?sjzdflId="+sjzdflArr[i].sjzdflId, "", "main");
			}
			d.add(62 + i, 6, "客户级别", "getcustlevelinfo.action","","main");
			
			d.add(71,7,"短消息");
			
			document.write(d);
  		-->
  	</script>
  </body>
</html>
