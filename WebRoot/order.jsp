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
    
    <title>购物车</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/login.css">
   </head>
  
  <body onload="cha()">
     <main class="container-fluid">
        
	    <s:form action="go/go_addGoSucc" method="post">
	  
	      <table style="width:1000px">
	        <thead>
	        <tr align="right">  
	        	
	          <td>选择</td>
	          <td>份数</td>
	           <td>名称</td>
	          <td>序号</td>  
	          <!--<th>订单号</th>-->   
	          <td>单价</td> 
	        </tr> 
	        </thead>
	        <tbody>
	         <s:iterator value="orderList" status="status">
	          <tr align="left">
	          	<td><s:checkbox name=""/></td>
	            <td><s:select name="" list="{'0','1','2','3','4','5','6','7','8','10'}"></s:select></td>
	          	<td><input style="border:0px;" readonly type="text" name="" value="<s:property value="food.foodname"/>"/></td>
	          
	            <td><s:property value="#status.index+1"></s:property></td>
	            <!-- <td><s:a href="order/order_showDetail?order.orderid=%{orderid}">
	               <s:property value="orderid"></s:property></s:a>
	            </td>-->
	            
	            <td><s:property value="food.unitprice"></s:property></td>
	          </tr>
	         </s:iterator>
	         <th></th>
	         <th></th>
	         <th></th>
	         <th></th>
	         <th><s:submit value="确定" style="color:red"/></th>
	      </table>
	    </s:form>
	
	</main>
	
	
	
	<script>
		
		function cha(){
			
			var a=document.getElementsByTagName("select");
			var b=document.getElementsByTagName("input");
			var check_P=0;
			var input_P=0;
			
			for(var i=0;i<a.length;i++){
				//document.getElementsByTagName(a[i]).name="goMsg["+i+"][1]";
				a[i].name="goMsg["+i+"][1]";
				//alert(a[i].name);
			}
			for(var i=0;i<b.length;i++){
				if(i==0){
					continue;
				}
				//checkbox
				if(i%3==1){
					b[i].name="goMsg["+check_P+"][0]";
					check_P++;
				}
				//input
				if(i%3==0){
					b[i].name="goMsg["+input_P+"][2]";
					input_P++;
				}
			}
		}
	</script>
	
  </body>
</html>
