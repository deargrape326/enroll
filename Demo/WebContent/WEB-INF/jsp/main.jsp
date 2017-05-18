<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<script src="<%=basePath%>/js/jquery-3.1.1.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.js"></script>
<script src="<%=basePath%>/js/common.js"></script>
<script src="<%=basePath%>/js/redirect.js"></script>
<link href="<%=basePath%>/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>/css/bootstrap-theme.min.css" rel="stylesheet">
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
					<a class="navbar-brand" href="#">Project name</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">主页</a></li>
						<li><a href="javascript:void(0)" id="department">专业介绍</a></li>
						<li><a href="javascript:void(0)" id="job">就业去向</a></li>
						<li><a href="javascript:void(0)" id="contact">现在登记</a></li>
					</ul>
				</div>
			</div>
			</nav>

		</div>
	</div>


	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="<%=basePath%>/image/main1.jpg" alt="First slide" style="margin: 0 auto">
				<div class="container">
					<div class="carousel-caption">
						<p></p>
						<p>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="<%=basePath%>/image/main2.jpg" alt="Second slide" style="margin: 0 auto">
				<div class="container">
					<div class="carousel-caption">
						<p></p>
						<p>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="<%=basePath%>/image/main3.jpg" alt="Third slide" style="margin: 0 auto">
				<div class="container">
					<div class="carousel-caption">
						<p></p>
						<p>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="icon-prev"
			aria-hidden="true" style="font-size:80px;color:Red"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span class="icon-next"
			aria-hidden="true" style="font-size:80px;color:Red"></span> <span class="sr-only">Next</span>
		</a>
	</div>
	<!-- /.carousel -->


	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-lg-4">
				<img class="img-circle" src="<%=basePath%>/image/campus.jpg" alt="Generic placeholder image"
					style="width: 140px; height: 140px;">
				<h2>校园活动</h2>
				<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies
					vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">查看详情 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="<%=basePath%>/image/class.png" alt="Generic placeholder image"
					style="width: 140px; height: 140px;">
				<h2>班级风采</h2>
				<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis
					consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">查看详情 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="<%=basePath%>/image/student.jpg" alt="Generic placeholder image"
					style="width: 140px; height: 140px;">
				<h2>师生风采</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta
					felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa
					justo sit amet risus.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">查看详情 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->


		<!-- START THE FEATURETTES -->
		<!-- FEATURETTE 1 -->
		
		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-6">
				<br><br><br>
				<h2 class="featurette-heading">
					学习成果 <span class="text-muted" style="font-size:22px">手工作品</span>
				</h2>
				<p class="lead"></p>
			</div>
			<div class="col-md-6">
				<img class="featurette-image img-responsive" src="<%=basePath%>/image/manual1.jpg" alt="Generic placeholder image">
			</div>
		</div>
		
		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-6">
				<img class="featurette-image img-responsive" src="<%=basePath%>/image/manual2.jpg" alt="Generic placeholder image">
			</div>
			<div class="col-md-6">
				<img class="featurette-image img-responsive" src="<%=basePath%>/image/manual3.jpg" alt="Generic placeholder image">
			</div>
		</div>
		
		<!-- FEATURETTE 2 -->

		<hr class="featurette-divider">
		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-6">
				<img class="featurette-image img-responsive" src="<%=basePath%>/image/paint1.jpg" alt="Generic placeholder image">
			</div>
			<div class="col-md-6">
				<h2 class="featurette-heading">
					学习成果 <span class="text-muted" style="font-size:22px">绘画作品</span>
				</h2>
				<p class="lead"></p>
			</div>
		</div><hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-6">
				<img class="featurette-image img-responsive" src="<%=basePath%>/image/paint2.jpg" alt="Generic placeholder image">
			</div>
			<div class="col-md-6">
				<img class="featurette-image img-responsive" src="<%=basePath%>/image/paint3.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<!-- FEATURETTE 3 -->
		
		<hr class="featurette-divider">
		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-6">
				<h2 class="featurette-heading">
					And lastly, this one. <span class="text-muted">Checkmate.</span>
				</h2>
				<p class="lead"></p>
			</div>
			<div class="col-md-6">
				<img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
			</div>
		</div><hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-6">
				<img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
			</div>
			<div class="col-md-6">
				<img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<!-- FEATURETTE 4 -->

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-6">
				<img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
			</div>
			<div class="col-md-6">
				<h2 class="featurette-heading">
					And lastly, this one. <span class="text-muted">Checkmate.</span>
				</h2>
				<p class="lead"></p>
			</div>
		</div><hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-6">
				<img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
			</div>
			<div class="col-md-6">
				<img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<!-- /END THE FEATURETTES -->


		<!-- FOOTER -->
		<footer>
		<p class="pull-right">
			<a href="#">返回页顶</a>
		</p>
		<p>
			&copy; 2014 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a>
		</p>
		</footer>

	</div>
	<!-- /.container -->
</body>
</html>