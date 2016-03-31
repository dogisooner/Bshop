<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <main>
    <h3>无记录可显示。</h3>
    <div class="return"><a href="user/user_backIndex" ><i class="fa fa-home fa-de"></i></a></div>
    <s:form action="" method="post" cssClass="form-inline" role="form">
		  
	      <ul> 
	      	<s:iterator value="orderList" status="status">
	      	<c:if test="${orderList==null}">
	      	    无记录可显示。
	      	</c:if>
	          <li>
	          	<img src="<%=basePath%>images/<s:property value='img'/>">
	          	<p>
	          		
	          			<s:property value="saler"/>
	             		<span class="price"><s:property value="user"/></span>
	          		
	          	
	          	</p>
	          </li>
	          </s:iterator>
	      </ul>		        
	    </s:form>
     </main>
</body>
</html>
