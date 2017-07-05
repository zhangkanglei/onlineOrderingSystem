<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
		

</head>
<body>
	<s:form action="user-save1" method="post" enctype="multipart/form-data">
		<s:if test="id!=null">
			<s:textfield name="username" label="用户名" disabled="true"></s:textfield>
			<s:hidden name="id"></s:hidden>
			<s:hidden name="username"></s:hidden>
			<s:hidden name="email"></s:hidden>
			<s:hidden name="phone"></s:hidden>
		</s:if>
		<s:textfield name="password" label="密码"></s:textfield>
		
		<s:submit value="修改" id="update"></s:submit>
	</s:form>
</body>
</html>