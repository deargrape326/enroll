<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>就业去向</title>
<script src="<%=basePath%>/js/jquery-3.1.1.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.js"></script>
<script src="<%=basePath%>/js/common.js"></script>
<script src="<%=basePath%>/js/redirect.js"></script>
<script src="<%=basePath%>/js/ie10-viewport-bug-workaround.js"></script>
<link href="<%=basePath%>/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="<%=basePath%>/css/common.css" rel="stylesheet">
</head>

<body>
	<div class="navbar-wrapper">
		<div class="container">

			<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
						aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand">华夏旅游商校</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a href="javascript:void(0)" id="main">主页</a></li>
						<li><a href="javascript:void(0)" id="department">专业介绍</a></li>
						<li class="active"><a href="#">就业去向</a></li>
						<li><a href="javascript:void(0)" id="contact">现在登记</a></li>
					</ul>
				</div>
			</div>
			</nav>

		</div>
	</div>
	
	 <div class="container">
		<div class="row">
	        <div class="col-md-12">
	          <h2>就业去向</h2>
	          <p class="title">近年来，随着我国市场产业升级和经济结构调整，对技能型人才的需求呈爆炸式增长，在我国数以亿计的就业大军中，中职毕业生是一支深受各类企业欢迎的产业生力军。</p>
	        </div>
	     </div>
	      <!-- Example row of columns -->
	     <div class="row">
	       <div class="col-md-4">
	         <h2>Heading</h2>
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	       </div>
	       <div class="col-md-4">
	         <h2>Heading</h2>
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         </div>
	       <div class="col-md-4">
	         <h2>Heading</h2>
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	       </div>
	     </div>
	
	     <hr><div class="row">
	        <div class="col-md-12">
	          <h2>Heading</h2>
	          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
	        </div>
	     </div>
	      <!-- Example row of columns -->
	     <div class="row">
	       <div class="col-md-4">
	         <h2>Heading</h2>
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	       </div>
	       <div class="col-md-4">
	         <h2>Heading</h2>
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         </div>
	       <div class="col-md-4">
	         <h2>Heading</h2>
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	       </div>
	     </div>
	
	     <hr><div class="row">
	        <div class="col-md-12">
	          <h2>Heading</h2>
	          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
	        </div>
	     </div>
	      <!-- Example row of columns -->
	     <div class="row">
	       <div class="col-md-4">
	         <h2>Heading</h2>
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	       </div>
	       <div class="col-md-4">
	         <h2>Heading</h2>
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         </div>
	       <div class="col-md-4">
	         <h2>Heading</h2>
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	       </div>
	     </div>
	
	     <hr>
	
	     <tg:footer/>
   	</div> <!-- /container -->

</body>
</html>