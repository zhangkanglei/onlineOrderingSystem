<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="pragma" content="no-cache"> 
     <meta http-equiv="cache-control" content="no-cache"> 
     <meta http-equiv="expires" content="0">  
		 <meta name="viewport" content="width=device-width, initial-scale=1.0">
		 <!--  <link href="bootstrap/bootstrap.min.css" rel="stylesheet">-->  
		 <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
		 <script src="bootstrap/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		 <script src="bootstrap/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		 <!-- 用户名验证是否存在 -->
<style type="text/css">
	
</style>
</head>
<body>

	<div class="container " >
	<div class="row clearfix " >
		<div class="col-md-12 column " >
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			
		</div>
		<div class="collapse navbar-collapse navbar-inverse ">
			<ul class="nav navbar-nav">
				<li class=""><a href="#"><span class="glyphicon glyphicon-home">主页</span></a></li>
				<li><a href="showCart.jsp"><span class="glyphicon glyphicon-shopping-cart">购物车</span></a></li>
				
				
				<li style="margin-left: 0%;">
					<div class="modal fade" id="modal-container-813624" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<table class="table table-hover table-striped">
				<thead>
					<tr>
						<td>用户名</td>
						<td>密码</td>
						<td>邮箱</td>
						<td>操作</td>
					</tr>
				</thead>
				<tbody>
			<tr>
				<td>${user.username }</td>
				<td>${user.password }</td>
				<td>${user.email }</td>
				<td><a href="user-update?id=${user.id }" >修改</a></td>
			</tr>
				</tbody>
				
			</table>
			</div>
			</div>
			</div>
			</div>
				</li>
				<li><a href="user-logout"><span class="glyphicon glyphicon-headphones">退出登录</span></a></li>
				<li class="dropdown" style="margin-right:0%;">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">你好，${user.username }<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li style="margin-left: 0%;">
					<a  href="#modal-container-813624" role="button"  data-toggle="modal" >个人信息</a>
					<div class="modal fade" id="modal-container-813624" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<table class="table table-hover table-striped">
				<thead>
					<tr>
						<td>用户名</td>
						<td>密码</td>
						<td>邮箱</td>
						<td>操作</td>
					</tr>
				</thead>
				<tbody>
			<tr>
				<td>${user.username }</td>
				<td>${user.password }</td>
				<td>${user.email }</td>
				<td><a href="user-update?id=${user.id }" >修改</a></td>
			</tr>
				</tbody>
				
			</table>
			</div>
			</div>
			</div>
			</div>
				</li>
								<li>
									 <a href="user-orderList?id=${user.id }">查看订单</a>
								</li>
								
				
			</ul>
		</div><!-- /.nav-collapse -->
		
	</div><!-- /.container -->
</div>
</div>
<!--  
<div class="container" >
	<div class="row clearfix" >
		<div class="col-md-12 column" >
			<ul class="nav nav-tabs" style="background: white; ">
				<li class="active">
					 <a href="#">首页</a>
				</li>
				
				<li style="margin-left: 70%;">
					<a id="modal-813624" href="#modal-container-813624" role="button" class="btn" data-toggle="modal" >你好，${user.username }</a>
					<div class="modal fade" id="modal-container-813624" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<table class="table table-hover table-striped">
				<thead>
					<tr>
						<td>USERNAME</td>
						<td>PASSWORD</td>
					</tr>
				</thead>
				<tbody>
			<tr>
				<td>${username }</td>
				<td>${user.password }</td>
				
			</tr>
				</tbody>
				
			</table>
			</div>
			</div>
			</div>
			</div>
				</li>
			<li><a href="#shop"><span class="glyphicon glyphicon-shopping-cart">Shop</span></a></li>
			</ul>
		</div>
	</div>
</div>
-->
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="carousel slide" id="carousel-918379">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-918379">
					</li>
					<li data-slide-to="1" data-target="#carousel-918379" class="active">
					</li>
					<li data-slide-to="2" data-target="#carousel-918379">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item">
						<img alt="" src="img/29647e8f081f93948ec3b83e80a572ab.jpg" class="img-responsive" style="height: 350px; width: 1500px;"/>
						<div class="carousel-caption">
							<h4>
							</h4>
							<p>
							</p>
						</div>
					</div>
					<div class="item active">
						<img alt="" src="img/5129319ec52b4591217f0dbc9a0c28b4.jpg" class="img-responsive" style="height: 350px; width: 1500px;"/>
						<div class="carousel-caption">
							<h4>
							</h4>
							<p>
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="img/8ca80ba32f4aacd80f6f6e815a7d560e.jpg" class="img-responsive" style="height: 350px; width: 1500px;"/>
						<div class="carousel-caption">
							<h4>
							</h4>
							<p>
							</p>
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-918379" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-918379" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul id="myTab" class="nav nav-tabs" height="100px">
	<li class="active"><a href="#search" data-toggle="tab" style="height: 60px;"><h4>所有</h4></a></li>
	<li><a href="#hotdishes" data-toggle="tab" style="height: 60px;"><h4>热菜</h4></a></li>
	<li><a href="#colddishes" data-toggle="tab" style="height: 60px;"><h4>凉菜</h4></a></li>
	<li><a href="#mainfood" data-toggle="tab" style="height: 60px;"><h4>主食</h4></a></li>
	<li><a href="#drink" data-toggle="tab" style="height: 60px;"><h4>酒水汤类</h4></a></li>
	<li style="margin: 4px 0 0 0;"><form action="dishes-fuzzyQuery" class="navbar-form navbar-left" role="search" method="post">
						<div class="form-group">
							<input type="text" class="form-control" name="dishes"/>
						</div> <button type="submit" class="btn btn-default">搜索</button>
					</form></a></li>
</ul>
<div id="myTabContent" class="tab-content">
	
	<div class="tab-pane fade in active" id="search">
		<div class="row clearfix">
				<s:if test="#request.dishess==null">
					<s:iterator value="#session.dishess" id="a">
				<div class="col-md-4 column" align="center">
					
					
					
				
					
					<a  href="dishes-synopsis?id=${id }" role="button" class="btn" data-toggle="modal"><img alt="" src="${imagePath }" class="img-circle" width="250px" height="250px"/></a>
			
					<p align="center" id="dishes"><h4>${dishes }</h4></p>
					<p align="center" id="price">￥${price }</p>
					<p align="center" id="price">${classify.classifyName }</p>
					<p align="center"><a href="dishes-addCar?id=${id }&sum=1&total=${price } " role="button" class="btn" data-toggle="modal" onclick="jiaru();return false;">加入购物车</a></p>
					
				</div>
				</s:iterator>
				</s:if>
				<s:else>
				<s:iterator value="#request.dishess" id="a">
				<div class="col-md-4 column" align="center">
					
					<img alt="" src="${imagePath }" class="img-circle" width="250px" height="250px"/>
					<p align="center" id="dishes"><h4>${dishes }</h4></p>
					<p align="center" id="price">￥${price }</p>
					<p align="center" id="price">${classify.classifyName }</p>
					<p align="center"><a href="dishes-addCar?id=${id }&sum=1&total=${price } " role="button" class="btn" data-toggle="modal" onclick="jiaru();return false;">加入购物车</a></p>
					
				</div>
				</s:iterator>
				</s:else>	
			</div>
	</div>
	
	<div class="tab-pane fade " id="hotdishes">
		<div class="row clearfix">
		
				<s:iterator value="#session.dishess" id="a">
				<s:if test="#a.classify.classifyName=='热菜' ">
				<div class="col-md-4 column" align="center">
					
					<img alt="" src="${imagePath }" class="img-circle" width="250px" height="250px"/>
					<p align="center" id="dishes"><h4>${dishes }</h4></p>
					<p align="center" id="price">￥${price }</p>
					<p align="center" id="price">${classify.classifyName }</p>
					<p align="center"><a href="dishes-addCar?id=${id }&sum=1&total=${price } " role="button" class="btn" data-toggle="modal" onclick="jiaru();return false;">加入购物车</a></p>
					
				</div>
				</s:if>
				</s:iterator>
					
			</div>
	</div>
	<div class="tab-pane fade" id="colddishes">
		<div class="row clearfix">
		
				<s:iterator value="#session.dishess" id="a">
				<s:if test="#a.classify.classifyName=='凉菜' ">
				<div class="col-md-4 column" align="center">
					
					<img alt="" src="${imagePath }" class="img-circle" width="250px" height="250px"/>
					<p align="center" id="dishes"><h4>${dishes }</h4></p>
					<p align="center" id="price">￥${price }</p>
					<p align="center" id="price">${classify.classifyName }</p>
					<p align="center"><a href="dishes-addCar?id=${id }&sum=1&total=${price } " role="button" class="btn" data-toggle="modal" onclick="jiaru();return false;">加入购物车</a></p>
					
				</div>
				</s:if>
				</s:iterator>
					
			</div>
	</div>
	<div class="tab-pane fade" id="mainfood">
		<div class="row clearfix">
		
				<s:iterator value="#session.dishess" id="a">
				<s:if test="#a.classify.classifyName=='主食' ">
				<div class="col-md-4 column" align="center">
					
					<img alt="" src="${imagePath }" class="img-circle" width="250px" height="250px"/>
					<p align="center" id="dishes"><h4>${dishes }</h4></p>
					<p align="center" id="price">￥${price }</p>
					<p align="center" id="price">${classify.classifyName }</p>
					<p align="center"><a href="dishes-addCar?id=${id }&sum=1&total=${price } " role="button" class="btn" data-toggle="modal" onclick="jiaru();return false;">加入购物车</a></p>
					
				</div>
				</s:if>
				</s:iterator>
					
			</div>
	</div>
	<div class="tab-pane fade" id="drink">
		<div class="row clearfix">
		
				<s:iterator value="#session.dishess" id="a">
				<s:if test="#a.classify.classifyName=='酒水汤类' ">
				<div class="col-md-4 column" align="center">
					
					<img alt="" src="${imagePath }" class="img-circle" width="250px" height="250px"/>
					<p align="center" id="dishes"><h4>${dishes }</h4></p>
					<p align="center" id="price">￥${price }</p>
					<p align="center" id="price">${classify.classifyName }</p>
					<p align="center"><a href="dishes-addCar?id=${id }&sum=1&total=${price } " role="button" class="btn" data-toggle="modal" onclick="jiaru();return false;">加入购物车</a></p>
					
				</div>
				</s:if>
				</s:iterator>
					
			</div>
	</div>
</div>
			
		</div>
	</div>
</div>

</body>
</html>