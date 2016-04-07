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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
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
    <s:form action="book/book_queryBooks" method="post" cssClass="form-inline" role="form">
      		<div class="form-group pull-right mr200">
                <input class="search-field form-control input-sm" title="关键词" name="keyName" placeholder="输入关键词...">
                <button class="btn btn-info btn-sm" type="submit">搜  索</button>
              </div> 
         
	      <ul> 
	      	<s:iterator value="bookList" status="status">
	      	
	          <li>
	          	<img src="<%=basePath%>images/<s:property value='img'/>">
	          	<p>
	          		<a href="book/book_showBookInfo?book.id=<s:property value='id'/>">
	          			<s:property value="bookname"/>
	          		</a>
	          		<span class="price">&yen;<s:property value="credit"/></span>
	          		&nbsp;&nbsp;&nbsp;&nbsp;
	          		<%-- <a href="book/book_showBookEdit?book.id=<s:property value='id'/>">
	          		<i class="fa fa-pencil"></i> 
	          		</a> --%>
	          		<a href="order/order_addOrder?book.id=<s:property value='id'/>&user.id=${user.id}">
	          		<i class="fa fa-plus"></i> 
	          		</a>
	          	</p>
	          </li>
	          </s:iterator>
	      </ul>		        
	    </s:form>
     </main>
</body>
</html>
