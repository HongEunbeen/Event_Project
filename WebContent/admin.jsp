<%@page import="java.io.PrintWriter"%>
<%@page import="mirim.hs.kr.Match_MDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mirim.hs.kr.Match_M"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <a class="navbar-brand" href="#"><img src="img/icon/logo_red.png"></a>
	  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
	    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	      <li class="nav-item ">
	        <a class="nav-link" href="index.jsp">홈</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="info.jsp">오징어 버거</a>
	      </li>
	      <li class="nav-item active">
	        <a class="nav-link" href="make.jsp">최고의 조합 만들기</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="match.jsp">햄버거 맞추기</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="https://mobilehome.lotteria.com/">홈서비스</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="https://mobilehome.lotteria.com/store/search">주변매장</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="admin.jsp">관리자</a>
	      </li>
	    </ul>
	    <form class="form-inline my-2 my-lg-0">
	      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	    </form>
	  </div>
	</nav>
	<div class="contanier">
		<div class="row">
		<table class="table">
			  <thead>
			    <tr>
			      <th>전화번호</th>
			      <th>이름</th>
			      <th>쿠폰 종류</th>
			    </tr>
			  </thead>
			  <tbody>
			  <%
			    Match_MDAO matchDAO = new Match_MDAO();
				ArrayList<Match_M> list = matchDAO.selectAll();
				for(int i = 0; i < list.size(); i++){ %>
			    <tr>
			    	<td><%=list.get(i).getPhone()%></td>
			    	<td><%=list.get(i).getName() %></td>
			    	<td><%=list.get(i).getCoupon() %></td>
			    </tr>
			<%} %>
			  </tbody>
			</table>
		</div>
		<div class="row">
		
		</div>
	</div>
</body>
</html>