<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>会员信息修改页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="shortcut icon" type="image/png" HREF="img/favicons/favicon.png"/>
	<link rel="icon" type="image/png" HREF="img/favicons/favicon.png"/>
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
	<script type="text/javascript" SRC="js/flot/jquery.flot.min.js"></script>
	<script type="text/javascript" SRC="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
	
		function gonewproject(){
		   
		    location.href='projectfindSuite';
		}
		
		function projectbug(){
		     location.href='bugfindBug';
		}
		
		
		
		function searchproject2(){
		  var url="projectfindsomeProject";
		  $("#form1").attr("action",url);
		  $("#form1").submit();
		}
		function newproject(){
		     location.href='projectnewProject';
		}
		
		function deleteproject(){
			var projectIds="";
			var inputs = document.getElementsByTagName("input");
	
	    	for(var i = 0 ;i<inputs.length;i++){
					if(inputs[i].type=="checkbox" ){
						if(inputs[i].checked){
							projectIds += "," + inputs[i].id;
						}
					}
				}
				
				location.href="projectdeleteProject?projectId="+projectIds;
		
		}
		
		 function projectitem(){
		
		     location.href='projectfindProject';
		}
		 function gomember(){
		   
		     location.href='memberindexmember';
		}
		
		function savemember(){
			 var url="memberalertmember";
			  $("#form1").attr("action",url);
			  $("#form1").submit();
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
		  .column {
				margin-left:18px;
				display:block;
				float:left;
			}
			.content-box {
	    		background:#fff;
	  			border:1px solid #999;
				margin:1em 0 0;
				display:inline-block;
				width:13%;
				float:left;
				height: 340px;
			}
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
			   width: 800px;
			   top:10px;
			    left:1px;
			   float:left;
			}
			.width2 {
	          width:1000px;
            }
			
			
	#operate_title{
	border:1px solid gray;
	width: 89.5%;
	margin: 3px 10px 10px 12px;
	float:left;
	height:22px;
	background: url("image/0006.PNG") repeat-x;
	}
	.operate_div{
	margin:0px; 
	width: 110px; 
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
			
	#textareaidinfo{
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

				<li class="current">
					<a HREF="main.jsp">社团首页</a>
				</li>
<li  class="current">
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
       <div id="pagetitle">
			<div class="wrapper">
				<h1>
					信息修改
				</h1>
			</div>
		</div>
				<!-- Page content -->
		<div id="page">
			<!-- Wrapper -->
			<div class="wrapper">
				<div id="operate_title">
				        <div class="operate_div">
     				        <img src="image/0012.PNG" style="margin:2px 5px 2px 2px; float: left;width: 20px;height: 20px;" />
	    					<span onclick="newproject();"><font color="white" size="2" style="width: 150px;">修改会员信息</font></span>
					    </div>
				</div>
					

	
			
<div id="operate_content_table">
		
			<table>
				<tr>
					<td>
						<table>
							<tr>
								<td width="1000">
									

								</td>
								<td>&nbsp;&nbsp;<input type="hidden" name="project.project_ID" value="<s:property value='oneproject.project_ID' />">
								
								</td>
							</tr>
							</talbe>

							<tr>
								<td>
								<form method="post" id="form1">
									<table>
										<tr>
											<td>
												&nbsp;&nbsp;&nbsp;
												<input type="text" value="会员编号               *" disabled="true" />
												&nbsp;&nbsp;&nbsp;
												<input type="text" name="member.member_code"  value="${request.updatemember.member_code}"   disabled="true" />
												<input type="hidden" name="member.member_id"  value="${request.updatemember.member_id}"   />
											</td>
											<td>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</td>
											<td>
												&nbsp;&nbsp;&nbsp;
												<input type="text" value="会员姓名               *" disabled="true" />
												&nbsp;&nbsp;&nbsp;
												<input type="text" name="member.member_name" value="${request.updatemember.member_name}" disabled/>
												<input type="hidden" name="member.member_name"  value="${request.updatemember.member_name}"   />
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
												<input type="text" value="所属社团               *" disabled="true" />
												&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="text" name="member.member_community" value="${request.updatemember.member_community}" disabled="disabled"/>
											</td>
											<td>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</td>
											<td>
												&nbsp;&nbsp;&nbsp;
												<input type="text" value="所在社团职务         *"disabled="disabled"/>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="text"  name="member.member_duty" value="${request.updatemember.member_duty}" disabled="disabled"/>
											</td>
										</tr>
										<tr>
											<td>
												&nbsp;	
											</td>
										</tr>

										<tr id="tr1">
											<td>
												&nbsp;&nbsp;&nbsp;
												<input type="text" value="会员性别               *" disabled="true" />
												&nbsp;&nbsp;&nbsp;
											    <input type="text"  name="member.gender" value="${request.updatemember.gender}" disabled="disabled"/>
												
											</td>
											<td id="td1">
												&nbsp;
											</td>
											<td>
											  &nbsp;&nbsp;&nbsp;
												<input type="text" value="会员电话               *"disabled="disabled" />
												&nbsp;&nbsp;&nbsp;
												<input type="text" name="member.tel"  value="${request.updatemember.tel}"/>
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
												<input type="text" value="会员寝室               *"disabled="disabled" />
												&nbsp;&nbsp;&nbsp;
												<input type="text" name="member.dormitory" value="${request.updatemember.dormitory}"/>
											</td>

											<td id="td3">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</td>
										
											<td>
											    &nbsp;&nbsp;&nbsp;
												<input type="text" value="入会时间               *"disabled="disabled" />
												&nbsp;&nbsp;&nbsp;
												<input type="text"  name="member.joindate"  value="${request.updatemember.joindate}" disabled="disabled"/>
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
												<input type="text" value="会员班级               *"disabled="true" />
												&nbsp;&nbsp;&nbsp;
												<input type="text" name="member.classes" value="${request.updatemember.classes}" />
											</td>
											<td id="td5">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</td>
											<td>
											  &nbsp;&nbsp;&nbsp;
												<input type="text" value="会员院系               *"disabled="true" />
												&nbsp;&nbsp;&nbsp;
												<input type="text" name="member.department" value="${request.updatemember.department}"  />
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
												&nbsp;&nbsp;&nbsp;&nbsp;
												<textarea rows="1" cols="88" id="textareaid"
													name="member.note">${request.updatemember.note}</textarea>
											</td>
										</tr>
										<tr>
											<td>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="button" name="" value="保存" onclick="savemember()" />
											</td>
											<td>
												&nbsp;
											</td>
											<td>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="reset" name="" value="取消" onclick="gomember()"/>
											</td>
										</tr>
									</table>
									</form>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
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
	<a href="#" id="totop">回到顶部</a>
</div>
	<!-- Admin template javascript load -->
	<script type="text/javascript" SRC="js/administry.js"></script>
  </body>
</html>
