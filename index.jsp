<%@ page language="java" contentType="text/html; charset=utf-8" 
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>정민넷 </title>

<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#defaultNavbar1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
      <a class="navbar-brand" href="#">정민넷 </a></div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="defaultNavbar1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">메인<span class="sr-only">(current)</span></a></li>
        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">게시판<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">게시판 1st</a></li>
            <li class="divider"></li>
            <li><a href="#">게시판 2nd</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="developer.jsp">제작자 정보</a></li>
        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">다른 제작자의 정민넷<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="http://jungmin4.crayon.world">김보규</a></li>
          </ul>
        </li>
        <%
    		String userID=null;
    		if (session.getAttribute("userID") !=null){
    			userID=(String)session.getAttribute("userID");
    		}
        	if(userID==null){
        %>
        <li><a href="login.jsp">로그인</a></li>
        <%
        	}else{
        %>
        <li><a href="logout.jsp">로그아웃</a></li>
        <%
        	}
        %>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>
<div class="container-fluid">
  <div class="row">
    <div class="col-md-6 col-md-offset-3">
      <h1 class="text-center">Jungmin Net</h1>
    </div>
  </div>
  <hr>
</div>
<div class="container">
  <div class="row text-center">
	  <div class="col-md-6 col-md-offset-3 col-lg-offset-0 col-lg-12"><strong>정민넷</strong>은 2018년 12월 6일에 생긴 신생 사이트입니다. 많이 애용해주세요!</div>
  </div>
  <hr>
  <div class="row">
    <div class="text-justify col-sm-4"> 정민넷은 아직 게발중에 있습니다. 지금 열심히 개발중이니 응원해 주세요! </div>
    <div class="col-sm-4 text-justify"> 정민넷에서 당신은 당신이 하고 싶은 모든 것을 할 수 있습니다. </div>
    <div class="col-sm-4 text-justify"> 정민넷은 아직 장난으로 만들어진 joke site입니다. </div>
  </div>
  <hr>
  </div>
  <hr>
  <div class="row">
    <div class="text-center col-md-6 col-md-offset-3">
      <h4>정민넷 </h4>
      <p>Copyright &copy; 2018 &middot; All Rights Reserved</p>
    </div>
  </div>
<hr>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="js/jquery-1.11.3.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</body>
</html>
