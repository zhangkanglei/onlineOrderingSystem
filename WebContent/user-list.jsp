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
		<s:if test="#session.users == null || #session.users.size()==0">
		没有任何用户信息
		</s:if>
		<s:else>
			<table class="table table-hover table-striped">
				<thead>
					<tr>
						<td>ID</td>
						<td>USERNAME</td>
						<td>PASSWORD</td>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="#session.users">
			<tr>
				<td>${id }</td>
				<td>${username }</td>
				<td>${password }</td>
				
			</tr>
		</s:iterator>
	
				</tbody>
			 <span style="color:#FF0000;"> <s:set name="page" value="#request.page"></s:set>  
        <tr>  
        <td colspan="9">  
        当前是第<s:property value="#request.page.pageNow"/>页，共<s:property value="#request.page.totalPage"/>页  
        <s:if test="#page.hasFirst">  
            <a href="user-getAllUser?pageNow=1"  target="_self">首页</a>  
        </s:if>  
        <s:if test="#page.hasPre">  
            <a href="user-getAllUser?pageNow=<s:property value="#page.pageNow-1"/> "  target="_self">上一页</a>  
        </s:if>  
        <s:if test="#page.hasNext">  
             <a  href="user-getAllUser?pageNow=<s:property value="#page.pageNow+1" />" target="_self">下一页</a>  
        </s:if>  
         <s:if test="#page.hasLast">  
            <a href="user-getAllUser?pageNow=<s:property value="#page.totalPage"/>" onclick="change();return false"  target="_self">尾页</a>  
        </s:if>  
     </td>  
  </tr></span>  	
			</table>
			</s:else>
		</div>
	</div>
</div>
</body>
</html>