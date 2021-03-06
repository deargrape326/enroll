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
<title>登记</title>
<script src="<%=basePath%>/js/jquery-3.1.1.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.js"></script>
<script src="<%=basePath%>/js/common.js"></script>
<script src="<%=basePath%>/js/redirect.js"></script>
<script src="<%=basePath%>/js/address.js"></script>
<script src="<%=basePath%>/js/enrollee.js"></script>
<script src="<%=basePath%>/js/ie10-viewport-bug-workaround.js"></script>
<link href="<%=basePath%>/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="<%=basePath%>/css/enroll.css" rel="stylesheet">
<link href="<%=basePath%>/favicon.ico" rel="icon" type="image/x-icon">
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
						<li><a href="javascript:void(0)" id="job">就业去向</a></li>
						<li class="active"><a href="#">现在登记</a></li>
					</ul>
				</div>
			</div>
			</nav>

		</div>
	</div><br><br>

	<div class="container col-md-4 col-md-offset-4">

		<form class="form-horizontal">
			<div class="form-group">
				<label for="inputName" class="col-sm-3 control-label">姓名</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="inputName" placeholder="姓名">
				</div>
				<label class="col-sm-3 required" id="validateName">*不多于8个字</label>
			</div>
			<div class="form-group">
				<label for="provinceSelect" class="col-sm-3 control-label">省/直辖市</label>
				<div class="col-sm-6">
					<select class="form-control" id="provinceSelect">
						<option value=''>请选择...</option>
					</select>
				</div>
				<label class="col-sm-3 required" id="validateProvince">*</label>
			</div>
			<div class="form-group">
				<label for="citySelect" class="col-sm-3 control-label">市</label>
				<div class="col-sm-6">
					<select class="form-control" id="citySelect">
						<option value=''>请选择...</option>
					</select>
				</div>
				<label class="col-sm-3 required" id="validateCity">*</label>
			</div>
			<div class="form-group">
				<label for="countySelect" class="col-sm-3 control-label">县</label>
				<div class="col-sm-6">
					<select class="form-control" id="countySelect">
						<option value=''>请选择...</option>
					</select>
				</div>
				<label class="col-sm-3 required" id="validataCounty">*</label>
			</div>
			<div class="form-group">
				<label for="townSelect" class="col-sm-3 control-label">乡镇</label>
				<div class="col-sm-6">
					<select class="form-control" id="townSelect">
						<option value=''>请选择...</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="villageSelect" class="col-sm-3 control-label">村</label>
				<div class="col-sm-6">
					<select class="form-control" id="villageSelect">
						<option value=''>请选择...</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="inputAddress" class="col-sm-3 control-label">住址</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="inputAddress" placeholder="住址">
				</div>
				<label class="col-sm-3 required" id="validateAddress">*不多于36个字</label>
			</div>
			<div class="form-group">
				<label for="inputTel" class="col-sm-3 control-label">联系电话</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="inputTel" placeholder="联系电话">
				</div>
				<label class="col-sm-3 required" id="validateTel">*不多于18个字，座机或手机号码</label>
			</div>
			<div class="form-group">
				<label for="inputSchool" class="col-sm-3 control-label">毕业学校</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="inputSchool" placeholder="毕业学校">
				</div>
				<label class="col-sm-3 required" id="validateSchool">*不多于24个字</label>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-3 col-sm-8">
					<button type="button" class="btn btn-default" style="width: 100px; height: 40px; text: center" id="registerInfo"
						disabled="disabled">登记</button>
				</div>
			</div>
		</form>
	
		<tg:footer/>
	</div>	<!-- /container -->
</body>
</html>