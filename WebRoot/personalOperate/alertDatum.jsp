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

		<title>Project主界面</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">


		<script type="text/javascript">
		$(document).ready(function(){
			
		$("#pagetitle h1").text("修改资料");
		$("#menu li").removeClass("current");
		$("#menu > ul >li:eq(5)").addClass("current");
		
		
		});
		function checkAccount(){
	var account=document.getElementById("useraccount").value;
                 var accountPoint=document.getElementById("useraccountspan");
	if(account.length<4){
	  accountPoint.innerHTML="<font color='red'>账号太短</font>";
	  return false;
	  
	}else if(account.length>17){
	  accountPoint.innerHTML="<font color='red'>账号太长</font>";
	  return false;
	}else{
	 $.post("usercheckName", { 
						content :   account  , 
					}, function (data, textStatus){
                      
                if("1".match(data)){
	     accountPoint.innerHTML="<font color='green'>可以更改名字</font>";
	     return true;
                }else{
	      accountPoint.innerHTML="<font color='red'>该账号已经被注册</font>";
	      return false;
                }
					});
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
				<form id="registerform" method="post" action="userupdateDatum">

					<p>
						<label class="required" for="useraccount">
							用户名:
						</label>
						<span id="useraccountspan" class="point">用户名为4-16位字母，数字，下划线等</span>
						<br />
						<input type="text" id="useraccount" class="full"
							value="<s:property value='#session.user.user_account'/>"
							name="user.user_account" onblur="return checkAccount();" />
					</p>
					<p>
						<label class="required" for="username">
							真实姓名:
						</label>
						<br />

						<input type="text" id="username" class="full"
							value="<s:property value='#session.user.user_name'/>"
							name="user.user_name" />
					</p>
					<p>
						<label class="required" for="usergender">
							性别:
						</label>
						<br />
						<s:if test='#session.user.user_gender == "男"'>

							<input type="radio" name="user.user_gender" value="男"
								checked="checked">男
								</s:if>
						<s:else>
							<input type="radio" name="user.user_gender" value="男">男
								</s:else>


						<s:if test='#session.user.user_gender== "女"'>

							<input type="radio" name="user.user_gender" value="女"
								checked="checked">女
								</s:if>
						<s:else>
							<input type="radio" name="user.user_gender" value="女">女
								</s:else>
					</p>
					<p>
						<label class="required" for="userquestion">
							密保问题:
						</label>
						<br />

						<input type="text" id="userquestion" class="full"
							value="<s:property value='#session.user.user_question'/>"
							name="user.user_question" />
					</p>
					<p>
						<label class="required" for="userresult">
							答 案:
						</label>
						<br />

						<input type="text" id="userresult" class="full"
							value="<s:property value='#session.user.user_result'/>"
							name="user.user_result" />
					</p>
					<p>
						<input type="submit" class="btn btn-green big" value="修改资料"
							onclick="return check();" />
						&nbsp;

					</p>
					<div class="clear">
						&nbsp;
					</div>

				</form>
			</div>
		</div>
		 
		<div class="clear">
			&nbsp;
		</div>

	

	</body>
</html>
