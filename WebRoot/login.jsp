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

	function checkUname(){
	var username=document.getElementById("username").value;
		  var questionspan=document.getElementById("questionspan");
		   questionspan.innerHTML="<font></font>";
	if(username.length<=0){
	 $("#findpassword").css("color","red");
	}else{
	var userresult=document.getElementById("userresult");
userresult.value="";
	
	$("#emailform").toggle("slow");
	$("#findpassword").css("color","grey");
		$.post("userfindpassword",{content:username
		},function(data,textStatus){
		if(data.match(null)){
		  questionspan.innerHTML="<font color='red'>该账号不存在！</font>";
		  
		}else{
		 questionspan.innerHTML="<font></font>";
		
		var userquestion=data.split("#")[0];
		 result=data.split("#")[1];
		 realityPassword=data.split("#")[2];
		  var question=document.getElementById("question");
		  question.value=userquestion;
		  }
		});
	
	}
	
	}
	function findPassword(){
	var userresult=document.getElementById("userresult").value;
	var resultspan=document.getElementById("resultspan");
	var passwordspan=document.getElementById("passwordspan");
	resultspan.innerHTML="<font></font>";
		passwordspan.innerHTML="<font></font>";
	if(userresult.match(result)){
	passwordspan.innerHTML="<font color='green'>密码是"+realityPassword+".</font>";
	}else if(!userresult.match(result)){
	resultspan.innerHTML="<font color='red'>答案错误</font>";
	}
	 
	}
	</script>
		<style>
	.errorMessage{

list-style: none;
display: block;
}
.errorMessage li{

list-style: none;
color: red;
}
	
	</style>
	</head>

	<body>
		<!-- Header -->
		<header id="top">
		<div class="wrapper-login">
			<!-- Title/Logo - can use text instead of image -->
			<div id="title">
				<img SRC="img/logo.png" alt="Administry" />
				<!--<span>Administry</span> demo-->
			</div>
			<!-- Main navigation -->
			<nav id="menu">
			<ul class="sf-menu">

				<li class="current">
					<a href="login.jsp">用户登录</a>
				</li>
				<li>
					<a href="userfindDuty">用户注册</a>
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
			<div class="wrapper-login"></div>
		</div>
		<!-- End of Page title -->


		<!-- Page content -->
		<div id="page">
			<!-- Wrapper -->
			<div class="wrapper-login">
				<!-- Login form -->
				<section class="full">

				<h3>
					太原科技大学校园社团管理系统
				</h3>

				<div class="box box-info">
					亲，输入账号密码就可登录咯。
				</div>

				<form id="loginform" method="post" action="userlogin">

					<p>
						<label class="required" for="username">
							账号:
						</label>
						<br />
						<input type="text" id="username" class="full" 
							name="user.user_account" />
					</p>

					<p>
						<label class="required" for="password">
							密 码:
						</label><span id="passwordspan"></span>
						<br />

						<input type="password" id="password" class="full" 
							name="user.user_password" />
					</p>
					<p>
						<s:fielderror value="error"></s:fielderror>
					</p>

					<p>
						<input type="checkbox" id="remember" class="" value="1"
							name="content" />
						<label class="choice" for="remember">
							自动登录
						</label>
					</p>

					<p>
						<input type="submit" class="btn btn-green big" value="登录" />
						&nbsp;
						<a href="javascript: //;"
							onClick="checkUname(); ">忘记密码?</a> <span id="findpassword">(找密码前请填写账号)</span>

					</p>
					<div class="clear">
						&nbsp;
					</div>

				</form>

				<form id="emailform" style="display:none" method="post" action="#">
					<div class="box">
						<p id="questioninput">
							<label for="question">
								密保问题:
							</label><SPAN id="questionspan"></SPAN>
							<br />
							<input type="text" id="question" class="full" value=""
								name="question" readonly="readonly" />

						</p>
						<p id="resultinput">
							<label for="result">
								密保答案:
							</label><SPAN id="resultspan"></SPAN>
							<br />
							<input type="text" id="userresult" class="full" value=""
								name="result" />

						</p>
						<p>
							<input type="button" class="btn" value="找回密码" onclick="findPassword();" />
						</p>
					</div>
				</form>

				</section>
				<!-- End of login form -->

			</div>

			<!-- End of Wrapper -->
		</div>
		<!-- End of Page content -->

		<!-- Page footer -->
		<footer id="bottom">
		<div class="wrapper-login">
			<p>
				Copyright &copy; 2012
				<b><a HREF="*" title="www.dotink.cn">www.dotink.cn</a>
				</b> | Icons by
				<a HREF="http://www.865171.cn">dotink</a>
			</p>

		</div>
		</footer>
		<!-- End of Page footer -->

		<!-- User interface javascript load -->
		<script type="text/javascript" SRC="js/administry.js"></script>
	</body>
</html>
