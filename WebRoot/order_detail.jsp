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
    
<title>显示订单详情</title>
  <meta charset="utf-8">
  <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">

body,td,th {
	font-size: 24px;
}
</style>
</head>
  
  <body>
    <div style="position: absolute; left: 513px; top: 197px; width: 909px; height: 457px;"><table width="901">
  <tbody>
    <tr>
      <td width="269"><img src="images/27.jpg" width="261" height="464" alt=""/></td>
      <td width="620">  <p><strong>订单号：
         <s:property value="order.orderid"></s:property>
  </strong></p>
     <p><strong>下单顾客：
         <s:property value="order.customer.name"></s:property>
     </strong></p>
     <p><strong>美食：
         <s:property value="order.food.foodname"></s:property>
     </strong></p>
     <p><strong>单价：
         <s:property value="order.food.unitprice"></s:property>
     </strong></p>
     <p><strong>份数：
         <s:property value="order.foodnum"></s:property>
     </strong></p>
     <p><strong>总价：
         <s:property value="order.total"></s:property>
     </strong></p>
  <p><strong>评价：
    <c:choose>
        <c:when test="${order.comment ==null}">
          <a href="order/order_showEdit?order.orderid=${order.orderid}">去评价</a>
        </c:when>
        <c:otherwise>
          <c:out value="${order.content}"></c:out>
        </c:otherwise>
</c:choose></strong></p></td>
      
    </tr>
  </tbody>
</table>

    </div>
</body>
</html>