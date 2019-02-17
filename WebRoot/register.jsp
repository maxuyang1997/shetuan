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

		<title>Project登陆界面</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link rel="shortcut icon" type="image/png"
			HREF="img/favicons/favicon.png" />
		<link rel="icon" type="image/png" HREF="img/favicons/favicon.png" />
		<link rel="apple-touch-icon" HREF="img/favicons/apple.png" />
		<link rel="stylesheet" href="css/style.css" type="text/css" />

		<script type="text/javascript" SRC="js/swfobject.js"></script>
		<script type="text/javascript" SRC="js/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" SRC="js/jquery.ui.core.min.js"></script>
		<script type="text/javascript" SRC="js/jquery.ui.widget.min.js"></script>
		<script type="text/javascript" SRC="js/jquery.ui.tabs.min.js"></script>
		<script type="text/javascript" SRC="js/jquery.tipTip.min.js"></script>
		<script type="text/javascript" SRC="js/jquery.superfish.min.js"></script>
		<script type="text/javascript" SRC="js/jquery.supersubs.min.js"></script>
		<script type="text/javascript" SRC="js/jquery.validate_pack.js"></script>
		<script type="text/javascript" SRC="js/jquery.nyroModal.pack.js"></script>
		<script type="text/javascript">
	
	function checkAccount(){
	var value="";
	var account=document.getElementById("useraccount").value;
                 var accountPoint=document.getElementById("useraccountspan");
	if(account.length<4){
 
	  accountPoint.innerHTML="<font color='red'>用户名太短</font>";
	  return false;
	  
	}else if(account.length>17){
 
	  accountPoint.innerHTML="<font color='red'>用户名太长</font>";
	  return false;
	}else{
	 $.post("usercheckName", { 
						content :   account  , 
					}, function (data, textStatus){
                       
                if("1".match(data)){
               value="1";
	     accountPoint.innerHTML="<font color='green'>可以注册</font>";
	     accountPoint.value="1";
  return true;
                }else{
	     
	      accountPoint.innerHTML="<font color='red'>该用户已经被注册</font>";
	      accountPoint.value="2";
	    return true;
                }
					});
					}
				if(accountPoint.value=="1"){
				return true;
				}else{
				return false;
				}	
	    
	}
	function checkPassword(){
	var password=document.getElementById("userpassword").value;
                 var passwordPoint=document.getElementById("userpasswordspan");
	if(password.length<4){
	  passwordPoint.innerHTML="<font color='red'>密码太短</font>";
 
	  return false;
	  
	}else if(password.length>17){
	  passwordPoint.innerHTML="<font color='red'>密码太长</font>";
 
	  return false;
	}else{
 
	  passwordPoint.innerHTML="<img src='img/accept.png'></img>";
	 
	return true;
	} 
	}
	function checkRepassword(){
	
	var repassword=document.getElementById("repassword").value;
	var password=document.getElementById("userpassword").value;
  
                 var repasswordPoint=document.getElementById("repasswordspan");
	  if(repassword.length<=0){
	repasswordPoint.innerHTML="<font color='red'>确认密码不能为空</font>";
	  return false;
	}else if(repassword!=password){
	  repasswordPoint.innerHTML="<font color='red'>密码和确认密码不相等</font>";
	  return false;
	
	}else{
	  repasswordPoint.innerHTML="<img src='img/accept.png'></img>";
	 
	   return true;
	}
	}
	
	function check(){
	 	
<%--	if(!checkAccount()){--%>
<%--    alert("用户名填写错误！");--%>
<%--	   return false;--%>
<%--	 }--%>
	  
	  if(!checkPassword()){
	  
	  alert("密码填写错误！");
	  return false;
	  }
	 if(!checkRepassword()){
	 
	 alert("确认密码错误！");
	 return false;
	 
	 }
 <%-- 
	 if(checkAccount()&&checkPassword()&&checkRepassword()){
	  return true;
	 
	 }else{
	 alert("您不可以注册！");
	 return false;
	 }
	 --%>
	 return true;
	}
	</script>
		<style>
	.point{
	 font-size: 9px;
	 color: grey;
	}
	.wrapper, .wrapper-register {
	margin:0 auto;
	text-align:left;
	width: 990px;
	position:relative;
}
.wrapper-register {
	width: 500px;
}
	</style>
	</head>

	<body>
		<!-- Header -->
		<header id="top">
		<div class="wrapper-register">
			<!-- Title/Logo - can use text instead of image -->
			<div id="title">
				<img SRC="img/logo.png" alt="Administry" />
				<!--<span>Administry</span> demo-->
			</div>
			<!-- Main navigation -->
			<nav id="menu">
			<ul class="sf-menu">

				<li>
					<a href="login.jsp">用户登录</a>
				</li>
				<li class="current">
					<a href="register.jsp">用户注册</a>
				</li>
			</ul>
			</nav>
			<!-- End of Main navigation -->
			<!-- Aside links -->
			<aside>
			<b>English</b> &middot;
			<a href="#">Spanish</a> &middot;
			<a href="#">German</a>
			</aside>

			<!-- End of Aside links -->
		</div>
		</header>
		<!-- End of Header -->
		<!-- Page title -->
		<div id="pagetitle">
			<div class="wrapper-register"></div>
		</div>
		<!-- End of Page title -->


		<!-- Page content -->
		<div id="page">
			<!-- Wrapper -->
			<div class="wrapper-register">
				<!-- register form -->
				<section class="full">

				<h3>
					XXX大学校园社团管理系统
				</h3>

				<div class="box box-info">
					亲，注册新用户就可以登录咯！
				</div>

				<form id="registerform" action="userregister" method="post"
					onsubmit="return check();">
					<s:token></s:token>
					<p>
						<label class="required" for="useraccount">
							用户名:
						</label>
						<span id="useraccountspan" class="point">用户名为4-16位字母，数字，下划线等</span>
						<br />
						<input type="text" id="useraccount" class="full" value=""
							name="user.user_account" onblur="return checkAccount();" />
					</p>

					<p>
						<label class="required" for="userpassword">
							密 码:
						</label>
						<span id="userpasswordspan" class="point">密码为4-16位字母，数字，下划线等</span>
						<br />

						<input type="password" id="userpassword" class="full" value=""
							name="user.user_password" onblur="return checkPassword();" />
					</p>
					<p>
						<label class="required" for="repassword">
							确认密码:
						</label>
						<span id="repasswordspan"  class="point"></span>

						<br />

						<input type="password" id="repassword" class="full" value=""
							name="repassword" onblur="return checkRepassword();" />
					</p>
					<p>
						<label class="required" for="username">
							真实姓名:
						</label>
						<br />

						<input type="text" id="username" class="full" value=""
							name="user.user_name" />
					</p>
					<p>
						<label class="required" for="usergender">
							性别:
						</label>
						<br />
						<input type="radio" name="user.user_gender" checked="checked"
							value="男">
						男
						<input type="radio" name="user.user_gender" value="女">
			 			女
					</p>
					<input type="hidden" id="userduty" name="user.duty.duty_ID" value="5"  >
					<input type="hidden" id="userduty" name="user.user_other" value="1"  >
					<p>
						<label class="required" for="userquestion">
							密保问题:
						</label>
						<br />

						<input type="text" id="userquestion" class="full" value=""
							name="user.user_question" />
					</p>
					<p>
						<label class="required" for="userresult">
							答 案:
						</label>
						<br />

						<input type="text" id="userresult" class="full" value=""
							name="user.user_result" />
					</p>

					<p>
						<input type="checkbox">
						同意太原科技电力大学社团管理软件协议
					</p>
					<p>
						<input type="submit" class="btn btn-green big" value="注册" />
						or
						<input type="reset" class="btn" value="重置" />
					</p>




					<div class="clear">
						&nbsp;
					</div>

				</form>



				</section>
				<!-- End of register form -->

			</div>

			<!-- End of Wrapper -->
		</div>
		<!-- End of Page content -->

		<!-- Page footer -->
		<footer id="bottom">
		<div class="wrapper-register">
			<p>
				Copyright &copy; 2018
				<b><a HREF="*" title="www.dotink.cn">xin</a> </b> | 666
				by
				<a HREF="http://www.865171.cn">xin</a>
			</p>

		</div>
		</footer>
		<!-- End of Page footer -->

		<!-- User interface javascript load -->
		<script type="text/javascript" SRC="js/administry.js"></script>
	</body>
</html>
