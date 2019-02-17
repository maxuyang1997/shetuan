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

		<title>NewMember主界面</title>

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

        <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
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
		<script type="text/javascript" SRC="js/jquery-1.7.2.js"></script>
		<script type="text/javascript">
		function savefunds(){
		  var url="fundsalertfunds";
		  $("#form1").attr("action",url);
		  $("#form1").submit();
		}
		
		function addfunds(){
			  var url="fundsaddfunds";
			  $("#form1").attr("action",url);
			  $("#form1").submit();
			}
	
		function goprojectbug(){
		       location.href='bugfindBug';
		}
		
		 function projectitem(){
		
		     location.href='projectfindProject';
		}
		
		 function goproject(){
		
		    location.href='projectfindProject';
		}
		function newproject2(){
		     location.href='projectnewProject';
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
			
			#tableid{
			   position:relative;
			   width: 1000px;
			   top:10px;
			   
			
			}
			
			
			
			
	#operate_title{
	border:1px solid gray;
	width: 72%;
	margin: 3px 10px 10px 12px;
	float:left;
	height:22px;
	background: url("image/0005.PNG") repeat-x;
	}
	.operate_div{
	margin:0px; 
	width: 90px; 
	height: 90%; 
	float: left; 
 
	}
	#operate_content{
	width: 100%;
	float: left;
	margin: 0px;
	color:gray;
	
	}
	#operate_content_title{
	margin: 0px 0px 0px 0px;
	float: left;
	width: 100%;
	height: 40px;
	}
	 .operate_search{
	 margin:0px;
 

	 }
	 .content_titleclass{
      margin:0px 20px 0px 0px; 
	width: auto;
	height: 100%; 
	float: left; 
	 
	 }
	 
	 #operate_content_table{
	 margin: 0px;
	 float: left;
	 width: 100%;
	 height:auto;
	 }
			
	#textareaid{
	 position:relative;
     width: 530px;
     top:0px;
     left:-3px;
	
	}
    #otherid{
     position:relative;
     width: 150px;
     top:-17px;
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
				<li  class="current">
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
       <div id="pagetitle">
			<div class="wrapper">
				<h1>
					经费修改
				</h1>
			</div>
		</div>
		<!-- End of Page title -->

	<div id="page">
			<div class="wrapper">
				<div id="operate_title">
				        <div class="operate_div">
     				        <img src="image/0012.PNG" style="margin:2px 5px 2px 2px; float: left;width: 20px;height: 20px;" />
	    					<span onclick=""><font color="white" size="2" style="width: 150px;">修改会员信息</font></span>
					    </div>
				</div>


			
<div id="operate_content_table">



		<form method="post" id="form1">
			<table>
				<tr>
					<td>

							<tr>
								<td>
									<table>
										<tr>
											<td>
												&nbsp;&nbsp;&nbsp;
												<input type="text" value="申请社团            *" disabled="true" />
												&nbsp;&nbsp;&nbsp;
												<input type="text" value="${request.updateFunds.funds_community}" name="funds.funds_community" disabled>
												<input type="hidden" name="funds.funds_id"  value="${request.updateFunds.funds_id}"   />
											</td>
											<td>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</td>
											<td>
												&nbsp;&nbsp;&nbsp;
												<input type="text" value="尚有金额             *" disabled="true" />
												&nbsp;&nbsp;&nbsp;
												<input type="text" name="funds.surplus_money"  value="${request.updateFunds.surplus_money}" disabled/>
											</td>
										</tr>
										<tr>
											<td>
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												&nbsp;&nbsp;&nbsp;
												<input type="text" value="申请金额           *" disabled="true" />
												&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="text" name="funds.funds_money"  value="${request.updateFunds.surplus_money}" />
											</td>
											<td>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</td>
											<td>
												&nbsp;&nbsp;&nbsp;
												<input type="text" value="申请日期        *"disabled="true"/>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="text" name="funds.funds_date"  value="${request.updateFunds.funds_date}" disabled/>
											</td>
										</tr>
										<tr>
											<td>
												&nbsp;	
											</td>
										</tr>
											<tr>
                                           <td>
											    &nbsp;&nbsp;&nbsp;
												<input type="text" value="申请理由            *"disabled="true" />
												&nbsp;&nbsp;&nbsp;
												<input type="text" name="funds.funds_reason"  value="${request.updateFunds.funds_reason}" disabled />
											</td>

											<td id="td3">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</td>
										
											<td>
											    &nbsp;&nbsp;&nbsp;
												<input type="text" value="申请人             *"disabled="true" />
												&nbsp;&nbsp;&nbsp;
												<input type="text" name="funds.funds_people"  value="${request.updateFunds.funds_people}" disabled />
											</td>
										</tr>
										<tr>
											<td>
												&nbsp;
											</td>
										</tr>
										<tr>
											<td colspan="3">
												&nbsp;&nbsp;&nbsp;
												<input type="text" value="备注                      *" disabled="true"  id="otherid"/>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<textarea rows="1" cols="68" id="textareaid"
													name="funds.note">${request.updateFunds.note}</textarea>
											</td>
										</tr>
										<tr>
											<td>
												&nbsp;
											</td>
										</tr>
                                        <tr>
											<td>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="button" name="" value="保存" onclick="savefunds()" />
											</td>
											<td>
												&nbsp;
											</td>
											<td>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="reset" name="" value="取消" onclick="gofunds()"/>
											</td>
										</tr>
									</table>
								</td>
							</tr>
					 
				 
			</table>
			 </form>
		</div>

</div>
</div>

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

		<!-- Scroll to top link -->
		<a href="#" id="totop">回到顶部</a>

		<!-- Admin template javascript load -->
		<script type="text/javascript" SRC="js/administry.js"></script>
	</body>

</html>
<script type="text/javascript">

Calendar.setup ({inputField : "date_start", ifFormat : "%Y-%m-%d", showsTime : false, button : "date_start", singleClick : true, step : 1});
Calendar.setup ({inputField : "date_end", ifFormat : "%Y-%m-%d", showsTime : false, button : "date_end", singleClick : true, step : 1});
Calendar.setup ({inputField : "date_start2", ifFormat : "%Y-%m-%d", showsTime : false, button : "date_start2", singleClick : true, step : 1});
Calendar.setup ({inputField : "date_end2", ifFormat : "%Y-%m-%d", showsTime : false, button : "date_end2", singleClick : true, step : 1});
</script>
