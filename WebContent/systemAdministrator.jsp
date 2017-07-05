<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
		<script src="bootstrap/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" href="css/systemAdministrator.css" />
		
</head>
<body>
	<div class="navbar navbar-duomi navbar-static-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#" id="logo">你好，管理员 ${admin.userName }
                </a>
                <a class="navbar-brand" id ="logo" href='JavaScript:history.back(1)'>返回上一级</a>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2">
                <ul id="main-nav" class="nav nav-tabs nav-stacked" style="">
                    <li class="active">
                        <a href="#">
                            <i class="glyphicon glyphicon-th-large"></i>
                            首页         
                        </a>
                    </li>
                    
                    <li>
                        <a href="#systemSetting" class="nav-header collapsed" data-toggle="collapse">
                            <i class="glyphicon glyphicon-cog"></i>
                            系统管理
                               
                        </a>
                        <ul id="systemSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a target="iframe" href="admin-list"><i class=""></i>修改密码</a></li>
                            
                        </ul>
                    </li>
                    
                    <li>
                        <a href="#dishesSetting" class="nav-header collapsed" data-toggle="collapse">
                            <i class="glyphicon glyphicon-cog"></i>
                            菜品管理
                               
                        </a>
                        <ul id="dishesSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a target="iframe" href="dishes-getAllDishes"><i class=""></i>菜品显示</a></li>
                            <li><a target="iframe" href="dishes-input"><i class=""></i>菜品添加</a></li>
                        </ul>
                    </li>
 
                   <li>
                        <a href="#frontDeskManagerSetting" class="nav-header collapsed" data-toggle="collapse">
                            <i class="glyphicon glyphicon-cog"></i>
                            订单管理
                               
                        </a>
                        <ul id="frontDeskManagerSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a target="iframe" href="orderItem-list"><i class=""></i>查看处理订单</a></li>
                            <li><a target="iframe" href="searchOrder.jsp"><i class=""></i>搜索订单</a></li>
                        </ul>
                    </li>
 
                    <li>
                        <a href="#frontDeskManagerSettin" class="nav-header collapsed" data-toggle="collapse">
                            <i class="glyphicon glyphicon-calendar"></i>
                            查看用户
                        </a>
                        <ul id="frontDeskManagerSettin" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a target="iframe" href="user-getAllUser"><i class=""></i>查看用户</a></li>
                            <li><a target="iframe" href="searchUser.jsp"><i class=""></i>搜索用户</a></li>
                        </ul>
                    </li>
                    <li>
                        <a  href="admin-logout">
                            <i class="glyphicon glyphicon-fire"></i>
                            退出登录
                        </a>
                    </li>
 
                </ul>
                
            </div>
            
           <div>
           
            <iframe name="iframe" src="adminFirstPage.jsp" style="width:80%;" height="570px" frameborder=0  scrolling=auto marginleft=0></iframe>
            
           </div>
           
        </div>
        
    </div>
    
</body>
</html>