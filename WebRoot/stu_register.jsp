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
    
    <title>My JSP 'reg.jsp' starting page</title>
    
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
     <main class="re_main">
     
     	<s:form action="user/user_register" method="post" cssClass="register">
	    <h3>欢迎您注册</h3>
	    <h6>请完善您的信息</h6>
	    <div class="form-group">
	    	 <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-user"></i></span>
		         <input type="text" class="form-control" name="user.username" placeholder="请输入用户名">
	         </div>
	         <s:fielderror fieldName="user.username" cssClass="fielderror"/>
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-lock"></i></span>
		         <input type="password" name="user.password" class="form-control" placeholder="请输入密码">
	         </div>
	         <s:fielderror fieldName="user.password" cssClass="fielderror"/> 
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		         <input type="password" name="user.stunum" class="form-control" placeholder="请输入学号">
	         </div>
	         <s:fielderror fieldName="user.stunum" cssClass="fielderror"/>  
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-flag-o"></i></span>
		         <input type="password" name="user.nickname" class="form-control" placeholder="请输入昵称">
	         </div>
	         <s:fielderror fieldName="user.nickname" cssClass="fielderror"/>           
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-headphones"></i></span>
		         <input type="password" name="user.phonenum" class="form-control" placeholder="请输入联系电话">
	         </div>
	         <s:fielderror fieldName="user.phonenum" cssClass="fielderror"/>           
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-home"></i></span>
		         <input type="password" name="user.school" class="form-control" placeholder="请输入学校">
	         </div>
	         <s:fielderror fieldName="user.school" cssClass="fielderror"/>  
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-home"></i></span>
		         <input type="password" name="user.academy" class="form-control" placeholder="请输入学院">
	         </div>
	         <s:fielderror fieldName="user.academy" cssClass="fielderror"/>  
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-home"></i></span>
		         <input type="password" name="user.major" class="form-control" placeholder="请输入专业">
	         </div>
	         <s:fielderror fieldName="user.major" cssClass="fielderror"/>  
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-mail-forward"></i></span>
		         <input type="password" name="user.email" class="form-control" placeholder="请输入邮箱">
	         </div>
	         <s:fielderror fieldName="user.email" cssClass="fielderror"/>  
	         <div class="input-group input-group">
		         <span class="input-group-addon"><i class="fa fa-home"></i></span>
		         <input type="password" name="user.address" class="form-control" placeholder="请输入住址">
	         </div>
	         <s:fielderror fieldName="user.address" cssClass="fielderror"/>  
	     </div>	      
	      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <span type="button" class="btn btn-success"><a href="stu_login.jsp">去登陆</a></span>
	      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <button type="submit" class="btn btn-success btn-de">注册 </button>
	    </s:form>
     </main>
  </body>
</html>

