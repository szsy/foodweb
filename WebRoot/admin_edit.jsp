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
    
    <title>修改食物</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-fileupload.js"></script>
  </head>
  
  <body>
      <main class="container-fluid">
	    <div class="row">
		   <div class="col-md-10">
		      <s:form action="food/food_editFood" cssClass="form-horizontal" enctype="multipart/form-data">
		      <s:hidden name="food.foodid"/>
		       <div class="panel panel-danger">
			       <div class="panel-heading">
		               <h4 class="panel-title"> <i class="fa fa-cutlery"></i> 编 辑 美 食 信 息</h4>
		           </div>
		           <div class="panel-body">
				       <div class="form-group">
			                <label class="control-label col-md-3">美食名称</label>
			                <div class="col-md-4">
                              <input type="text" name="food.foodname" value="<s:property value='food.foodname'/>" class="form-control input-sm" required>
                           </div>
			           </div>  
			           <div class="form-group">
			                <label class="control-label col-md-3">美食单价</label>
			                <div class="col-md-2">
                              <input type="text" name="food.unitprice" value="<s:property value='food.unitprice'/>" class="form-control input-sm" placeholder="&yen;" required>
                            </div>
			           </div>
			           <div class="form-group">
			                <label class="control-label col-md-3">美食分数</label>
			                <div class="col-md-4">
                              <input type="text" name="food.averageScore" value="<s:property value='food.averageScore'/>" class="form-control input-sm" required>
                           </div>
			           </div> 
			           <div class="form-group">
			                <label class="control-label col-md-3">美食图片</label>
			                <div class="col-md-4">
			                  <div class="fileupload fileupload-new" data-provides="fileupload">
                                  <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                    <img src="<%=basePath%><s:property value='food.imagepath'/>" alt="" />
                                  </div>
                                  <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height:150px; line-height: 20px;">
                                  </div>
                                  <div>
                                      <span class="btn btn-file btn-primary">
                                         <span class="fileupload-new">换张图片</span>
                                         <span class="fileupload-exists">换张图片</span>
                                         <input type="file" name="foodPhoto"/>
                                      </span>
                                      <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">取消</a>
                                  </div>
                              </div>
                            </div>
			           </div>    
                       <div class="form-group">
			                <label class="control-label col-md-3">简介</label>
			                <div class="col-md-4">
                              <input type="text" name="food.intro" value="<s:property value='food.intro'/>" class="form-control input-sm" required>
                           </div>
			           </div> 
			           <div class="form-group">
			                <label class="control-label col-md-3">食堂</label>
			                <div class="col-md-4">
                              <input type="text" name="food.kind" value="<s:property value='food.kind'/>" class="form-control input-sm" required>
                           </div>
			           </div> 
			           <div class="form-group">
			                <label class="control-label col-md-3">是否推荐</label>
			                <div class="col-md-4">
                              <input type="text" name="food.hot" value="<s:property value='food.hot'/>" class="form-control input-sm" required>
                           </div>
			           </div> 
			           <div class="form-group col-md-3">
				          <button type="submit" class="btn btn-success pull-right">提  交 </button>
				       </div>
				   </div>
				</div>
		    </s:form>
		  </div>
	   </div>
	</main>
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/bootstrap-fileupload.js"></script>
  </body>
</html>