<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://displaytag.sf.net"  prefix="display"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
  <base href="<%=basePath%>">
    <title>Book Store</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="style.css" />
 </head> 
<body> 
<div id="wrap">
       <div class="header">
       		<div class="logo"><a href="index.html"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>            
        <div id="menu">
            <ul>                                                                       
	            <li><a href="user/user_backIndex">主页</a></li>
	            <li><a href="<%=basePath%>book/book_register?book.owner=${user.username}">书籍上架</a></li>
	            <li><a href="<%=basePath%>book/book_showMyBook?book.owner=${user.username}">我的书籍</a></li>
	            <li><a  target="_self" href="<%=basePath%>user/user_showUserInfo">我的账户</a></li>
	            <li><a href="<%=basePath%>order/order_showOrder?user.id=${user.id}">我的订单</a></li>
	            <li><a href="category.jsp">种类</a></li>
	            <li><a href="contact.jsp">联系方式</a></li>
	            <li id="hello">
	               <c:if test="${user.username!=null}">
	                  <c:out value="${user.username}"></c:out>,你好<br>
	               </c:if>
	            </li>
            </ul>
        </div>     
     </div>
      <!--我的书籍显示区-->
     <div class="displayTable" style="text:center">
		<display:table name="${bookList}" id="row" pagesize="5" requestURI="user/user_login">
		<br>
		<br>
		<br>
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
			    <a href="order/order_addOrder?book.id=${row.id}&user.id=${user.id}">下单</a>
			    <a href="#">收藏</a>		
				</display:column>     				
		</display:table>
</div>        
       <div class="clear"></div>
       </div><!--end of center content-->            
       <div class="footer">
       	<div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br /> <a href="http://www.cssmoban.com/" title="free templates">cssmoban</a></div>
        <div class="right_footer">
        <a href="user/user_backIndex">主页</a>
        <a href="user/user_backIndex">关于我们</a>
        <a href="user/user_backIndex">服务</a>
        <a href="user/user_backIndex">隐私政策</a>
        <a href="user/user_backIndex">联系我们</a>       
        </div>    
</div>
    </body>
</html>
