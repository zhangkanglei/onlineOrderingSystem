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
<h1></h1>	
<h1></h1>	
<h1></h1>	
<h1></h1>	
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		
	
			<table class="table table-hover table-striped">
				<thead>
					<tr>
						
						<td>ADMIN</td>
						<td>PASSWORD</td>
						<td>操作</td>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="#request.admins">
			<tr>
				
				<td>${userName }</td>
				<td>${password }</td>
				
				<td><a href="admin-input?id=${id }">修改密码</a></td>
			</tr>
		</s:iterator>
	
				</tbody>
	
			</table>
			
		</div>
	</div>
</div>
</body>
</html>