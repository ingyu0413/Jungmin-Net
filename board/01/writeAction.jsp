<%@ page language="java" contentType="text/html; charset=utf-8" 
    pageEncoding="UTF-8"%> 
<%@ page import="board1.BoardDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bbs" class="board1.Board1" scope="page"/>
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>로그인 - 정민넷 </title>
</head>
<body>
	<%
		String userID=null;
		if (session.getAttribute("userID") !=null) {
			userID=(String)session.getAttribute("userID");
		}
		if (userID==null) {
			userID="익명";
		}
		if(bbs.getBbsTitle()==null||bbs.getBbsContent()==null) {
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			BoardDAO boardDAO = new BoardDAO();
			int result = boardDAO.write(bbs.getBbsTitle(),userID,bbs.getBbsContent());
			if (result==-1) {
				PrintWriter script =response.getWriter();
				script.println("<script>");
				script.println("alert('글쓰기에 실패했습니다.')");
				script.println("history.back()");
				script.println("</script>");
			} else {
				PrintWriter script =response.getWriter();
				script.println("<script>");
				script.println("location.href='main.jsp'");
				script.println("</script>");
			}
		}
	%>
</body>
</html>
