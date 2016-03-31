<%@ page contentType="text/html; charset=gbk"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--导航菜单区-->
	<div class="navbar navbar-default" role="navigation">
		<ul class="nav nav-pills">
			<li class="dropdown">
				<a target="_self" href="user/user_backIndex" class="dropdown-toggle" style="padding-top:32px;padding-bottom:31px;">网站首页</a>
			</li>
			<li class="dropdown">
  				<a target="_self" href="book/book_register?book.owner=${user.username}" class="dropdown-toggle" style="padding-top:32px;padding-bottom:31px;">书籍注册</a>
			</li>	
			<li>
 				<a target="_self" href="book/book_showMyBook?book.owner=${user.username}" class="dropdown-toggle" style="padding-top:32px;padding-bottom:31px;">我的书籍</a>
			</li>
			<li class="dropdown">
 				<a target="_self" href="user/user_showUserInfo" class="dropdown-toggle" style="padding-top:32px;padding-bottom:31px;">我的账户</a>
			</li>
			<li class="dropdown">
 				<a target="_self" href="order/order_showOrder?user.id=${user.id}" class="dropdown-toggle" style="padding-top:32px;padding-bottom:31px;">我的订单</a>
			</li>
		    <li class="dropdown" style="margin-left:400px;margin-top:30px;color:#02ba85;font-size:22px;">
             		<c:if test="${user.username!=null}">
                	   <c:out value="${user.username}"></c:out>,你好<br>
            		</c:if>
	   		</li>						
		</ul>	
	</div> 
<script language='javascript'>
$(document).ready(function(){	
	$(".menu ul li").mouseover(
	  function(){
	  $("ul",this).show();
	});
	
	
	$(".menu ul li").mouseout(
	  function(){
	  $("ul ",this).hide();
	});
});	
</script>	