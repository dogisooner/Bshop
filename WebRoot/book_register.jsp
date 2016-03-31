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
     <div class="return"><a href="user/user_backIndex" ><i class="fa fa-home fa-de"></i></a></div>
     	<s:form action="book/book_bRegister" method="post" cssClass="register">
	    <h3>欢迎您注册书籍</h3>
	    <h6>请完善书籍的信息</h6>
	    <div class="form-group">
	    	 <s:hidden name="book.owner"></s:hidden>
	    	 <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-user"></i></span>
		         <input type="text" class="form-control" name="book.bookname" placeholder="请输入书籍名称">
	         </div>
	         <s:fielderror fieldName="book.bookname" cssClass="fielderror"/>
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-lock"></i></span>
		         <input type="text" name="book.press" class="form-control" placeholder="请输入出版社">
	         </div>
	         <s:fielderror fieldName="book.press" cssClass="fielderror"/> 
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>
		         <input type="text" name="book.credit" class="form-control" placeholder="请输入书币">
	         </div>
	         <s:fielderror fieldName="book.credit" cssClass="fielderror"/>  
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-flag-o"></i></span>
		         <input type="text" name="book.isbn" class="form-control" placeholder="请输入书籍ISBN号">
	         </div>
	         <s:fielderror fieldName="book.isbn" cssClass="fielderror"/>           
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-headphones"></i></span>
		         <input type="text" name="book.type" class="form-control" placeholder="请输入书籍类型">
	         </div>
	         <s:fielderror fieldName="book.type" cssClass="fielderror"/>           
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-home"></i></span>
		         <input type="text" name="book.page" class="form-control" placeholder="请输入总页数">
	         </div>
	         <s:fielderror fieldName="book.page" cssClass="fielderror"/>  
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-home"></i></span>
		         <input type="text" name="book.size" class="form-control" placeholder="请输入书记尺寸">
	         </div>
	         <s:fielderror fieldName="book.size" cssClass="fielderror"/>  
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-home"></i></span>
		         <input type="text" name="book.delivery" class="form-control" placeholder="请输入配送方式">
	         </div>
	         <s:fielderror fieldName="book.delivery" cssClass="fielderror"/>  
	         <div class="input-group">
		         <span class="input-group-addon"><i class="fa fa-mail-forward"></i></span>
		         <input type="text" name="book.writer" class="form-control" placeholder="请输入作者">
	         </div>
	         <s:fielderror fieldName="book.writer" cssClass="fielderror"/>  
	         <div class="input-group input-group">
		         <span class="input-group-addon"><i class="fa fa-home"></i></span>
		         <input type="text" name="book.translator" class="form-control" placeholder="请输入住址">
	         </div>
	         <s:fielderror fieldName="book.translator" cssClass="fielderror"/>  
	     </div>	      
	      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <button type="reset" class="btn btn-success">重置</button>
	      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <button type="submit" class="btn btn-success btn-de">上架 </button>
	    </s:form>
     </main>
  </body>
</html>

  