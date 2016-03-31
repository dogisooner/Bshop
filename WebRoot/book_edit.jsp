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
    <div class="re_main" >
		<h3>修改书籍信息</h3>
		<div class="return"><a href="user/user_backIndex" ><i class="fa fa-home fa-de"></i></a></div>
		<s:form action="book/book_updateBook" method="post" cssStyle="margin-left:20px;">
       <s:hidden name="book.id"></s:hidden>
       <s:textfield label="书名" name="book.bookname" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
       <s:hidden name="book.owner"></s:hidden>
       <s:password label="出版社" name="book.press" cssClass="str_input" cssStyle="margin-top:8px;"></s:password>
       <s:textfield label="书币" name="book.credit" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
       <s:textfield label="ISBN" name="book.isbn" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
       <s:textfield label="类型" name="book.type" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
       <s:textfield label="页数" name="book.page" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
       <s:textfield label="尺寸" name="book.size" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
       <s:textfield label="配送方式" name="book.delivery" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
       <s:textfield label="作者" name="book.writer" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
       <s:textfield label="译者" name="book.translator" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
       <s:file label="书籍封面" name="book.img" cssClass="str_input" cssStyle="margin-top:8px;"></s:file>       
         <s:submit cssClass="btn btn-green" value="保存"></s:submit> 	   
         </s:form>
        </div>
             
    </body>
</html>
