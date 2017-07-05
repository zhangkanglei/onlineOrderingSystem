<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row">
					<div class="thumbnail">
						<img alt="300x200" src="${dishesSynopsis.imagePath } " class="img-circle" width="350px" height="350px"/>
						<div class="caption">
							<h3>
								${dishesSynopsis.dishes }
							</h3>
							<p>
								${dishesSynopsis.synopsis }
							</p>
							<p>
								 <a class="btn btn-primary" href="dishes-addCar?id=${dishesSynopsis.id }&sum=1&total=${dishesSynopsis.price }"  role="button" class="btn" data-toggle="modal" onclick="jiaru();return false;">加入购物车</a><a class="btn" href='JavaScript:history.back(1)'>返回</a> 
							</p>
						</div>
					</div>
				
			</div>
		</div>
	</div>
</div>
</body>
</html>