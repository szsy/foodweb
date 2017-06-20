<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
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
  <s:form action="customer/customer_login" method="post">
   <div class="container">
        <div class="row">
            <div class="col-md-3 col-md-offset-4 panel panel-default">
             <h3>欢迎登录</h3>
     <div class="margin-base-vertical">
                    <p class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
      <input type="text" name="customer.name" class="form-control input-lg" placeholder="请输入用户名"required>
      </p>
      <p class="input-group">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
     <input type="password" name="customer.password" class="form-control input-lg" placeholder="请输入密码"required>
      </p>
      <p class="text-center">
                        <button type="submit" class="btn btn-success btn-lg">登录</button>
                          <button class="btn btn-success btn-lg"><a href="reg.jsp" >注册</a></button>
                    </p>
                </div>
    </div>
    </div>
    </div>
     </s:form>
    <br>
  </body>
