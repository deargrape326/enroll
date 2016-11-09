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
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#about">About</a></li>
						<li><a href="#contact">Contact</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li class="dropdown-header">Nav header</li>
								<li><a href="#">Separated link</a></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
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
				<img src="<%=basePath%>/image/1.jpg" alt="First slide" style="margin: 0 auto">
				<div class="container">
					<div class="carousel-caption">
						<h1>Example headline.</h1>
						<p></p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">按钮</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="<%=basePath%>/image/2.jpg" alt="Second slide" style="margin: 0 auto">
				<div class="container">
					<div class="carousel-caption">
						<h1>Another example headline.</h1>
						<p></p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">按钮</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="<%=basePath%>/image/3.jpg" alt="Third slide" style="margin: 0 auto">
				<div class="container">
					<div class="carousel-caption">
						<h1>One more for good measure.</h1>
						<p></p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">按钮</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="icon-prev"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span class="icon-next"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
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
				<img class="img-circle" src="<%=basePath%>/image/102.jpg" alt="Generic placeholder image"
					style="width: 140px; height: 140px;">
				<h2>Heading</h2>
				<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies
					vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="<%=basePath%>/image/102.jpg" alt="Generic placeholder image"
					style="width: 140px; height: 140px;">
				<h2>Heading</h2>
				<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis
					consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="<%=basePath%>/image/102.jpg" alt="Generic placeholder image"
					style="width: 140px; height: 140px;">
				<h2>Heading</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta
					felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa
					justo sit amet risus.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->


		<!-- START THE FEATURETTES -->

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					First featurette heading. <span class="text-muted">It'll blow your mind.</span>
				</h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod
					semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-5">
				<img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
			</div>
			<div class="col-md-7">
				<h2 class="featurette-heading">
					Oh yeah, it's that good. <span class="text-muted">See for yourself.</span>
				</h2>
				<p class="lead"></p>
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					And lastly, this one. <span class="text-muted">Checkmate.</span>
				</h2>
				<p class="lead"></p>
			</div>
			<div class="col-md-5">
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