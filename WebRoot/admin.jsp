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
    
    <title>管理员页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--  <meta http-equiv="Refresh" content="2;url=food/food_showFood">-->
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
  </head>
  <body>
    <main>
   <s:form action="food/food_showFood" method="post">  
     <h1>菜品管理</h1>
     <h2><a href="admin_add.jsp">添加新的菜品</a></h2>
      <c:forEach var="food" items="${foodList}" varStatus="status">
      <!--<c:out value="${status.index+1}"></c:out>-->
     <table border="0" style="float:left;">
						<tr>
							<td rowspan="4" width="240" align="center"><img src="/foodweb/${food.imagepath}" width="200" height="150"></td>
							<td height="40">名称：<a href="food/food_showDetail?food.foodid=${food.foodid}"><c:out value="${food.foodname}"></c:out></a></td>
							<td><a href="food/food_showEdit?food.foodid=${food.foodid}">编辑</a></td>
	                        <td><a href="food/food_deleteFood?food.foodid=${food.foodid}">删除</a></td>
						</tr>
						
						<tr>
							<td height="25">价格：<c:out value="${food.unitprice}"></c:out>元</td>
							
						</tr>
						
						<tr>
							<td height="25">食堂：<c:out value="${food.kind}"></c:out>
							
							</td>
							
						</tr>
						
						<tr>
							<td>简介：${food.intro} </td>
							
						</tr>
				</table>	
				 </c:forEach>		
     </s:form>
     </main>
 
     
    
  </body>
</html>
