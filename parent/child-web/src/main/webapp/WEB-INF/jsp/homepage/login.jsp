<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>UEMO API</title>
<meta name="keywords" content="UEMO API" />
<meta name="description" content="UEMO API" />
<meta name="author" content="UEMO API" />
<base href="http://www.uehtml.com/template/ue-content/templates/" />
<link rel="stylesheet" href="css/mnstyle.css" type="text/css" />
<script type="text/javascript">
	var YY = {
		config : {
			login : {
				success : 0,
				uid : 0,
				nickname : "",
				userurl : "",
				userimage : ""
			}
		}
	};
</script>
<script type="text/javascript"
	src="http://www.uehtml.com/script?load=jquery.min,n,ue/yy.components.login"></script>
<script language="javascript">
	window.YYToken = {
		timestamp : "1430189235",
		token : "5c7decfb9e928c3603bde73681bfc7e4"
	};
	YYService.connect("http://www.uehtml.com/service", YYToken);
</script>
</head>
<body style="">
	<div id="userlogin">
		<div id="ulpanel">
			<form action="http://www.uehtml.com/" method="post">
				<p id="ul-s1">
					<span id="ul-s2">会员登录</span><span id="ul-s3">还没有账号 <a
						href="http://www.uehtml.com/reg">立即注册</a></span>
				</p>
				<p id="ul-s4">
					邮箱登录<span class="submitwarning">邮箱格式不正确</span>
				</p>
				<p>
					<input type="text" placeholder="邮箱" name="email"
						class="inputnone inputtxt2" autocomplete="off" value="" />
				</p>
				<p>
					<input type="password" class="inputnone inputtxt2" name="password"
						autocomplete="off" placeholder="密码" />
				</p>
				<div id="ul-s5">
					<input type="submit" id="sendlogin" class="inputnone" value="登录" />
					<div>
						<input id="bcdl" type="checkbox" /><label for="bcdl">保持登录</label>
					</div>
					<a id="ul-s6" href="http://www.uehtml.com/forgotpassword">忘记密码
						? </a><span class="submitloading yy-loadding"></span>
				</div>
			</form>
		</div>
		<div id="ulline"></div>
		<div class="clear"></div>
		<div id="qtpanel">
			<p>用第三方帐号直接登录</p>
			<div>
				<a
					href="http://www.uehtml.com/oauthLogin?type=sina&redirect_to=http://www.uehtml.com/"
					id="sinal"><span class="yy-icon yy-sinal"></span>微博账号登录</a><a
					href="http://www.uehtml.com/oauthLogin?type=qq&redirect_to=http://www.uehtml.com/"
					id="qql"><span class="yy-icon yy-qql"></span>QQ账号登录</a>
			</div>
		</div>
	</div>
</body>
</html>