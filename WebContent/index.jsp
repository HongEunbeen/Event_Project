<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>Bootstrap 4 Website Example</title>
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
	  <a class="navbar-brand" href="#"><img src="img/logo_red.png"></a>
	
	  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
	    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">HOME</a>
	      </li>
	      <li class="nav-item active">
	        <a class="nav-link" href="info.jsp">오징어 버거</a>
	      </li>
	      <li class="nav-item">
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
	    </ul>
	    <form class="form-inline my-2 my-lg-0">
	      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	    </form>
	  </div>
	</nav>
	<div class="container">
	 
		 <iframe width="560" height="315" src="https://www.youtube.com/embed/fIk8C7CK-sA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		 <a href="make.jsp">최고의 조합을 만들어 주세요</a>
		 <a href="match.jsp">햄버거 맞추기 게임</a>
		 댓글 
		 <form action="reviewProc.jsp" class="was-validated" method="post">
		  <div class="form-group">
		    <label for="uname">Username:</label>
		    <input type="text" class="form-control" id="uname" placeholder="Enter username" name="uname" required>
		    <div class="valid-feedback">Valid.</div>
		    <div class="invalid-feedback">Please fill out this field.</div>
		  </div>
		  <div class="form-group">
		    <label for="pwd">Password:</label>
		    <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd" required>
		    <div class="valid-feedback">Valid.</div>
		    <div class="invalid-feedback">Please fill out this field.</div>
		  </div>
		  <div class="form-group form-check">
		    <label class="form-check-label">
		      <input class="form-check-input" type="checkbox" name="remember" required> I agree on blabla.
		      <div class="valid-feedback">Valid.</div>
		      <div class="invalid-feedback">Check this checkbox to continue.</div>
		    </label>
		  </div>
		  <button type="submit" class="btn btn-primary">Submit</button>
		</form>
		<table class="table">
	    	<thead>
		      <tr>
		        <th>닉네임</th>
		        <th>내용</th>
		        <th>좋아요</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		        <td></td>
		        <td></td>
		        <td></td>
		      </tr>
		    </tbody>
		</table>
	</div>
</body>
</html>