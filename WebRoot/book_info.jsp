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
     <div class="center_content">
     <div class="left_content">
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>我的账户</div>
        
        	<div class="feat_prod_box_details">
            <p class="details">
            
            </p>
              	<div class="contact_form">
                <div class="form_subtitle">查看书籍信息</div>
                  <div id="showInfo">
				      <c:out value="${book.bookname}"></c:out><br><br><br>
				      <a href="book/book_showBookEdit?book.id=${book.id}">编辑</a>
				        <p>卖       家：<c:out value="${book.owner}"></c:out></p>
				        <p>出版社：<c:out value="${book.press}"></c:out></p>
				        <p>书       币：<c:out value="${book.credit}"></c:out></p>
				        <p>ISBN号：<c:out value="${book.isbn}"></c:out></p>
				        <p>页码：<c:out value="${book.page}"></c:out></p>
				        <p>尺寸：<c:out value="${book.size}"></c:out></p>
				        <p>书籍状态：<c:out value="${book.status}"></c:out></p>
				        <p>配送方式：<c:out value="${book.delivery}"></c:out></p>
				        <p>作者：<c:out value="${book.writer}"></c:out></p>
				        <p>译者：<c:out value="${book.translator}"></c:out></p>
				 </div>        
                </div>           
            </div>	  
        <div class="clear"></div>
        </div><!--end of left content-->
        
        <div class="right_content">
         <div class="cart">
                  <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>购物车</div>
                  <div class="home_cart_content">
                  3 x items | <span class="red">TOTAL: 100$</span>
                  </div>
                  <a href="cart.html" class="view_cart">进入购物车</a>
              
              </div>
    
             <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>关于网站</div> 
             <div class="about">
             <p>
             <img src="images/about.gif" alt="" title="" class="right" />
             </p>
             
             </div>
             
             <div class="right_box">
             
              <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>促销图书</div> 
                    <div class="new_prod_box">
                        <a href="details.html">书名</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.html"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>
                    
                    <div class="new_prod_box">
                        <a href="details.html">书名</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.html"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>                    
                    
                    <div class="new_prod_box">
                        <a href="details.html">书名</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                        <a href="details.html"><img src="images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>              
             
             </div>
             
             <div class="right_box">
             
              <div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>图书类别</div> 
                
                <ul class="list">
                <li><a href="#">哲学</a></li>
                <li><a href="#">文学</a></li>
                <li><a href="#">政治</a></li>
                <li><a href="#">军事</a></li>
                <li><a href="#">经济</a></li>
                <li><a href="#">艺术</a></li>
                <li><a href="#">法律</a></li>
                <li><a href="#">历史</a></li>
                <li><a href="#">教育</a></li>
                <li><a href="#">体育</a></li>
                <li><a href="#">社会</a></li>                                              
                </ul>
                
              <div class="title"><span class="title_icon"><img src="images/bullet6.gif" alt="" title="" /></span>合作网站</div> 
                
                <ul class="list">
                                 
                </ul>      
             
             </div>         
       
        </div><!--end of right content-->

       <div class="clear"></div>
       </div><!--end of center content-->            
       <div class="footer">
       	<div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br /> <a href="http://www.cssmoban.com/" title="free templates">cssmoban</a></div>
        <div class="right_footer">
        <a href="#">主页</a>
        <a href="">关于我们</a>
        <a href="user/user_backIndex">服务</a>
        <a href="user/user_backIndex">隐私政策</a>
        <a href="user/user_backIndex">联系我们</a>       
        </div>    
</div>
</div>
    </body>
</html>