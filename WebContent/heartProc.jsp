<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mirim.hs.kr.*" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>jsp 게시판 웹사이트</title>
	</head>
	<body>
	<% 
		request.setCharacterEncoding("UTF-8");
		String num = request.getParameter("num");
		
		ReviewDAO reviewDAO1 = new ReviewDAO();
		int result = reviewDAO1.updateHeart(Integer.parseInt(num));
		System.out.print(num);
		
		//로그인 성공
		if(result == 1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('좋아요가 반영 되었습니다.')");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
		}
		//아이디 없음
		else if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('좋아요가 반영되지 않았습니다.')");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
			
		}
			%>
	</body>
</html>