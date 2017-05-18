<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>专业介绍</title>
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
						<li><a href="javascript:void(0)" id="main">主页</a></li>
						<li class="active"><a href="#">专业介绍</a></li>
						<li><a href="javascript:void(0)" id="job">就业去向</a></li>
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
	
	      <footer>
	        <p>&copy; 2016 Company, Inc.</p>
	      </footer>
   		</div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    <script src="offcanvas.js"></script>
  </body>
</html>
