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
	<h4>userList</h4>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		<s:if test="#request.users == null || #request.users.size()==0">
		没有任何菜品信息
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
					<s:iterator value="#request.users">
			<tr>
				<td>${id }</td>
				<td>${username }</td>
				<td>${password }</td>
				
			</tr>
		</s:iterator>
		<s:iterator value="pageBean">    
        <tr>    
         <td colspan="6" align="center" bgcolor="#5BA8DE">    
         共<s:property value="allRow"/>条记录        
         共<s:property value="totalPage"/>页        
         当前第<s:property value="currentPage"/>页<br>    
        
         <s:if test="%{currentPage == 1}">    
           第一页  上一页    
         </s:if>    
         <!-- currentPage为当前页 -->    
         <s:else>    
           <a href="listUser2.action?page=1">第一页</a>    
           <a href="listUser2.action?page=<s:property value="%{currentPage-1}"/>">上一页</a>    
         </s:else>    
        
         <s:if test="%{currentPage != totalPage}">    
         <a href="listUser2.action?page=<s:property value="%{currentPage+1}"/>">下一页</a>    
         <a href="listUser2.action?page=<s:property value="totalPage"/>">最后一页</a>    
         </s:if>    
        
         <s:else>    
         下一页  最后一页    
         </s:else>    
         </td>    
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