<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="http://displaytag.sf.net"  prefix="display"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title><s:text name="查看我的书籍"></s:text>
    </title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/screen.css" />
  </head>
  <body>
  	<div class="container">   
    <!--我的书籍显示区-->
            <center>
	     	  <a href="user/user_backIndex" >返回主页</a>
	     	</center>
	    <div class="displayTable" style="text:center">
	     	<display:table name="${bookList}" id="row" pagesize="5" requestURI="book/book_showMyBook">
	     		<display:column title="序号" sortable="true" headerClass="sortable" style="text-align:center;">${row_rowNum}
	     		</display:column>
	     		<display:column property="id" title="id号" style="text-align:center;"/>
	     		<display:column title="书籍基本信息" style="text-align:center;">
	     			<div>书籍名称:${row.bookname}</div>
	     		    <div>书籍卖家:${row.owner}</div>
	     		    <div>出售价格：${row.credit}</div>
	     		    <div>出版社:${row.press}</div>
	     		    <div>ISBN号:${row.isbn}</div>	  
	     		    <div>主编:${row.writer}</div>
	     		    <div>译者:${row.translator}</div>	     		   
	     		</display:column>
	     		<display:column title="书籍其他信息" style="text-align:center;">
	     		    <div>书籍类型:${row.type}</div>
                    <div>书籍大小:${row.size}</div>
	     		    <div>页码:${row.page}</div>
	     		    <div>书籍上架时间:${row.uptime}</div>
	     		    <div>书籍状态:${row.status}</div>
	     		    <div>配送方式:${row.delivery}</div>
	     		    <div></div>
	     		</display:column>
	     		<display:column  title="书籍封面" style="text-align: center;">
	     			<img src="<%=basePath%>/bookPics/${row.img}" height="80" width="80">
	     		</display:column>
	     		<display:column  title="书籍操作"  style="text-align:center;">
	     		    <a href="book/book_showBookInfo?book.id=${row.id}">查看</a>
	     		    <a href="book/book_showBookEdit?book.id=${row.id}">编辑</a>
	     		    <a href="book/book_deleteBook?book.id=${row.id}">删除</a>		
	     		</display:column>     				
	     	</display:table>
	     	
        </div>
       </div>
  </body>
</html>
