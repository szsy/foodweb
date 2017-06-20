<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>评价</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/login.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <div class="container">
        <div class="row">
            <div class="col-md-3 col-md-offset-4 panel panel-default">
   <s:form action="order/order_editOrder">
   <h1>订单评价</h1>
   <s:hidden name="order.orderid"></s:hidden>
   <s:hidden name="order.foodnum"></s:hidden>
    <!-- 评分：<s:textfield name="order.comment" label="评分"></s:textfield><br> -->
  评分：  <input id="input-id" type="number" class="rating" min=0 max=5 step=0.5 data-size="lg" ></input><br><br>
   评论：<s:textfield name="order.content" label="评论"></s:textfield><br><br>
   <s:submit value="提交"></s:submit>
   </s:form>
   </div>
   </div>
   </div>
    <!--<script src="<%=basePath%>js/jquery.min.js"></script>
  <script type="text/javascript">
   $("#input-id").rating();
   $("#input-id").rating({'size':'lg'});
</script> -->
  </body>
</html>
