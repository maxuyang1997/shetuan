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

		<link rel="shortcut icon" type="image/png"
			HREF="img/favicons/favicon.png" />
		<link rel="icon" type="image/png" HREF="img/favicons/favicon.png" />
		<link rel="apple-touch-icon" HREF="img/favicons/apple.png" />
		<link rel="stylesheet" href="css/style.css" type="text/css" />
		<link rel="stylesheet" href="css/custom.css" type="text/css" />

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
		<script type="text/javascript" SRC="js/flot/jquery.flot.min.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			
			/* setup navigation, content boxes, etc... */
			Administry.setup();
			
			/* progress bar animations - setting initial values */
			Administry.progress("#progress1", 1, 5);
			Administry.progress("#progress2", 2, 5);
			Administry.progress("#progress3", 2, 5);
		
			/* flot graphs */
			var sales = [{
				label: 'Total Paid',
				data: [[1, 0],[2,0],[3,0],[4,0],[5,0],[6,0],[7,900],[8,0],[9,0],[10,0],[11,0],[12,0]]
			},{
				label: 'Total Due',
				data: [[1, 0],[2,0],[3,0],[4,0],[5,0],[6,422.10],[7,0],[8,0],[9,0],[10,0],[11,0],[12,0]]
			}
			];
		
			var plot = $.plot($("#placeholder"), sales, {
				bars: { show: true, lineWidth: 1 },
				legend: { position: "nw" },
				xaxis: { ticks: [[1, "Jan"], [2, "Feb"], [3, "Mar"], [4, "Apr"], [5, "May"], [6, "Jun"], [7, "Jul"], [8, "Aug"], [9, "Sep"], [10, "Oct"], [11, "Nov"], [12, "Dec"]] },
				yaxis: { min: 0, max: 1000 },
				grid: { color: "#666" },
				colors: ["#0a0", "#f00"]			
		    });
		
		
		});
		 
		 	function alertDatum(){
		var url="personalOperate/alertDatum.jsp";
		  $("#content").load(url);
		}
		function alertPassword(){
		var url="personalOperate/alertPassword.jsp";
		
		$("#content").load(url);
		}
		 	
		 function projectitem(){
		
		     location.href='projectfindProject';
		}
		 function gooneproject(){
		   
		     location.href='projectfindoneProject';
		}
			function newmember(){
			     location.href='membercreatemember';
			}
			function member(){
			     location.href='memberindexmember';
			}
			function indexcommunity(){
				location.href='communityindexcommunity';
			}
			function newcommunity(){
				
				location.href='communitynewcommunity';
			}
			
			function indexactivity(){
				location.href='activityindexactivity';
			}
			function newactivity(){
				
				location.href='activitynewactivity';
			}
			function indexfunds(){
				location.href='fundsindexfunds';
			}
		    function newfunds(){
				
				location.href='fundsnewfunds';
			}
	        function searchmember(){
				
				location.href='member_search.jsp';
			}
	        function searchactivity(){
				
				location.href='activity_search.jsp';
			}
	        function searchfunds(){
			
			    location.href='funds_search.jsp';
		   }
	       function searchcommunity(){
			
			    location.href='community_search.jsp';
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
.wrapper-register p label{
 font-size: 13px;
}
.point{
	 font-size:13px;
	 color: grey;
	}
		</style>
	</head>

	<body>
		<!-- Header -->
		<header id="top">
		<div class="wrapper">
			<!-- Title/Logo - can use text instead of image -->
			<div id="title">
				<img SRC="img/logo.png" alt="Administry" />
				<!--<span>Administry</span> demo-->
			</div>
			<!-- Top navigation -->

			<div id="topnav">
				<a href="#"><img class="avatar" SRC="img/user_32.png" alt="" />
				</a> 当前登录用户
				<b><s:property value="#session.user.user_name" /> </b>
				<span>|</span>
				<a href="#">设置</a>
				<span>|</span>
				<a href="userlogout">注销</a>
				<br />

				<!--<small>你有 <a href="#" class="high"><b>1</b> 个新任务！</a> </small> -->
			</div>
			<!-- End of Top navigation -->
			<!-- Main navigation -->
			<nav id="menu">

			<ul class="sf-menu">

				<li>
					<a HREF="main.jsp">社团首页</a>
				</li>

				<li>
					<a HREF="memberindexmember">会员管理</a>
						<ul>
								<li style="height: 33px; width: 120px;">

									<span onclick="member();"><font color="white"
										size="2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会员列表<br>
									</font> </span>
								</li>
								<s:if test='#session.user.duty.duty_ID!=2&&#session.user.duty.duty_ID!=4'>
									<li style="height: 33px; width: 120px;">
										<span onclick="newmember();">
										<font color="white"
											size="2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;申请入会<br>
										</font> 
										</span>
									</li>
								</s:if>
								<li style="height: 33px; width: 120px;">

										<span onclick="searchmember();"><font color="white"
											size="2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;查询信息<br>
										</font> </span>
									</li>
							</ul>
				</li>
				
					<li>
					<a HREF="activityindexactivity">社团活动</a>
								<ul>
								<li style="height: 33px; width: 120px;">

									<span onclick="indexactivity();"><font color="white"
										size="2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;活动列表<br>
									</font> </span>
								</li>
								<s:if test='#session.user.duty.duty_ID!=5&&#session.user.duty.duty_ID!=4&&#session.user.duty.duty_ID!=2'>
									<li style="height: 33px; width: 120px;">
										<span onclick="newactivity();"><font color="white"
											size="2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新建活动<br>
										</font> </span>
									</li>
								</s:if>
								<li style="height: 33px; width: 120px;">

										<span onclick="searchactivity();"><font color="white"
											size="2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;查询活动<br>
										</font> </span>
									</li>
							</ul>
				</li>
				<s:if test="#session.user.duty.duty_ID!=5">
				<li>
					<a HREF="fundsindexfunds">经费管理</a>
						<ul>
								<li style="height: 33px; width: 120px;">

									<span onclick="indexfunds();"><font color="white"
										size="2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;经费列表<br>
									</font> </span>
								</li>
									<s:if test='#session.user.duty.duty_ID!=2&&#session.user.duty.duty_ID!=4'>
									<li style="height: 33px; width: 120px;">

										<span onclick="newfunds();"><font color="white"
											size="2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新建申请<br>
										</font> </span>
									</li>
									</s:if>
								<li style="height: 33px; width: 120px;">

										<span onclick="searchfunds();"><font color="white"
											size="2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;查询经费<br>
										</font> </span>
									</li>
							</ul>
				</li>
				</s:if>

				<li>
					<a HREF="communityindexcommunity">社团管理</a>
							<ul>
								<li style="height: 33px; width: 120px;">

									<span onclick="indexcommunity();"><font color="white"
										size="2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;社团列表<br>
									</font> </span>
								</li>
								<s:if test='#session.user.duty.duty_ID!=2&&#session.user.duty.duty_ID!=3&&#session.user.duty.duty_ID!=4'>
									<li style="height: 33px; width: 120px;">
										<span onclick="newcommunity();"><font color="white"
											size="2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新建社团<br>
										</font> </span>
									</li>
								</s:if>
								<li style="height: 33px; width: 120px;">

										<span onclick="searchcommunity();"><font color="white"
											size="2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;查询社团<br>
										</font> </span>
									</li>
							</ul>
				</li>
			
			
             <li class="current">
					<a href="personalOperate/personalMessage.jsp">个人中心</a>
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
			<div class="wrapper">
				<h1>
					个人资料
				</h1>

			</div>
		</div>
		<!-- End of Page title -->

		<!-- Page content -->
		<div id="page">
			<!-- Wrapper -->
			<div class="wrapper">

				<!-- Left column/section -->
				<section id="content" class="column width6 first">


				<div id="wrapper">
					<div class="wrapper-register">

						<p>
							<label for="usernamespan">
								账号：
							</label>
							<span id="usernamespan" class="point"> <s:property
									value="#session.user.user_account" />
							</span>
							<br />
						</p>

						<p>
							<label for="usernamespan">
								真实姓名:
							</label>
							<span id="usernamespan" class="point"><s:property
									value="#session.user.user_name" />
							</span>
							<br />
						</p>
						<p>
							<label for="usergender">
								性别：
							</label>
							<span id="usergender" class="point"><s:property
									value="#session.user.user_gender" />
							</span>
							<br />

						</p>
						<p>
							<label for="userjoindate">
								加入时间：
							</label>
							<span id="userjoindate" class="point"><s:property
									value="#session.user.user_joindate" />
							</span>
							<br />

						</p>
						<p>
							<label for="userquestion">
								密保问题：
							</label>
							<span id="userquestion" class="point"><s:property
									value="#session.user.user_question" />
							</span>
							<br />

						</p>

						<p>
							<label for="userresult">
								密保答案：
							</label>
							<span id="userresult" class="point"><s:property
									value="#session.user.user_result" />
							</span>
							<br />

						</p>



					</div>
				</div>
			</div>
			<div class="clear">
				&nbsp;
			</div>

			</section>
			<!-- End of Left column/section -->

			<!-- Right column/section -->
			<aside class="column width2">
			<div id="rightmenu">

				<header>
				<h3>
					账号管理
				</h3>
				</header>
				<dl class="first">
					<dt>
						<img width="16" height="16" alt="" SRC="img/key.png">
					</dt>
					<dd>
						<a href="javascript:void(0);" onclick="alertPassword();">修改密码</a>
					</dd>
					<dd class="last">
						不安全的话要修改密码
					</dd>


					<dt>
						<img width="16" height="16" alt="" SRC="img/help.png">
					</dt>
					<dd>
						<a href="javascript:void(0);" onclick="alertDatum();">修改资料</a>
					</dd>
					<dd class="last">
						及时更新您的资料
					</dd>
				</dl>
			</div>
			<div class="content-box">
				<header>
				<h3>
					通知信息
				</h3>

				</header>
				<section>
				<dl>
					<dt>
						安博思软最新技术更新
					</dt>
					<dd>
						<a href="#">Read more</a>
					</dd>
					<dt>
						安博思软欢迎领导莅临
					</dt>
					<dd>
						<a href="#">Read more</a>
					</dd>

				</dl>
				</section>
			</div>
			</aside>
			<!-- End of Right column/section -->

		</div>
		<!-- End of Wrapper -->


		<!-- End of Page content -->


		<!-- Page footer -->
		<footer id="bottom">
		<div class="wrapper">
			<nav>
			<a href="#">功能1</a> &middot;
			<a href="#">功能2</a> &middot;
			<a href="#">功能3</a> &middot;
			<a href="#">功能4</a> &middot;
			<a href="#">功能5</a> &middot;
			<a href="#">功能6</a> &middot;
			<a href="#">功能7</a> &middot;
			<a href="#">功能8</a>

			</nav>
			<p>
				Copyright &copy; 2012
				<b><a title="www.dotink.cn">www.dotink.cn</a>
				</b> | Icons by
				<a>dotink</a>
			</p>
		</div>
		</footer>
		<!-- End of Page footer -->


		<!-- Animated footer -->
		<footer id="animated">
		<ul>
			<li>
				<a href="#">功能9</a>
			</li>
			<li>
				<a href="#">功能10</a>
			</li>
			<li>
				<a href="#">功能11</a>
			</li>
			<li>
				<a href="#">功能12</a>
			</li>
			<li>
				<a href="#">功能13</a>
			</li>
			<li>
				<a href="#">功能14</a>
			</li>
			<li>
				<a href="#">功能15</a>
			</li>
			<li>
				<a href="#">功能16</a>
			</li>
		</ul>
		</footer>
		<!-- End of Animated footer -->


		<!-- Scroll to top link -->
		<a href="#" id="totop">回到顶部</a>

		<!-- Admin template javascript load -->
		<script type="text/javascript" SRC="js/administry.js"></script>
	</body>
</html>
