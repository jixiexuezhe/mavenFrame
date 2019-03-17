<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String path = request.getContextPath();
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%=path%>/js/jquery-2.1.3.min.js"></script>
<title>home page</title>
<link rel="stylesheet" href="<%=path%>/css/layouts/marketing.css" />
<link rel="stylesheet" href="<%=path%>/css/layouts/marketing-old-ie.css" />
</head>
<body>
	<c:import url="/header" />
<!-- <div style="width: 100%; height: 326px;" id="sosobtc_market"></div> -->
<%-- <script src="<%=path%>/js/myjs/sosobtc_plugin.js"></script> --%>
<!-- <script type="text/javascript"> -->
//     (function(){
//         SOSOBTC('Market').init({
//             id           : 'sosobtc_market',
//             btc          : ['bitstamp', 'btce', 'huobi', 'okcoin', 'chbtc', 'okcoinfutures_week'],
//             ltc          : ['btce', 'huobi', 'okcoin', 'chbtc'],
//             alt          : ['ppc', 'doge', 'pts'],
//             row          : ['price', 'buy', 'sell', 'high', 'low', 'vol']
//         });
//     })();
<!-- </script> -->
		<div style="position: relative; left: 50px; top: 50px;">
		<table>
		<tr>
		<td>
		<c:forEach items="${bdata}" var="item">
		${item.btc2cny}${item.ltc2cny}${item.dgc2cny}${item.xrp2cny}
		</c:forEach>
		</td>
		</tr>
		</table>
		</div>
</body>
</html>