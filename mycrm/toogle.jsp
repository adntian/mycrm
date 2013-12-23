<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>toogle</title>
<style type="text/css">
body {
	margin: 0px;
	background-color: #F6F6F6;
}
</style>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
</head>

<body>
	<script type="text/javascript">
		var iniCols, noCols, o_mf, o_ms, s;
		function ini() {
			o_mf = parent.document.getElementById("mainframe");
			o_ms = document.getElementById("menuSwitch");
			noCols = iniCols = o_mf.cols;
			if ((pos = noCols.indexOf(",")) != -1) {
				noCols = "0" + noCols.substring(pos);
			}
			s = false;
		}
		function changeLeft() {
			s = !s;
			o_mf.cols = s ? noCols : iniCols;
			o_ms.innerHTML = s ? "<img src='image/on.gif' border='0'>" : "<img src='image/ou.gif' border='0'>";
		}
	</script>
</head>
<body onload="ini()">
	<table width="100%" height="100%" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td><a href="javascript:changeLeft();" id="menuSwitch"><img src='image/ou.gif' border='0'></a>
			</td>
		</tr>

	</table>
</html>
