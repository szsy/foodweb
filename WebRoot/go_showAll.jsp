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
    
    <title>显示订单</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/login.css">
  </head>
  
  <body>
	   <main class="container-fluid">
      <div class="row">
         <div class="col-md-8 col-md-offset-2 ">
	  <div class="panel panel-danger">
	                 <div class="panel-heading">
	      <h3 class="panel-title">我的订单</h3>
	      <div class="panel-body panel-body-table">
	                   <div class="table-responsive" style="overflow-x:hidden">
	      <table class="table table-striped table-bordered table-hover table-condensed" id="dataTables-example">
	        <thead>
	        
		<tr>
			<td>订单号</td>
			<td>食物名称</td>
			<td>数量</td>
			<td>下单时间</td>
		</tr>
		</thead>
		<s:iterator value="goList" status="status">
		<tr>
			<td><s:property value="goId"></s:property></td>
			<td><s:property value="foodname"></s:property></td>
			<td><s:property value="goCusTotal"></s:property></td>
			<td><s:property value="goTime"></s:property></td>
		</tr>
	</s:iterator>
	      </table>
	      </div>
	                    </div>
	                    </div>
	                    </div>
	             </div>
	   
	</main>
	<script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <script src="<%=basePath%>js/jquery.dataTables.js"></script>
    <script src="<%=basePath%>js/dataTables.bootstrap.js"></script>
    <script>
       $(document).ready(function () {
           $('#dataTables-example').dataTable({
			   "language": {
                 "lengthMenu": "每页 _MENU_ 条记录",
                 "zeroRecords": "没有找到记录",
                 "info": "第 _PAGE_ 页 ( 共 _PAGES_ 页 )",
                 "infoEmpty": "无记录",
                 "infoFiltered": "(从 _MAX_ 条记录过滤)",
				 "sInfoPostFix": "",
				 "sSearch": "搜 索 : ",
				 "sUrl": "",
				 "sEmptyTable": "表中数据为空",
				 "sLoadingRecords": "载入中...",
				 "sInfoThousands": ",",
				 "oPaginate": {
					"sFirst": "首页",
					"sPrevious": "上页",
					"sNext": "下页",
					"sLast": "末页",
				
				 },
				 "oAria": {
				 "sSortAscending": ": 以升序排列此列",
				 "sSortDescending": ": 以降序排列此列"
			     },
				 
             }
		   });
       });
    </script>
	
  </body>
</html>