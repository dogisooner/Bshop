<%@ page language="java" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 导入struts2标签库 -->
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<title>Book Store</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="wrap">

       <div class="header">
       		<div class="logo"><a href="index.html"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>            
        <div id="menu">
            <ul>                                                                       
            <li><a href="user/user_backIndex">主页</a></li>
            <li><a href="stu_register.jsp">书籍上架</a></li>
            <li><a href="stu_register.jsp">书籍</a></li>
            <li><a href="stu_register.jsp">特价</a></li>
            <li><a href="stu_login.jsp">我的账户</a></li>
            <li class="selected"><a href="stu_register.jsp">注册</a></li>
            <li><a href="stu_register.jsp">种类</a></li>
            <li><a href="stu_register.jsp">联系方式</a></li>
            </ul>
        </div>              
       </div> 
       <div class="center_content">
       	<div class="left_content">
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>注册</div>
        
        	<div class="feat_prod_box_details">
            <p class="details">         
            </p>
              	<div class="contact_form">
                <div class="form_subtitle">创建一个新的账户</div>
                   <s:form action="user/user_register" method="post">
			       <s:textfield label="用户名" name="user.username"></s:textfield>
			       <s:textfield label="学号" name="user.stunum"></s:textfield>
			       <s:password label="密码" name="user.password"></s:password>
			       <s:textfield label="昵称" name="user.nickname"></s:textfield>
			       <s:textfield label="联系电话" name="user.phonenum"></s:textfield>
			       <s:textfield label="学校" name="user.school"></s:textfield>
			       <s:textfield label="学院" name="user.academy"></s:textfield>
			       <s:textfield label="专业" name="user.major"></s:textfield>
			       <s:textfield label="邮箱" name="user.email"></s:textfield>
			       <s:textfield label="住址" name="user.address"></s:textfield>
			       <s:file label="学生头像" name="user.picture"></s:file>
			       <s:submit value="注册"></s:submit><s:reset value="重置"></s:reset>
                   </s:form>
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
        <a href="stu_register.jsp">主页</a>
        <a href="stu_register.jsp">关于我们</a>
        <a href="stu_register.jsp">服务</a>
        <a href="stu_register.jsp">隐私政策</a>
        <a href="stu_register.jsp">联系我们</a>      
        </div>    
       </div>
</div>
</body>
</html> 
 
