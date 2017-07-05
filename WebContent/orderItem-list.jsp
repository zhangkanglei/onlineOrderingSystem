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
		<s:if test="#session.orderItems == null || #session.orderItems.size()==0">
		没有任何订单信息
		</s:if>
		<s:else>
			<table class="table table-hover table-striped">
				<thead>
					<tr>
						<td>ID</td>
						<td>DISHESNAME</td>
						<td>PRICE</td>
						<td>NUM</td>
						<td>TOTAL</td>
						<td><a  href='JavaScript:history.back(1)'>返回上一级</a></td>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="#session.orderItems">
			<tr>
				<td>${id }</td>
				<td>${dishesName }</td>
				<td>${price }</td>
				<td>${num }</td>
				<td>${total }</td>
				
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