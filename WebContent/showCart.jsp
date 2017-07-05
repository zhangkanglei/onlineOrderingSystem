<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.1.4.2-min.js"></script>
<script type="text/javascript" src="js/Calculation.js"></script>

	<script type="text/javascript">
		
	</script>

<script type="text/javascript">
$(document).ready(function () {
	
	//jquery��Ч������ѡ��ȫѡ��ѡȡ��(�޲��)
	// ȫѡ        
	$(".allselect").click(function () {
		$(".gwc_tb2 input[name=newslist]").each(function () {
			$(this).attr("checked", true);
			// $(this).next().css({ "background-color": "#3366cc", "color": "#ffffff" });
		});
		GetCount();
	});

	//��ѡ
	$("#invert").click(function () {
		$(".gwc_tb2 input[name=newslist]").each(function () {
			if ($(this).attr("checked")) {
				$(this).attr("checked", false);
				//$(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
			} else {
				$(this).attr("checked", true);
				//$(this).next().css({ "background-color": "#3366cc", "color": "#000000" });
			} 
		});
		GetCount();
	});

	//ȡ��
	$("#cancel").click(function () {
		$(".gwc_tb2 input[name=newslist]").each(function () {
			$(this).attr("checked", false);
			// $(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
		});
		GetCount();
	});

	// ���и�ѡ(:checkbox)�����¼�
	$(".gwc_tb2 input[name=newslist]").click(function () {
		if ($(this).attr("checked")) {
			//$(this).next().css({ "background-color": "#3366cc", "color": "#ffffff" });
		} else {
			// $(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
		}
	});

	// ���
	$(".gwc_tb2 input[name=newslist]").click(function () {
		// $("#total2").html() = GetCount($(this));
		GetCount();
		//alert(conts);
	});
});
//******************
function GetCount() {
	var conts = 0;
	var aa = 0;
	$(".gwc_tb2 input[name=newslist]").each(function (event) {
		
		
		if ($(this).attr("checked")) {
			
			for (var i = 0; i < $(this).length; i++) {
				var price=$(this).parent().siblings(".tb1_td4").html()
				var num=$(this).parent().siblings(".tb1_td5").children().siblings(".text_box1").val()
				
				
				conts += parseFloat(parseFloat(price)*parseInt(num));
				aa += 1;
			}
		}
	});
	$("#shuliang").text(aa);
	$("#zong1").html((conts).toFixed(2));
	$("#jz1").css("display", "none");
	$("#jz2").css("display", "block");
}

function sub(){ 
	var str = "[";
	var table = document.getElementById("ta");
	var ttr = table.querySelectorAll("tr");
	var tableSum = document.getElementById("tableSum").value;
	for (var i = 0;i < ttr.length; i++){
		var ttd = ttr[i].querySelectorAll("td");
		if(i == ttr.length - 1)
			str += "{"+'"dishes":' + '"' + ttd[2].innerHTML+ '",' + '"num":' + '' + ttd[4].firstElementChild.nextElementSibling.value + ',' +'"price":'+ '' + ttd[3].innerHTML + '}]';
		else{
			str += "{"+'"dishes":' + '"' + ttd[2].innerHTML+ '",' + '"num":' + '' + ttd[4].firstElementChild.nextElementSibling.value + ',' +'"price":'+ '' + ttd[3].innerHTML + '},';
		}
	}
	
	var tab = document.getElementById("tb");
	var ttd2 = tab.querySelectorAll("td");
	//str += '"alltotal":' + '"' + ttd2[4].lastElementChild.firstElementChild.innerHTML + '"';
	//str = '"key":'+'"'+str+'"'
	window.location.href="dishes-cleanCar";
	alert("提交订单成功，点击确定回到主页面");
	ajjj(tableSum+str);
}

function ajjj(postData){ 
		var xhr = new XMLHttpRequest();
		 
		xhr.open("POST", "orderItem-save", true);
		xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		xhr.onreadystatechange = function(){
		    var XMLHttpReq = xhr;
		    if (XMLHttpReq.readyState == 4) {
		        if (XMLHttpReq.status == 200) {
		            var text = XMLHttpReq.responseText;
		            console.log(text);
		        }
		    }
		};
		xhr.send("key="+postData);
		
}

</script>

</head>
<body>

<div class="gwc" style=" margin:auto;">
	<table cellpadding="0" cellspacing="0" class="gwc_tb1">
		<tr>
			<td class="tb1_td1"><input id="Checkbox1" type="checkbox"  class="allselect"/></td>
			<td class="tb1_td1">全选</td>
			<td class="tb1_td3">名称</td>
			<td class="tb1_td4">价格</td>
			<td class="tb1_td5">数量</td>
			<td class="tb1_td6">小计</td>
			<td class="tb1_td7">操作</td>
		</tr>
	</table>
		   
	<!---��Ʒ�Ӽ�������---->
	<script type="text/javascript">
	
	$(function () {
		//var t = $(".text_box1");
		$(".add1").click(function (event) {
			
			
      		var add=$(event.target).siblings(".text_box1");
      		
			add.val(parseInt(add.val()) + 1)
			var t=$(event.target).parent().siblings(".tb1_td4").html()
			function setTotal() {
				
			
			$(event.target).parent().siblings(".tb1_td6").children(".total1").html((parseInt((add.val()*t))).toFixed(2));
	//	$(event.target).parent().siblings(".tb1_td4").children(".newlist-1").val((add.val()*t));
			}
			setTotal(); GetCount();
		})

		$(".min1").click(function (event) {
var add=$(event.target).siblings(".text_box1");
      		
			add.val(parseInt(add.val()) - 1)
			var t=$(event.target).parent().siblings(".tb1_td4").html()
			function setTotal() {
				
			
			$(event.target).parent().siblings(".tb1_td6").children(".total1").html((parseInt((add.val()*t))).toFixed(2));
	//	$(event.target).parent().siblings(".tb1_td4").children(".newlist-1").val((add.val()*t));
			}
			setTotal(); GetCount();
		})
		
	})
	</script>
	
	<table id="ta" cellpadding="0" cellspacing="0" class="gwc_tb2">
		<s:iterator value="#session.carList " >
		<tr style="border: 100px solid;">
			<td class="tb2_td1"><input type="checkbox" value="1" name="newslist" class="newslist-1" id="1" /></td>
			<td class="tb2_td2"><a href="#"><img src="${imagePath }"/></a></td>
			<td class="tb2_td3">${dishes }</td>
			<td class="tb1_td4" id="tb1_td4">${price }</td>
			<td class="tb1_td5">
				<input class="min1" name=""  style=" width:20px; height:18px;border:1px solid #ccc;" type="button" value="-" />
				<input class="text_box1" name="" type="text" value="1" disabled="disabled" style=" width:30px; text-align:center; border:1px solid #ccc;" />
				<input class="add1" name="" style=" width:20px; height:18px;border:1px solid #ccc;" type="button" value="+" />
			</td>
			<td class="tb1_td6"><label class="total1" class="tot" style="color:#ff5500;font-size:14px; font-weight:bold;">${price }</label></td>
			<td class="tb1_td7"><a href="dishes-deleteCar?id=${id }">删除</a></td>
			<td><br><br><br><br><br><br><br></td>
		</tr>
		
		</s:iterator>
		
	</table>
	
	
	
	
	<!---����---->
	<script type="text/javascript">
	$(function () {
		$(".quanxun").click(function () {
			setTotal();
			//alert($(lens[0]).text());
		});
		function setTotal() {
			var len = $(".tot");
			var num = 0;
			for (var i = 0; i < len.length; i++) {
				num = parseInt(num) + parseInt($(len[i]).text());

			}
			//alert(len.length);
			$("#zong1").text(parseInt(num).toFixed(2));
			$("#shuliang").text(len.length);
		}
		//setTotal();
	})
	</script>
	<table id="tb" cellpadding="0" cellspacing="0" class="gwc_tb3">
		<tr>
			<td class="tb1_td1"><input id="checkAll" class="allselect" type="checkbox" /></td>
			<td class="tb1_td1">全选</td>
			<td class="tb3_td1">
				
				
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="dishes-list" ><span id="diancai" >继续点菜</span></a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;输入桌号：<input type="text" id="tableSum">
			</td>
			<td class="tb3_td2">已选商品 <label id="shuliang" style="color:#ff5500;font-size:14px; font-weight:bold;">0</label> 件</td>
			<td class="tb3_td3">合计:<span>￥</span><span style=" color:#ff5500;"><label id="zong1" style="color:#ff5500;font-size:14px; font-weight:bold;"></label></span></td>
			<td class="tb3_td4"><span id="jz1" >结算</span><a href="javascript:void(0)" style=" display:none;"  class="jz2" id="jz2" onclick="sub()">结算</a></td>
		</tr>
	</table>

</div>
	
</body>
</html>