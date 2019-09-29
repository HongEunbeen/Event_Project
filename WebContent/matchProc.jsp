<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mirim.hs.kr.*" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>jsp 게시판 웹사이트</title>
	</head>
	<body>
	<% 
		request.setCharacterEncoding("UTF-8");
		
		String phone = request.getParameter("phone");
		String name = request.getParameter("name");
		
		Match_M match = new Match_M();
		Match_MDAO matchDAO = new Match_MDAO();
		
		int resultM = matchDAO.insertM(phone, name, "match");
		
		if(resultM == 1){
			PrintWriter script = response.getWriter();	
			System.out.println("멤버가 생성되었습니다.");
			script.println("<script>");
			script.println("alert('쿠폰이 발송되었습니다.')");
			script.println("location.href = 'match.jsp'");
			script.println("</script>");
		}
		else if(resultM == -1){	
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 쿠폰을 받으셨습니다.')");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
		}
		
		
			%>
	</body>
</html>