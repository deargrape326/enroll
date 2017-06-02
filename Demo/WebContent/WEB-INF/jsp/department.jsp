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
<title>专业介绍</title>
<script src="<%=basePath%>/js/jquery-3.1.1.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.js"></script>
<script src="<%=basePath%>/js/common.js"></script>
<script src="<%=basePath%>/js/redirect.js"></script>
<script src="<%=basePath%>/js/ie10-viewport-bug-workaround.js"></script>
<link href="<%=basePath%>/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="<%=basePath%>/css/common.css" rel="stylesheet">
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
	          <h2>专业介绍</h2>
	          <p class="title">学校现有幼儿师范（双语、音乐、美术、舞蹈方向）、计算机应用（软件、设计制作方向）、财会专业（助理会计师方向）、旅游导游、服装设计与制造专业、数控技术、酒店管理、民航服务、高铁乘务、汽车运用与维修、电子商务、商务外语（英、韩、日语）等专业可供选择。</p>
	        </div>
	     </div>
	</div>
	<hr>

    <div class="container">
		<div class="row">
	        <div class="col-md-12">
	          <h2 class="department">幼儿师范</h2>&nbsp;&nbsp;&nbsp;&nbsp;<h4>品牌专业 培养方向：成都幼儿园教师</h4><br/><br/>
	          <p class="parag">选择幼师前景广阔，幼儿教师是高尚而又稳定的职业，与天真烂漫的儿童为伴，是有爱心的女生首选专业。现成都市幼师缺口达1.5万人。我校有近20年培养幼儿园教师经验，是全省培养幼儿教师的重要基地，不少幼儿园园长和合格幼儿教师出自我校。 </p>
	          <p class="parag">近年来，由于幼儿园发展的需要，很多单位幼儿教师奇缺，连男老师也变得抢手起来。学前、初教专业毕业生不愁“嫁”，甚至有很多幼教机构到学校预约、抢签毕业生，幼教人才受欢迎程度可见一斑。还有民办的院校有学前教育专业，其中一个大学的高职毕业生近几年的就业率在100%，并且是单位指定要人，三、四月份毕业生已经被抢光了。</p>
	          <p class="parag"><span class="title">核心课程</span>&nbsp;舞蹈、视唱、琴法、乐理、声乐、美术、手工、幼儿歌曲伴奏、玩教具制作、教师口语、幼儿游戏与主持、幼儿教育学、儿童文学、幼儿卫生与保健、幼儿心理学、幼师英语、珠心算、蒙台梭利教育法、奥尔夫音乐教学、幼儿园活动设计等</p>
	        </div>
	     </div>

	     <div class="row">
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/depart/child-care1.jpg" alt="Generic placeholder image">
	         <h5 align="center">学生绘画作品</h5>
	       </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/depart/child-care2.jpg" alt="Generic placeholder image">
	         <h5 align="center">学生手工作品</h5>
	         </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/depart/child-care3.png" alt="Generic placeholder image">
	         <h5 align="center">舞蹈基本功训练</h5>
	       </div>
	     </div>
	
	     <hr><div class="row">
	        <div class="col-md-12">
	          <h2>计算机设计</h2>
	          <p class="parag">是计算机硬件与软件相结合、面向系统、侧重应用的宽口径专业。通过基础教学与专业训练，培养基础知识扎实、知识面宽、工程实践能力强，具有开拓创新意识，在计算机科学与技术领域从事科学研究、教育、开发和应用的高级人才。</p>
	       	  <p class="parag"><span class="title">核心课程</span>&nbsp;平面构成、标志图形设、字体设计、PS基础、板式设计、商品包装设计、VI设计、3DMAX基础、招贴设计、CorelDRAW、广告摄影、计算机辅助设计等</p>
	          <p class="parag"><span class="title">毕业前景</span>&nbsp;艺术设计公司、广告公司、网页设计公司、文化传播公司和大中型企业从事广告设计、网页设计、宣传、企划等工作岗位。平面设计师的薪金待遇可观。可自开电脑设计工作室，以低投资的方式开始创业，成就自己向往的SOHO。</p>
	        </div>
	     </div>
	      
		 <div class="row">
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	       </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	         </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	       </div>
	     </div>
	
	     <hr><div class="row">
	        <div class="col-md-12">
	          <h2>财会专业</h2>
	          <p class="parag">会计专业是研究企业在一定的营业周期内如何确认收入和资产的学问。会计师除了准备财务报表以及记录企业交易行为外，更重要的是能够参与企业间的合并、质量管理、信息技术在财务方面的应用、税务战略以及很多企业的管理决策活动，会计专业领域涉及面广：鉴证，审计，税收，公司会计，管理会计，财务管理，破产清算，法务会计，预算制定，商业咨询等等都是会计专业将要涉及的领域。</p>
	       	  <p class="parag"><span class="title">核心课程</span>&nbsp;基础会计、财务会计、成本会计、出纳收银实务、会计报表分析、会计电算化、金融基础、金融柜台服务、经济法、税法、财经法规、审计学、财务管理、会计模拟实习等</p>
	          <p class="parag"><span class="title">专业优势</span>&nbsp;会计技术含量高，工作待遇好，发展空间大，职业寿命长，被称为“越老越吃香”的职业。</p>
	          </div>
	     </div>
	      
		 <div class="row">
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	       </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	         </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	       </div>
	     </div>
	     
	     <hr><div class="row">
	        <div class="col-md-12">
	          <h2>旅游导游</h2>
	          <p class="parag">培养目标为各大旅行社工作人员、公园导游员、星级以上旅游酒店（宾馆）服务人员和为高校输送人才。本专业培养适应新形势旅游企事业单位需要的一线服务与管理类专门人才，具有旅游管理专业知识，较好的思想道德品质和综合素质，具备较强的综合职业能力和发展基础，能在各级旅游行政管理部门、旅游企事业单位从事旅游管理工作的高级专门人才。</p>
	          <p class="parag"><span class="title">核心课程</span>&nbsp;旅游学概论、导游业务、旅游地理、口才学、导游基础知识、旅游线路设计、导游词、模拟导游、旅游心理学、旅游英语、旅游社交礼仪、旅游社经营务实。</p>
	          <p class="parag"><span class="title">毕业前景</span>&nbsp;面向旅游公司、旅行社、旅游景点、会展中心，从事导游服务、旅游经营与管理、景区景点讲解、会展服务等工作。</p>
	        </div>
	     </div>
	      
		 <div class="row">
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	       </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	         </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	       </div>
	     </div>
	     
	     <hr><div class="row">
	        <div class="col-md-12">
	          <h2>服装设计与制造专业</h2>
	          <p class="parag"><span class="title">培养方向</span>&nbsp;服装设计师、服装版制设计人员</p>
	          <p class="parag"><span class="title">核心课程</span>&nbsp;服装贸易务实、服装结构制图、服装设计基础、服装画技法、人体结构、服装市场营销、服装制作工艺、服装材料学、制版与放码、立体裁剪、计算机服装设计。</p>
	        </div>
	     </div>
	      
		 <div class="row">
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/depart/dress1.jpg" alt="Generic placeholder image">
	         <h5 align="center">学生设计作品</h5>
	       </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	         </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	       </div>
	     </div>
	     
	     <hr><div class="row">
	        <div class="col-md-12">
	          <h2>数控技术</h2>
	          <p class="parag">培养掌握数控原理、数控编程和数控加工等方面的专业知识及操作技能，从事数控程序编制、数控设备的操作、调试、维修和技术管理，数控机床加工程序的编制、数控机床的操作、调试和维修，数控设备管理。的高级技术应用性专门人才。</p>
	          <p class="parag"><span class="title">专业优势</span>&nbsp;紧密结合成都天府新区现代制造业需求，具有技术含量高、生产率高、员工薪酬高等特点。</p>
	          <p class="parag"><span class="title">核心课程</span>&nbsp;车钳基础、金工、机械制图、电工电子技术基础、数控机床制造技术基础、极限配合与测量技术、数控车床编程与加工、CAXA软件应用技术（三维绘图、数控车、铣、线切割等）</p>
	          <p class="parag"><span class="title">就业去向</span>&nbsp;现代化企业全自动化生产需要的机械数控加工，产品编程设计，数控设备操作技术人员。</p>
	        </div>
	     </div>
	      
		 <div class="row">
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	       </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	         </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	       </div>
	     </div>
	     
	     <hr><div class="row">
	        <div class="col-md-12">
	          <h2>酒店管理</h2>
	          <p class="parag">本专业培养全面发展的中等职业技术应用性专门人才。要求学生掌握经济管理基础理论，酒店、餐饮与旅游基础知识，具备酒店基本管理与服务能力。学生毕业后主要去各饭店、酒店、宾馆从事酒店基层管理及餐饮、客房服务工作。</p>
	       	  <p class="parag"><span class="title">培养方向</span>&nbsp;酒店管理师、酒店职业经理</p>
	       	  <p class="parag"><span class="title">核心课程</span>&nbsp;旅游学概论、酒店经营与管理、旅游心理学、礼仪与形体训练、宴会设计、茶艺、酒店英语、酒店人力资源管理、酒店设备管理、餐厅服务与管理、客房服务与管理等。</p>
	       	  <p class="parag"><span class="title">毕业前景</span>&nbsp;主要面向成都三星级以上酒店领班、主管、部门经理等基层管理和中高级服务人才。</p>
	        </div>
	     </div>
	      
		 <div class="row">
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	       </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	         </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	       </div>
	     </div>
	     
	     <hr><div class="row">
	        <div class="col-md-12">
	          <h2>高铁乘务</h2>
	       	  <p class="parag"><span class="title">专业前景</span>&nbsp;我国动车、高铁、快铁、地铁的快四建设，为人民群众</p>
	       	  <p class="parag"><span class="title">核心课程</span>&nbsp;旅游学概论、酒店经营与管理、旅游心理学、礼仪与形体训练、宴会设计、茶艺、酒店英语、酒店人力资源管理、酒店设备管理、餐厅服务与管理、客房服务与管理等。</p>
	       	  <p class="parag"><span class="title">毕业前景</span>&nbsp;主要面向成都三星级以上酒店领班、主管、部门经理等基层管理和中高级服务人才。</p>
	        </div>
	     </div>
	      
		 <div class="row">
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	       </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	         </div>
	       <div class="col-md-4">
	         <img class="featurette-image img-responsive" src="<%=basePath%>/image/103.jpg" alt="Generic placeholder image">
	         <h5 align="center">Heading</h5>
	       </div>
	     </div>
	
	     <hr>
	
	     <tg:footer/>
   	</div> <!-- /container -->
  </body>
</html>
