<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String path = request.getContextPath();
%>
<style type="text/css">
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=path%>/css/main_style.css" />
<link rel="stylesheet" href="<%=path%>/css/style.css" />
<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
<title>title</title>
<script type="text/javascript">
var path='<%=path%>';
	function getUrl(formname) {
		formname.action = "https://www.baidu.com/baidu";
		return true;
	}
</script>
</head>
<body id="minm">
	<!-- 	<div id="header" class="header"> -->
	<!-- 		<span><h1>突破想象，超越奇迹，简约风格,拉近你我</h1></span> -->
	<!-- 	</div> -->
	<div id="page">
	<div id="header">
		<div id="headerbody" class="automw">
			<div class="autocw">
				<ul id="hnav">
					<li id="mnnav"><img id="mnnavlabel" alt="" src="<%=path%>/images/the_eye_of_thundera.png" />
						<div>
							<a class="mnnsub mnnsubd" href="javascript:void(0)">首&nbsp;&nbsp;&nbsp;页</a><a
							
								class="mnnsub" href="javascript:void(0)">帮帮忙</a>
							<p id="mnnfoot">
								<a href="javascript:void(0)" target="_blank">网页设计师导航<span
									id="sohot"></span></a><a href="javascript:void(0)"
									target="_blank">漫画</a><a href="javascript:void(0)"
									target="_blank">优艺客</a>
							</p>
						</div></li>
					<li><a href="javascript:void(0)">首页</a></li>
						<li class="hnavmore"><a href="javascript:void(0)">翻译<span
							class="yy-icon yy-tup"></span></a>
						<ul>
							<li><a href="http://fanyi.baidu.com/#auto/zh/" target="_blank">百度</a></li>
							<li><a href="http://translate.google.cn/" target="_blank">谷歌</a></li>
							<li><a href="http://fanyi.youdao.com/" target="_blank">有道</a></li>
						</ul></li>
					<li class="hnavmore"><a href="javascript:void(0)">扩展<span
							class="yy-icon yy-tup"></span></a>
						<ul>
							<li><a href="javascript:void(0)" target="_blank">第一页</a></li>
							<li><a href="javascript:void(0)" target="_blank">第二页</a></li>
							<li><a href="javascript:void(0)" target="_blank">第三页</a></li>
						</ul></li>
						
					<li><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div></li>	
					<li>
					<form name="f1" onsubmit="return getUrl(this)">
						<div id="myform" class="myform">
							<input id="kw" type=text name=word size="30" maxlength="100" style="color:red" value="搜搜比特币" onfocus="javascript:if(this.value=='搜搜比特币')this.value='';"/>
							<input id="myinput" class="myinput" type="submit" value="百度一下">
						</div>
					</form>
					</li>
				</ul>
				<div id="hrnav">
					<div id="soform">
						<form action="http://www.uehtml.com/list/" method="get">
							<span class="yy-rnicon yy-rnso"></span><input name="sort"
								value="rec" class="hide" autocomplete="off" type="hidden"><input
								name="fid" value="" class="hide" autocomplete="off"
								type="hidden"><input name="owner" value="" class="hide"
								autocomplete="off" type="hidden"><input name="time"
								value="all" class="hide" autocomplete="off" type="hidden"><input
								name="search" value="" placeholder="关键字查找" autocomplete="off"
								type="text">
						</form>
					</div>
					<div id="mulogin">
						<a href="<%=path%>/homepage/login" id="loginbtn">登录</a><a
							id="muregbtn" href="<%=path%>/homepage/login">注册</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>