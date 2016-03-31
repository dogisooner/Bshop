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
    <s:form action="" method="post" cssClass="form-inline" role="form">
		  
	      <ul> 
	      	<s:iterator value="bookList" status="status">
		<c:choose>
	      	<c:when test="${bookList==null}">
      			无记录。
      		</c:when>
      		<c:otherwise>
	          <li>
	          	<img src="<%=basePath%>images/<s:property value='img'/>">
	          	<p>
	          		<a href="book/book_showBookEdit?book.id=<s:property value='id'/>">
	          			<s:property value="bookname"/>
	          		</a>
	          		<span class="price">&yen;<s:property value="credit"/></span>
	          		&nbsp;&nbsp;&nbsp;&nbsp;<a href="book/book_showBookEdit?book.id=<s:property value='id'/>">
	          		<i class="fa fa-pencil"></i> 
	          		</a>
	          	</p>
	          </li>
	          </c:otherwise>
	          </c:choose>
	          </s:iterator>
	      </ul>		        
	    </s:form>
     </main>
</body>
</html>
