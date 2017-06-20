<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>民大美食</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	left:84px;
	top:38px;
	width:132px;
	height:135px;
	z-index:1;
}
#Layer2 {
	position:absolute;
	left:0px;
	top:17px;
	width:1509px;
	height:71px;
	z-index:1;
}
#Layer3 {
	position:absolute;
	left:23px;
	top:177px;
	width:437px;
	height:628px;
	z-index:2;
}
#Layer4 {
	position:absolute;
	left:521px;
	top:171px;
	width:849px;
	height:640px;
	z-index:3;
	background-color: #FFFFFF;
}
#Layer5 {
	position:absolute;
	left:55px;
	top:250px;
	width:356px;
	height:117px;
	z-index:4;
	background-color: #FFFFFF;
}
#Layer6 {
	position:absolute;
	left:-116px;
	top:501px;
	width:401px;
	height:100px;
	z-index:5;
}
.STYLE1 {
	font-family: "新宋体";
	font-weight: bold;
}
-->
</style>
</head>

<body>
<div id="Layer2">
<header>
<div class="account">
         <c:choose>
		       <c:when test="${customer.name ==null}">
		         <a href="reg.jsp">注册</a>
		         <a href="login.jsp">登录</a>
		       </c:when>
		       <c:otherwise>
		         <c:out value="${customer.name}"></c:out>, 欢迎您!
		       </c:otherwise>
		    </c:choose>
       <div class="logo"></div>
       </div></header></div>
<div id="Layer3">
<table>
     <tr>
     <!-- 标题行采用th，字体加粗居中 -->
     <th><a href="dier.jsp">第二食堂</a></th>
     <th><a href="disi.jsp">第四食堂</a></th>
     <th><a href="fengwei.jsp">风味食堂</a></th>
     <th><a href="qingzhen.jsp">清真食堂</a></th>
    <!--<th><a href="order/order_showOrder?customer.name=${customer.name}">订单查询</a></th> --> 
      <th><a href="order/order_showOrder?customer.name=${customer.name}">购物车</a></th>
      <th><a href="go/go_showAlls">订单查询</a></th>
     </tr></table>
     <img src="images/index.jpeg"  width="433" height="543" /></div>
<div id="Layer4">
<h1>今日推荐</h1>
      <c:forEach var="food" items="${foodList}" varStatus="status">
      <!--<c:out value="${status.index+1}"></c:out>-->
     <table  style="float:left;" >
						<tr>
							<td rowspan="8" width="270" align="center"><img src="/foodweb/${food.imagepath}" width="200" height="150"></td>
							<td height="40">名称：<a href="food/food_showDetail?food.foodid=${food.foodid}"><c:out value="${food.foodname}"></c:out></a></td>
							
						</tr>
						
						<tr>
							<td height="25">价格：<c:out value="${food.unitprice}"></c:out>元</td>
							
						</tr>
						
						<tr>
							<td height="25">食堂：<c:out value="${food.kind}"></c:out>
							
							</td>
							
						</tr>
						
						<tr>
							<td height="25"><button class="btn"><a href="order/order_addOrder?food.foodid=${food.foodid}&customer.name=${customer.name}">添加到购物车</a></button></td>
							
						</tr>
				</table>			
     </c:forEach>
     
    </div>
<div id="Layer5">
  <p>吃在民大，绝非江湖传言。</p>
  <p>种类多样的二食堂，特色的四食堂，最吸引人的地下食堂，最温馨的的清真食堂。总有一款适合你。</p>
</div>
<div></div>

</body>
</html>
 
  
 
</html>
