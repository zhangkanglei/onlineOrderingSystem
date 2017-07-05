<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		
</head>	
<body>
	<s:form action="dishes-save" method="post" enctype="multipart/form-data">
		<s:if test="id!=null">
			<s:hidden name="id"></s:hidden>
		</s:if>
		<s:textfield name="dishes" label="菜名"></s:textfield>
		<s:textfield name="price" label="价格"></s:textfield>
		<s:textarea name="synopsis" label="描述"></s:textarea>
		<s:file name="image" label="上传图片"></s:file>
		<s:select list="#request.classifies" listKey="id" listValue="classifyName"
			name="classify.id" label="菜类"></s:select>
		
		<s:submit value="添加"></s:submit>
	</s:form>
	
</body>
</html>