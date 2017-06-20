<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>成功下单</title>
<meta http-equiv="Refresh" content="1;url=order/order_showOrder?customer.name=${customer.name}">
</meta>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:426px;
	height:140px;
	z-index:1;
	left: 419px;
	top: 100px;
}
#Layer2 {
	position:absolute;
	width:300px;
	height:350px;
	z-index:2;
	left: 453px;
	top: 250px;
}
#Layer4 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:3;
	left: 300px;
	top: 100px;
}

.STYLE2 {
	font-style: italic;
	font-family: "新宋体";
	font-weight: bold;
}
.STYLE3 {color: #CCCCCC}
-->
</style>
</head>

<body>
<div class="STYLE2" id="Layer1">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <h1 class="STYLE3">已成功加入到购物车啦~  </h1>
  <!--<div id="Layer4"><img src="../images/label.jpeg" width="100" height="100" /></div> -->
</div>
 <div id="Layer2"><img src="../images/done.png" width="300" height="350" /></div> 
<h1>&nbsp;</h1>
</body>
</html>
