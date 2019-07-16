<%@ page language="java" contentType="text/html; charset=utf-8" 
    pageEncoding="UTF-8"%> 
<%@ page import="java.io.PipedWriter" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>글쓰기 - 정민넷 </title>

<!-- Bootstrap -->
<link href="../../css/bootstrap.css" rel="stylesheet">

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
        <li><a href="../../index.jsp">메인</a></li>
        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">게시판<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">게시판 1st</a></li>
            <li class="divider"></li>
            <li><a href="#">게시판 2nd</a></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="../../developer.jsp">제작자 정보</a></li>
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
        <li><a href="../../login.jsp">로그인</a></li>
        <%
        	}else{
        %>
        <li><a href="../../logout.jsp">로그아웃</a></li>
        <%
        	}
        %>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>
<div class="container">
	<div class="row">
		<form method="post" action="writeAction.jsp">
			<table class="table table-striped" style="text-align:center;border:1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2" style="background-color:#eeeeee;text-align:center;">글쓰기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="64"></td>
					</tr>
					<tr>
						<td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="4092" style="height:350px;"></textarea></td>
					</tr>
				</tbody>
			</table>
			<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
		</form>
	</div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="../../js/jquery-1.11.3.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../../js/bootstrap.js"></script>
</body>
</html>
