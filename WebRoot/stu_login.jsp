<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="shortcut icon" href="<%=basePath%>images/icon.png">

  </head>
  <body style="background-image:url(images/bg.png)">
    <main class="main">
    	<s:form action="user/user_login" method="post" cssClass="login">
	    <h3>欢迎您登陆</h3>
	    <br>
	    <div class="form-group">
	    	 <div class="input-group input-group-lg" style="margin-bottom:9px;">
		         <span class="input-group-addon"><i class="fa fa-user"></i></span>
		         <input type="text" class="form-control" name="user.username" placeholder="请输入用户名">
	         </div>
	         <s:fielderror fieldName="customer.name" cssClass="fielderror"/>
	         <br>
	         <div class="input-group input-group-lg">
		         <span class="input-group-addon"><i class="fa fa-lock"></i></span>
		         <input type="password" name="user.password" class="form-control" placeholder="请输入密码">
	         </div>
	         <s:fielderror fieldName="customer.password" cssClass="fielderror"/>  
	         <br>
	    
	      
	      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <span type="button" class="btn btn-success" style="padding:5px 20px;margin-left:20px;"><a href="stu_register.jsp">去注册</a></span>
	      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <button type="submit" class="btn btn-success btn-de" style="padding:5px 20px;margin-left:20px;">登&nbsp;&nbsp;&nbsp;录 </button>
	    </s:form>
    </main>
  </body>
</html>