<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<body> 
    <header>
    <%@include file="menubar.jsp"%>	                
    </header>
           <div class="re_main">
           <h3>我的账户</h3>
              <s:form action="user/user_login" method="post">         
                <div id="showInfo">
		        <a href="user/user_showEdit"><i class="fa fa-edit" style="color:#02ba85;">编辑信息</i></a><br><br>
		        <p>用户名：<c:out value="${user.username}"></c:out></p>
		        <p>学    号：<c:out value="${user.stunum}"></c:out></p>
		        <p>用户密码：<c:out value="${user.password}"></c:out></p>
		        <p>用户昵称：<c:out value="${user.nickname}"></c:out></p>
		        <p>联系电话：<c:out value="${user.phonenum}"></c:out></p>
		        <p>用户学校：<c:out value="${user.school}"></c:out></p>
		        <p>用户学院：<c:out value="${user.academy}"></c:out></p>
		        <p>用户专业：<c:out value="${user.major}"></c:out></p>
		        <p>用户积分：<c:out value="${user.wealth}"></c:out></p>
		        <p>用户邮箱：<c:out value="${user.email}"></c:out></p> 
		        <p>用户住址：<c:out value="${user.address}"></c:out>
     			</div>             
              </s:form>   
            </div>  
                
  
</body>
</html>
