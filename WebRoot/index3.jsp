<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
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
  </head>
  <body>
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
       </div>
       <div class="logo"></div>
       </header>
     <table>
     <tr>
     <!-- 标题行采用th，字体加粗居中 -->
     <th><a href="dier.jsp">第二食堂</a></th>
     <th><a href="disi.jsp">第四食堂</a></th>
     <th><a href="fengwei.jsp">风味食堂</a></th>
     <th><a href="qingzhen.jsp">清真食堂</a></th>
     <th><a href="order/order_showOrder?customer.name=${customer.name}">个人中心</a></th>
     </tr></table>
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
							<td height="25"><a href="order/order_addOrder?food.foodid=${food.foodid}&customer.name=${customer.name}">购买</a></td>
							
						</tr>
				</table>			
     </c:forEach>
     
    
  </body>
</html>
