<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
	<head>

		<base href="<%=basePath%>">


		<script type="text/javascript">
		$(document).ready(function(){
			$("#pagetitle h1").text("修改密码");
				$("#menu li").removeClass("current");
		$("#menu > ul >li:eq(5)").addClass("current");
		
		});
		function checkOldpassword(){
		var oldpassword=document.getElementById("oldpassword").value;
		var password='${user.user_password}';
		var oldpasswordspan=document.getElementById("oldpasswordspan");
		 if(oldpassword==password){
		oldpasswordspan.innerHTML="<font color='green'>密码正确！</font>";
		return true;
		 }else{
			oldpasswordspan.innerHTML="<font color='red'>密码错误正确！</font>";
	 return false;
		 }
		}
		function checkPassword(){
		var newpassword=document.getElementById("newpassword").value;
		var newpasswordspan=document.getElementById("newpasswordspan");
			if(newpassword.length<4){
	  newpasswordspan.innerHTML="<font color='red'>密码太短</font>";
	  return false;
	  
	}else if(newpassword.length>17){
	  newpasswordspan.innerHTML="<font color='red'>密码太长</font>";
	  return false;
	}else{
	  newpasswordspan.innerHTML="<img src='img/accept.png'></img>";
	return true;
	} 
		
		}
		
		function checkRepassword(){
	
	var repassword=document.getElementById("repassword").value;
	var password=document.getElementById("newpassword").value;
  
                 var repasswordPoint=document.getElementById("repasswordspan");
	if(repassword==password){
	  repasswordPoint.innerHTML="<img src='img/accept.png'></img>";
	  return true;
	}else if(repassword.length<=0){
	repasswordPoint.innerHTML="<font color='red'>密码不能为空</font>";
	  return false;
	}else{
	  repasswordPoint.innerHTML="<font color='red'>密码和确认密码不相等</font>";
	  return false;
	}
	}
		
		
		</script>
		<style>
 
#wrapper{
margin:40px auto;
	text-align:left;
	position:relative;
	float: left;
	width: 80%;
}
.wrapper-register {
	margin:0 auto;
	text-align:left;
	position:relative;
	width: 360px;
}
.point{
	 font-size: 9px;
	 color: grey;
	}
		</style>
	</head>

	<body>

		<div id="wrapper">
			<div class="wrapper-register">
				<form id="loginform" method="post" action="userupdatePassword">

					<p>
						<label class="required" for="oldpassword">
							旧密码:
						</label>
						<span id="oldpasswordspan" class="point"></span>
						<br />
						<input type="text" id="oldpassword" class="full" value=""
							name="oldpassword" onblur="checkOldpassword();" />
					</p>

					<p>
						<label class="required" for="newpassword">
							新密码:
						</label>
						<span id="newpasswordspan" class="point">密码为4-16位字母，数字，下划线等</span>
						<br />

						<input type="password" id="newpassword" class="full" value=""
							name="content" onblur="return checkPassword();" />
					</p>
					<p>
						<label class="required" for="repassword">
							确认密码:
						</label>
						<span id="repasswordspan" class="point"></span>
						<br />

						<input type="password" id="repassword" class="full" value=""
							onblur="checkRepassword();" />
					</p>



					<p>
						<input type="submit" class="btn btn-green big" value="修改密码" />
						&nbsp;


					</p>


				</form>
			</div>
		</div>
		 
		
		<div class="clear">
			&nbsp;
		</div>

	</body>
</html>
