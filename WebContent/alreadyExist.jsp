<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
onload=function(){
setInterval(go, 1000);
};
var x=3; //利用了全局变量来执行
function go(){
x--;
if(x>0){
document.getElementById("sp").innerHTML=x; //每次设置的x的值都不一样了。
}else{
location.href='showCart.jsp';
}
}
</script> 
</head>
<body>
	<h4>购物车中已经存在</h4>
	将在<span id="sp" style="color: red;">3</span>秒后跳转到购物车<br>
	如 果 不 能 跳 转 点 击 <a href="showCart.jsp">这里</a> 跳 转 到 购 物 车
</body>
</html>