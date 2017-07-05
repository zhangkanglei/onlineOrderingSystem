<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
		 <meta name="viewport" content="width=device-width, initial-scale=1.0">
		 <link rel="stylesheet" type="text/css" href="bootstrap/bootstrap.min.css"/>
		 <script src="bootstrap/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		 <script src="bootstrap/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		 
		 
</head>
<body>
	
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		<s:if test="#session.userOrders == null || #session.userOrders.size()==0">
		没有任何订单信息
		</s:if>
		<s:else>
			<table class="table table-hover table-striped">
				<thead>
					<tr>
						<td>ID</td>
						<td>USERNAME</td>
						<td>DATENOW</td>
						<td>ALLTOTAL</td>
						<td>桌号</td>
						<td>订单状态</td>
						<td>订单明细</td>
						<td><a  href='JavaScript:history.back(1)'>返回上一级</a></td>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="#session.userOrders">
			<tr>
				<td>${id }</td>
				<td>${userName }</td>
				<td>${dateNow }</td>
				<td>${allTotal }</td>
				<td>${tableNum }</td>
				<td>${orderStatus }</td>
				<td><a href="orderItem-orderItemList?id=${id }">订单明细</a></td>
				
			</tr>
		</s:iterator>
				</tbody>
				
			</table>
			</s:else>
		</div>
	</div>
</div>
</body>
</html>