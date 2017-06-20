<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="<%=basePath%>">
    
    <title>正在进入...</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Refresh" content="2;url=food/food_showHotFood">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">

#Layer1 {
	position:absolute;
	left:280px;
	top:100px;
	width:643px;
	height:432px;
	z-index:1;
}
#Layer2 {
	position:absolute;
	left:158px;
	top:110px;
	width:802px;
	height:431px;
	z-index:1;
	background-color: #F0F0F0;
}
#Layer3 {
	position:absolute;
	left:41px;
	top:35px;
	width:583px;
	height:30px;
	z-index:2;
}
.STYLE1 {
	font-size: 18px;
	font-weight: bold;
	color: #999999;
}
</style>
</head>
<div id="Layer2"><img src="images/enter.jpeg" width="700" height="431" /></div>
<div class="STYLE1" id="Layer3">欢迎进入民大美食网站，正在跳转请稍后....</div>
</html>

