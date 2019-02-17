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
    
    <title>Project主界面</title>
    
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
		
		
		
		function searchitem(){
	     location.href='projectitemsome';
		}
		function newproject(){
		     location.href='projectnewProject';
		}
		

		
	   function findoneproject(){
		 
		     location.href='projectfindoneProject';
		}
	   function updatefunds(){
			var fundsIds="";
			
			var inputs = document.getElementsByTagName("input");
			
			
		    	for(var i = 0 ;i<inputs.length;i++){
					if(inputs[i].type=="checkbox" ){
						if(inputs[i].checked){
							fundsIds += "," + inputs[i].id;
						}
					}
				}
		    	 var pos=fundsIds.lastIndexOf(",");
                var postfix = fundsIds.substring(pos+1,fundsIds.length);
                
                if(postfix==""){
               	 alert("请选择一条!");
               	 return false;
                }else{
               	 location.href="fundsupdatefunds?id="+postfix;
                }
				
				
	

		}
	   function deletefunds(){
		   
		   
			var fundsIds="";
			var inputs = document.getElementsByName("inputname");
		    	for(var i = 0 ;i<inputs.length;i++){
					if(inputs[i].type=="checkbox" ){
						if(inputs[i].checked){
							fundsIds += "," + inputs[i].id;
						}
					}
				}
				location.href="fundsdeletefunds?fundsIds="+fundsIds;
				
				
		}
	   function searchfunds(){
			 
		     location.href='/funds_search.jsp';
		}
		
	   
	   function approve(obj){
		   //document.getElementById('light').style.display='block';
		   //document.getElementById('fade').style.display='block';
			location.href="fundsindexapprove?id="+obj; 
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
	#operate_title{
	border:1px solid gray;
	width: 100%;
	margin: 3px 0px 0px 0px;
	float:left;
	height:22px;
	background: url("image/0005.PNG") repeat-x;
	}
	.operate_div{
	margin:0px; 
	width: 90px; 
	height: 100%; 
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
		</style>
		
		
		   <style>
        .black_overlay{
            display: none;
            position: absolute;
            top: 0%;
            left: 0%;
            width: 100%;
            height: 100%;
            background-color: gray;
            z-index:1001;
            -moz-opacity: 0.8;
            opacity:.80;
            filter: alpha(opacity=80);
        }
        .white_content {
            display: none;
            position: absolute;
            top: 20%;
            left: 19%;
            width: 55%;
            height: 45%;
            padding: 16px;
            border: 4px solid royalblue;
            background-color: white;
            z-index:1002;
            overflow: auto;
        }
    </style>
    	<style>

.datalist{
	border:1px solid #007108;	/* 表格边框 */
	font-family:Arial;
	border-collapse:collapse;	/* 边框重叠 */
	background-color:lightcyan;	/* 表格背景色  darkgray*/
	font-size:14px;
}
.datalist th{
	border:1px solid #007108;	/* 行名称边框 */
	background-color:#d9ffdc;	/* 行名称背景色 lightgreen  skyblue royalblue  lightgrey  darkgray #1E90FF*/
	color:#FFFFFF;				/* 行名称颜色  1E90FF  */
	font-weight:bold;
	padding-top:4px; padding-bottom:4px;
	padding-left:12px; padding-right:12px;
	text-align:center;
}
.datalist td{
	border:1px solid #007108;	/* 单元格边框 */
	text-align:left;
	padding-top:4px; padding-bottom:4px;
	padding-left:10px; padding-right:10px;
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
					经费列表
				</h1>
			</div>
		</div>
		<!-- End of Page title -->

		<!-- Page content -->
		<div id="page">
			<!-- Wrapper -->
			<div class="wrapper">

				<div id="operate_title">
				<s:if test='#session.user.duty.duty_ID!=5&&#session.user.duty.duty_ID!=4'>
				 <s:if test='#session.user.duty.duty_ID!=2'>
					<div class="operate_div">
						<img src="image/0002.PNG"
							style="margin:1px 5px 0px 4px; float: left;" />
						 <span onclick="updatefunds();"><font color="black">修改信息</font></span>
					</div>
					</s:if>
					<div class="operate_div">
						<img src="image/0003.PNG"
							style="margin:1px 5px 0px 4px; float: left;" />
						  <span onclick="deletefunds();"><font color="black">删除信息</font></span>
					</div>
					</s:if>
					<div class="operate_div">
						<img src="image/0004.PNG"
							style="margin:1px 5px 0px 13px; float: left;" />
					    <span onclick="searchfunds();"><font color="black">查询信息</font></span>
					</div>

				</div>

					<table border="1" align="center" width="100%" class="datalist" id="tableid">
						<tr>
						    <th>
						        <font color="black" size="2"> 操作</font>
						    </th>
                            <th>
								<font color="black" size="2">申请社团</font>
							</th>
							<th>
								<font color="black" size="2">尚有金额</font>
							</th>
							<th>
								<font color="black" size="2">申请金额</font>
							</th>
							<th>
								<font color="black" size="2">申请日期</font>
							</th>
							<th>
								<font color="black" size="2">申请理由</font>
							</th>
							<th>
								<font color="black" size="2">申请人</font>
							</th>
							
							<th>
								<font color="black" size="2">备注</font>
							</th>
							<th>
								<font color="black" size="2">状态</font>
							</th>
							<th>
								<font color="black" size="2"></font>
							</th>
						</tr>
						
						<s:iterator value="fundsList" var="fundss">
						<tr>
						    <td>
							     <input type="checkbox" id="<s:property value='#fundss.funds_id'/>"  name="inputname" value="<s:property value='fundss.funds_id'/>"/>
							</td>
							<td>
								<font color="black"><s:property value="#fundss.funds_community" /></font>
							</td>
							<td>
							    <s:property value="#fundss.surplus_money" />
							</td>
							<td>
							    <s:property value="#fundss.funds_money" />
							</td>
							<td>
							    <s:date name="#fundss.funds_date" format="yyyy-MM-dd"/> 
							</td>
							<td>
								<s:property value="#fundss.funds_reason" />
							</td>
							<td>
								<s:property value="#fundss.funds_people" />
							</td>
							<td>
								<s:property value="#fundss.note" />
							</td>
							<td>
							    <s:property value="#fundss.examine_program" />
							</td>
							<s:if test='#session.user.duty.duty_ID!=5&&#session.user.duty.duty_ID!=4&&#session.user.duty.duty_ID!=3'>
							<s:if test='#fundss.examine_program=="待审批"||#fundss.examine_program=="未通过"'>
							
							<td>
							     <input type="button" id="<s:property value="fundss.funds_id" />" onclick="approve('<s:property value='#fundss.funds_id'/>')"  value="审批" >
							</td>
							</s:if>
							</s:if>
						</tr>
					  </s:iterator>
					</table>
					</div>
					</div>
					

	<footer id="bottom">
		<div class="wrapper">
			<nav></nav>
			<p>Copyright &copy; 2012 <b><a title="www.dotink.cn">www.dotink.cn</a></b> | Icons by <a>dotink</a></p>
		</div>
	</footer>
	
	<a href="#" id="totop">回到顶部</a>

	<!-- Admin template javascript load -->
	<script type="text/javascript" SRC="js/administry.js"></script>
  </body>
</html>
