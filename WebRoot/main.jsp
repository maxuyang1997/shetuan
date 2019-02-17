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

		<title>社团管理主界面</title>

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
		
		function alertDatum(){
		     var url="personalOperate/alertDatum.jsp";
		     $("#content").load(url);
		}
		function alertPassword(){
		     var url="personalOperate/alertPassword.jsp";
		     $("#content").load(url);
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
       function clock() 
	   { 
		var now=new Date(); 
		document.getElementById("showTime").innerHTML=now.toLocaleString().split(" ")[0]+" "+now.toLocaleString().split(" ")[1]; 
		setTimeout("clock()",100); 
	  } 
	    
		</script>
	</head>

	<body onload="clock()">
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

				<li class="current">
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
								   	<s:if test='#session.user.duty.duty_ID!=3'>
								    <li style="height: 33px; width: 120px;">
										<span onclick="newmember();">
										<font color="white"
											size="2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;申请入会<br>
										</font> 
										</span>
									</li>
								    </s:if>
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
								<s:if test='#session.user.duty.duty_ID!=5&&#session.user.duty.duty_ID!=4&&#session.user.duty.duty_ID!=2||#session.user.user_other==3'>
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
									<s:if test='#session.user.duty.duty_ID!=2&&#session.user.duty.duty_ID!=4||#session.user.user_other==3'>
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
			
			
               <li>
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
					社团首页
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

				<div class="colgroup leading">
					<div class="column width3 first">
						<h3>
							欢迎到来,
							<a href="personalOperate/personalMessage.jsp"> <s:property value="#session.user.user_name" />
							</a>
						</h3>
						<p>
							懦弱的人只会裹足不前，莽撞的人只能引火烧身，
							<br />
							只有真正勇敢的人才能所向披靡！
						</p>
					</div>
					<div class="column width3">
						<h4>
							现在是北京时间：
						</h4>
						<p>
						<span id="showTime"></span>
				        </p>

					</div>
				</div>

				<div class="colgroup leading">
					<div class="column width3 first">
						<h4>
							<img width="193" height="34" alt="社团动态" SRC="image/dongtai.png">
						</h4>
						<table class="no-style full">
							<tbody>

								<tr>
								    <td>首届太原科技大学高校社团品牌建设交流...</td>
								</tr>
								<tr>
								    <td>高校社团磨砺青春的站台</td>
								</tr>
								<tr>
								    <td>在韩中国留学生社团2013学年工作会议...</td>
								</tr>
								<tr>
								    <td>太原科技大学2013年学生社团换届大会...</td>
								</tr>
							</tbody>

						</table>
					</div>
					<div class="column width3">
						<h4>
							<img width="177" height="35" alt="社团理论" SRC="image/lilun2.png">
						</h4>
						<table class="no-style full">
							<tbody>
								<tr>
								    <td>高校社团文化研究</td>
								</tr>
								<tr>
								    <td>建设社团特色“文化场”</td>
								</tr>
								<tr>
								    <td>素质教育中的高校社团建设</td>
								</tr>
								<tr>
								    <td>新形势下高校学生社团建设的对策</td>
								</tr>
							</tbody>
						</table>

					</div>
				</div>

				<div class="colgroup leading">
					<div class="column width3 first">
						<h4>
							<img width="201" height="36" alt="国外社团" SRC="image/guowai.jpg">
						</h4>
						<table class="no-style full">
							<tbody>

								<tr>
								    <td>哈佛大学社团管理一瞥</td>
								</tr>
								<tr>
								    <td>美国高校对学生社团的管理规定</td>
								</tr>
								<tr>
								    <td>引入国际先进经验 促进高校共青团工作</td>
								</tr>
								<tr>
								    <td>借鉴悉尼大学学生社团管理模式推进高校...</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="column width3">
						<h4>
							<img width="177" height="35" alt="名校社团" SRC="image/mingxiao.png">
						</h4>
						<table class="no-style full">
							<tbody>

								<tr>
								    <td>北京大学</td>
								</tr>
								<tr>
								    <td>清华大学</td>
								</tr>
								<tr>
								    <td>复旦大学</td>
								</tr>
								<tr>
								    <td>浙江大学</td>
								</tr>
							</tbody>
						</table>
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
							90后，我们拥有改变世界的力量
						</dt>
						<dd>
							<a href="#">Read more</a>
						</dd>
						<dt>
							博观而约取,厚积而薄发
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
		</div>
		<!-- End of Page content -->


		<!-- Page footer -->
		<footer id="bottom">
		<div class="wrapper">
			<nav>

			</nav>
			<p>
				Copyright &copy; 2012
				<b><a title="www.dotink.cn">www.dotink.cn</a> </b> | Icons by
				<a>dotink</a>
			</p>
		</div>
		</footer>
		<!-- End of Page footer -->



		<!-- Scroll to top link -->
		<a href="#" id="totop">回到顶部</a>

		<!-- Admin template javascript load -->
		<script type="text/javascript" SRC="js/administry.js"></script>
	</body>
</html>
