<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>  
    <html>  
        <head>  
            <meta charset="utf-8" />  
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
               
                .fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}  
                input[type="text"],input[type="password"]{padding-left:26px;}  
                .checkbox{padding-left:21px;}  
            </style>  
         <script type="text/javascript">
	
	$(function(){
		$(":input[name=username]").change(function(){
			var val = $(this).val();
			val = $.trim(val);
			var $this = $(this);
			$this.nextAll("font").remove();
			if(val != ""){
				//把当前节点后面的所有 font 兄弟节点删除
				
				
				var url = "user-validateUsername";
				var args = {"username":val, "time":new Date()};
				$.post(url, args, function(data){
					//表示可用
					if(data == "1"){
						$this.after("<font color='green'>username可用!</font>");
					}
					//不可用
					else if(data == "0"){
						$this.after("<font color='red'>username已经存在!</font>");
						$this.focus();
					}
					//服务器错误
					else{
						alert("服务器错误!");
					}
				});
			}else{
				$this.after("<font color='red'>username不能为空!</font>");						

				$(this).val("");
				
			}
		});
	})
	
</script>
<script type="text/javascript">
	$(function(){
		var sub = document.getElementById("sub");
		if(sub.addEventListener){
			sub.addEventListener("click",test);
		}
		else if(sub.attachEvent){
			sub.attachEvent("onClick",test);
		}
	})
	function test(){
		var password = document.getElementById("password");
		var passwordConfirm = document.getElementById("passwordConfirm");
		if(password.value!=passwordConfirm.value)
			{
				alert("对不起两次密码不一致");
				return false;
			}
		
		else
			document.forms[0].submit();
	}
</script>
        </head>  
        <body>  
      
        <div class="container">  
           
            <div class="form row">  
                <form class="form-horizontal col-sm-offset-3 col-md-offset-3" id="register_form" action="user-save" method="post">  
                    <h3 class="form-title">注册你的用户</h3>  
                    <div class="col-sm-9 col-md-9">  
                        <div class="form-group">  
                            <i class="fa fa-user fa-lg"></i>  
                            <input class="form-control required" type="text" placeholder="用户名" name="username" autofocus="autofocus" required minlength="2"/>  
                            <input type="hidden" name="id">
                        </div>  
                        <div class="form-group">  
                                <i class="fa fa-lock fa-lg"></i>  
                                <input class="form-control required" type="password" placeholder="密码" id="password" name="password" required minlength="4"/>  
                        </div>  
                        <div class="form-group">  
                                <i class="fa fa-check fa-lg"></i>  
                                <input class="form-control required" type="password" placeholder="确认密码" id="passwordConfirm" name="rpassword" required minlength="4"/>  
                        </div>  
                        <div class="form-group">  
                                <i class="fa fa-envelope fa-lg"></i>  
                                <input class="form-control eamil" type="text" placeholder="邮箱" name="email"/>  
                        </div>
                          
                        <div class="form-group">  
                            <input type="submit" class="btn btn-success pull-right" value=" 注册 " id="sub"/>  
                        </div>  
                    </div>  
                </form>  
            </div>  
            </div>  
        </body>  
    </html>  