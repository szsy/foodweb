<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示食物详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style type="text/css">
  body {
	background-image: url(images/24.jpg);
	background-repeat: no-repeat;
	background-size:100%;
}
  </style>
  </head>
  <body>
  <div style="position: absolute; left: 300px; top: 200px; width: 762px; height: 300px;">
    <div align="center" >
      <table width="669" height="300" border="0" bgcolor="#EBEBEB">
        <tr>
          <td rowspan="5" width="267" align="center"><img src="/foodweb/${food.imagepath}" width="250" height="219"></td>
          <td width="258" height="53">名称：
            <c:out value="${food.foodname}"></c:out></td>
        </tr>
        <tr>
          <td height="51">价格：
            <c:out value="${food.unitprice}"></c:out>元</td>
          </tr>
        <tr>
          <td height="51">食堂：
            <c:out value="${food.kind}"></c:out></td>
          </tr>
        <tr>
          <td height="49">评分：${food.averageScore} </td>
          </tr>
        <tr>
          <td height="55">简介：${food.intro} </td>
          </tr>
       </table>
    </div>
  </div>
  </body>
</html>
