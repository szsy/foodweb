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
    
    <title>注册</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
 
  <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/login.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrapValidator.css">
  </head>
  
  <body>
  <s:form action="customer/customer_reg" id="defaultForm" method="post" cssClass="login" validate="true">
   <div class="container">
        <div class="row">
            <div class="col-md-3 col-md-offset-4 panel panel-default">
             <h3><center>请注册</center></h3>
     <form class="margin-base-vertical">
                   <div class="form-group">  
                    <p class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
      <input type="text" name="customer.name" class="form-control " placeholder="请输入用户名"required>
      </p>
      </div>
      <div class="form-group">  
      <p class="input-group">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
     <input type="password" name="customer.password" class="form-control input-lg" placeholder="请输入密码"required>
      </p>
      </div>
      <div class="form-group">  
      <p class="input-group">
                        <span class="input-group-addon"><i class="fa fa-home"></i></span>
     <input type="text" name="customer.address" class="form-control input-lg" placeholder="请输入地址"required>
      </p>
      </div>
      <div class="form-group">  
       <p class="input-group">
                        <span class="input-group-addon"><i class="fa fa-phone"></i></span>
     <input type="text" name="customer.phonenumber" class="form-control input-lg" placeholder="请输入联系电话"required>
      </p>
      </div>
      <div class="form-group">  
      <p class="text-center">
                        <button type="submit" class="btn btn-success btn-lg">注册</button>
                    </p>
                  </div>  
                </form>
    </div>
    </div>
    </div>
     </s:form>
    <br>
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <!-- -------以下这个css是bootstrap Validator插件的css--------- -->
    <script src="<%=basePath%>js/bootstrapValidator.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
		    $('#defaultForm')
		        .bootstrapValidator({
		            message: '请输入内容',
		            feedbackIcons: {
		                valid: 'fa fa-check',
		                invalid: 'fa fa-remove',
		                validating: 'fa fa-refresh'
		            },
		            fields: {
		                'customer.name': {
		                    message: '用户名无效',
		                    validators: {
		                        notEmpty: {
		                            message: '用户名不得为空'
		                        },
		                        stringLength: {
		                            min: 4,
		                            max: 12,
		                            message: '用户名必须在4-12个字符之间'
		                        },
		                        regexp: {
		                            regexp: /^[a-zA-Z0-9_\.]+$/,
		                            message: '用户名只能包含字母、数字、点、下划线 '
		                        }	                        
		                    }
		                },
		                'customer.password': {
		                    validators: {
		                        notEmpty: {
		                            message: '密码不得为空'
		                        },
		                        stringLength: {
		                            min: 8,
		                            max: 20,
		                            message: '密码必须在8-20个字符之间'
		                        },
		                        different: {
									field: 'customer.name',
									message: '密码不能与用户名相同'
									},
		                    }
		                },
		                'customer.phonenumber': {
		                    validators: {
		                        notEmpty: {
		                            message: '联系方式不能为空'
		                        },
		                   stringLength: {
		                            min: 11,
		                            max: 11,
		                            message: '请输入正确的电话号码'
		                        },    
                }
            },
		                
		                'customer.address': {
		                    validators: {
		                        notEmpty: {
		                            message: '地址不能为空'
		                        },
		                    }
		                }
		            }
		        })
		});
	</script>
    
    
  </body>
  
</html>
