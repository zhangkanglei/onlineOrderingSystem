<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>  
    <html>  
        <head>  
            <meta charset="utf-8" />  
            <meta http-equiv="pragma" content="no-cache"> 
     <meta http-equiv="cache-control" content="no-cache"> 
     <meta http-equiv="expires" content="0">  
            <!--用百度的静态资源库的cdn安装bootstrap环境-->  
            <!-- Bootstrap 核心 CSS 文件 -->  
            <link href="bootstrap/bootstrap.min.css" rel="stylesheet">  
            <!--font-awesome 核心我CSS 文件-->  
            <link href="//cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">  
            <!-- 在bootstrap.min.js 之前引入 -->  
            <script src="bootstrap/jquery.min.js"></script>  
            <!-- Bootstrap 核心 JavaScript 文件 -->  
            <script src="bootstrap/bootstrap.min.js"></script>  
            <!--jquery.validate-->  
            <script type="text/javascript" src="js/message.js" ></script>  
            <style type="text/css">  
                body{background: url(img/u=171867435,1912330949&fm=72.jpg) no-repeat;background-size:cover;font-size: 16px;}  
                .form{background: rgba(255,255,255,0.2);width:400px;margin:100px auto;}  
                #login_form{display: block;}  
                #register_form{display: none;}  
                .fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}  
                input[type="text"],input[type="password"]{padding-left:26px;}  
                .checkbox{padding-left:21px;}  
            </style>  
        </head>  
        <body>  
            <!--  
                基础知识：  
                网格系统:通过行和列布局  
                行必须放在container内  
                手机用col-xs-*  
                平板用col-sm-*  
                笔记本或普通台式电脑用col-md-*  
                大型设备台式电脑用col-lg-*  
                为了兼容多个设备，可以用多个col-*-*来控制；  
            -->  
        <div class="container">  
            <div class="form row">  
                <form action="user-login" class="form-horizontal col-sm-offset-3 col-md-offset-3" id="login_form"  method="post">  
                    <h3 class="form-title">请登录</h3>  
                    <div class="col-sm-9 col-md-9">  
                        <div class="form-group">  
                            <i class="fa fa-user fa-lg"></i>  
                            <input class="form-control required" type="text" placeholder="用户名" name="username" autofocus="autofocus" maxlength="20" required minlength="2"/>  
                        </div>  
                        <div class="form-group">  
                                <i class="fa fa-lock fa-lg"></i>  
                                <input class="form-control required" type="password" placeholder="密码" name="password" maxlength="8" required minlength="4"/>  
                        </div>  
                        <div class="form-group">  
                            <hr />  
                            <a href="register.jsp" id="register_btn" class="">注册新用户</a><br>  
                            <a href="admin-login.jsp" id="register_btn" class=""  target="_Blank">管理员登陆</a>  
                            
                        	<a href="user-travel" id="register_btn" class="btn btn-success pull-right"  >游客登陆</a>  
                        </div>  
                        <div class="form-group">  
                            <input type="submit" class="btn btn-success pull-right" value="登陆 " />     
                        </div>  
                    </div>  
                </form>  
            </div>  
      
          
        </body>  
    </html>  