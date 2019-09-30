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
		String drink = request.getParameter("drink");
		String desert1 = request.getParameter("desert1");
		String desert2 = request.getParameter("desert2");
		String chicken = request.getParameter("chicken");
		
		String phone = request.getParameter("phone");
		String name = request.getParameter("name");
		
		
		
		Make_S makeS = new Make_S();
		Make_SDAO makeSDAO = new Make_SDAO();
		

		Make_M makeM = new Make_M();
		Make_MDAO makeMDAO = new Make_MDAO();
		
		int resultM = makeMDAO.insertM(phone, name, "make");
		
		if(resultM == 1){
			PrintWriter script = response.getWriter();	
			System.out.println("멤버가 생성되었습니다.");
			
			int resultS = makeSDAO.insertS(phone, "오징어버거", drink, desert1, desert2, chicken);
			if(resultS == 1){
				script.println("<script>");
				script.println("alert('룰렛을 돌려 주세요')");
				script.println("location.href = 'roullette.jsp'");
				script.println("</script>");
			}
			else if(resultS == -1){
				script.println("<script>");
				script.println("alert('이벤트 응모에 실패하셨습니다.')");
				script.println("location.href = 'make.jsp'");
				script.println("</script>");
			}
		}
		else if(resultM == -1){
			PrintWriter script = response.getWriter();
			int resultM2 = makeMDAO.selectM(phone);
			if(resultM2 == 1){
				System.out.println("이미 멤버가 존재합니다.");
				int resultS = makeSDAO.insertS(phone, "오징어버거", drink, desert1, desert2, chicken);
				if(resultS == 1){
					script.println("<script>");
					script.println("alert('룰렛을 돌려 주세요')");
					script.println("location.href = 'roullette.jsp'");
					script.println("</script>");
				}
				else if(resultS == -1){
					script.println("<script>");
					script.println("alert('이벤트 응모에 실패하셨습니다.')");
					script.println("location.href = 'make.jsp'");
					script.println("</script>");
				}
			}else{
				script.println("<script>");
				script.println("alert('멤버가 존재하지 않습니다.')");
				script.println("location.href = 'make.jsp'");
				script.println("</script>");
			}
		}
		
		
		
		
		
			%>
	</body>
</html>