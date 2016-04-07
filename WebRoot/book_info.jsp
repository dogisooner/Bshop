<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
	<header> <%@include file="menubar.jsp"%>
	</header>
	<div class="re_main">
           <h3>------&nbsp;<c:out value="${book.bookname}"></c:out>&nbsp;------</h3>
              <s:form action="user/user_login" method="post">         
                <div id="showInfo">
		        <a href="book/book_showBookEdit?book.id=${book.id}"><i class="fa fa-edit" style="color:#02ba85;">编辑信息</i></a><br><br>
		        <p>书    名：<c:out value="${book.bookname}"></c:out></p>
		        <p>卖    家：<c:out value="${book.owner}"></c:out></p>
		        <p>出版社：<c:out value="${book.press}"></c:out></p>
		        <p>书    币：<c:out value="${book.credit}"></c:out></p>
		        <p>ISBN号：<c:out value="${book.isbn}"></c:out></p>
		        <p>页    码：<c:out value="${book.page}"></c:out></p>
		        <p>尺    寸：<c:out value="${book.size}"></c:out></p>
		        <p>书籍状态：<c:out value="${book.status}"></c:out></p>
		        <p>配送方式：<c:out value="${book.delivery}"></c:out></p>
		        <p>编    者：<c:out value="${book.writer}"></c:out></p> 
		        <p>译    者：<c:out value="${book.translator}"></c:out>
     			</div>             
              </s:form>   
            </div>  

</body>
</html>
