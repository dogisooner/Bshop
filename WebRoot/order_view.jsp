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
    <title><s:text name="查看我的订单"></s:text>
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
    <!--我的订单显示区-->
            <center>
	     	<a href="user/user_backIndex" >返回主页</a>
	     	</center>
	    <div class="displayTable" style="text:center">
	     	<display:table name="${orderList}" id="row" pagesize="5" requestURI="order/order_showOrder">
	     		<display:column title="序号" sortable="true" headerClass="sortable" style="text-align:center;">${row_rowNum}
	     		</display:column>
	     		<display:column property="id" title="订单id号" style="text-align:center;"/>
	     		<display:column title="书籍信息" style="text-align:center;">
	     			<div>${row.book.bookname}</div>	   
	     		</display:column>
	     		<display:column title="卖家" style="text-align:center;">
	     		    <div>${row.book.owner}</div>
	     		</display:column>
	     		<display:column title="价格" style="text-align:center;">
	     		    <div>${row.price}</div>
	     		</display:column>
	     		<display:column  title="订单操作"  style="text-align:center;">
	     		    <a href="">编辑</a>
	     		    <a href="">删除</a>		
	     		</display:column>     				
	     	</display:table>
        </div>
       </div>
  </body>
</html>
