<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
</head>
<body>
<form action="orderItem-fuzzyQuery" class="navbar-form navbar-left" role="search" method="post">
						<div class="form-group">
							<input type="text" class="form-control" name="userName"/>
						</div> <button type="submit" class="btn btn-default">搜索</button>
					</form>
</body>
</html>