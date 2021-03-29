<%@page import="www.key.Key"%>
<%@page import="www.html.header.Header"%>
<%@page import="www.html.nav.Nav"%>
<%@page import="www.html.footer.Footer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Header header = new Header();
String css = header.getCss();
String js = header.getJs();
String title = header.getTitle();
String headerUrl = header.getHeaderUrl();

Nav nav = new Nav();
String menu = nav.getMenu();

Footer footer = new Footer();
String footerUrl = footer.getFooterUrl();

Key k = new Key();
String appkey = k.getKeys().get(Key.Kyes.KAKAO_MAP_APPKEY);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" href="/view/img/favicon.ico" type="image/x-icon" />
<link rel="icon" href="/view/img/favicon.ico" type="image/x-icon" />
<title><%=title%></title>
<%=css%>
<link rel="stylesheet" href="/view/css/kakao_map.css">
<%=js%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=<%=appkey%>&libraries=services"></script>
<script defer type="text/javascript" src="/view/js/kakao_map.js"></script>
</head>
<body>
	<input type="hidden" id="color_class" value="kakaoMap" />
	<div id="wrap">
		<jsp:include page="<%=headerUrl%>" flush="false"/>
		<nav>
			<div class="base_wrap">
				<%=menu%>
			</div>
		</nav>
		<main>
			<div class="base_wrap">
				<div id="map"></div>
			</div>
		</main>
		<jsp:include page="<%=footerUrl%>" flush="false"/>
	</div>
</body>
</html>