<%@page import="java.util.ArrayList"%>
<%@page import="mirim.hs.kr.Review"%>
<%@page import="mirim.hs.kr.ReviewDAO"%>
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
  <style>
  	#home_quicklinks {
    padding: 20px 0;
    text-align: center;
}
a.quicklink.link1 {
    background: #fc6719;
}
a.quicklink {
    display: inline-block;
    width: 302px;
    height: 173px;
    position: relative;
    margin: 90px 30px;
}
a.quicklink .ql_caption {
    display: block;
    height: 100%;
    width: 100%;
    position: relative;
}
.outer {
    display: table;
    position: relative;
    vertical-align: middle;
    text-align: center;
    height: 100%;
    width: 100%;
    border-spacing: 0px;
    padding: 0px;
}
.inner {
    display: table-cell;
    position: relative;
    vertical-align: middle;
    text-align: center;
    height: 100%;
    width: 100%;
    border-spacing: 0px;
    padding: 0px;
}
a.quicklink .ql_caption h2 {
    margin: 0px;
    padding: 0px;
    text-transform: uppercase;
    line-height: 1.46em;
    color: #fff;
}
a.quicklink.link1 .ql_top {
    border-bottom-color: #fc6719;
}
a.quicklink.link1 .ql_bottom {
    border-top-color: #fc6719;
}


.ql_top {
    bottom: 173px;
    border-bottom: 89px solid #ccc;
}
.ql_bottom {
    top: 173px;
    border-top: 89px solid #ccc;
}
.ql_top, .ql_bottom {
    position: absolute;
    left: 0px;
    width: 0px;
    border-left: 151px solid transparent;
    border-right: 151px solid transparent;
}

a.quicklink.link2 {
    background: #fcf4e7;
}
a.quicklink.link2 .ql_top {
    border-bottom-color: #fcf4e7;
}
a.quicklink.link2 .ql_bottom {
    border-top-color: #fcf4e7;
}


a.quicklink.link3 .ql_top {
    border-bottom-color: #bcbdc0;
}
a.quicklink.link3 .ql_bottom {
    border-top-color: #bcbdc0;
}
a.quicklink.link3 {
    background: #bcbdc0;
}
a.quicklink {
    font-size: 36px;
    font-weight: 500;
    text-decoration:none;
}
.hexagon {
  position: relative;
  width: 300px; 
  height: 173.21px;
  margin: 86.60px 0;
  background-image: url(http://csshexagon.com/img/meow.jpg);
  background-size: auto 334.8632px;
  background-position: center;
  box-shadow: 0 0 20px rgba(0,128,192,0.6);
  border-left: solid 5px #4a401c;
  border-right: solid 5px #4a401c;
}

.hexTop,
.hexBottom {
  position: absolute;
  z-index: 1;
  width: 212.13px;
  height: 212.13px;
  overflow: hidden;
  -webkit-transform: scaleY(0.5774) rotate(-45deg);
  -ms-transform: scaleY(0.5774) rotate(-45deg);
  transform: scaleY(0.5774) rotate(-45deg);
  background: inherit;
  left: 38.93px;
  box-shadow: 0 0 20px rgba(0,128,192,0.6);
}

/*counter transform the bg image on the caps*/
.hexTop:after,
.hexBottom:after {
  content: "";
  position: absolute;
  width: 290.0000px;
  height: 167.4315780649915px;
  -webkit-transform:  rotate(45deg) scaleY(1.7321) translateY(-83.7158px);
  -ms-transform:      rotate(45deg) scaleY(1.7321) translateY(-83.7158px);
  transform:          rotate(45deg) scaleY(1.7321) translateY(-83.7158px);
  -webkit-transform-origin: 0 0;
  -ms-transform-origin: 0 0;
  transform-origin: 0 0;
  background: inherit;
}

.hexTop {
  top: -106.0660px;
  border-top: solid 7.0711px #4a401c;
  border-right: solid 7.0711px #4a401c;
}

.hexTop:after {
  background-position: center top;
}

.hexBottom {
  bottom: -106.0660px;
  border-bottom: solid 7.0711px #4a401c;
  border-left: solid 7.0711px #4a401c;
}

.hexBottom:after {
  background-position: center bottom;
}

.hexagon:after {
  content: "";
  position: absolute;
  top: 2.8868px;
  left: 0;
  width: 290.0000px;
  height: 167.4316px;
  z-index: 2;
  background: inherit;
}
  </style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <a class="navbar-brand" href="index.jsp"><img src="img/icon/logo_red.png"></a>
	  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
	    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	      <li class="nav-item active">
	        <a class="nav-link" href="index.jsp">홈</a>
	      </li>
	      <li class="nav-item">
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

		<div class="row">
		 	<div class="col text-center">
		 	 <iframe width="800" height="455" src="https://www.youtube.com/embed/fIk8C7CK-sA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		 	</div>
		 </div><!-- row -->
		 <div class="row justify-content-md-center">
			<img src="img/info/65781_44155_248.jpg">
		</div><!-- row -->
		 <div class="row">
		 	<div class="col text-center">
		 		<div id="home_quicklinks">
                   <a class="quicklink link1" href="info.jsp">
                       <span class="ql_caption">
                           <span class="outer">
                               <span class="inner">
                                   <h2>오징어 버거 소개</h2>
                               </span>
                           </span>
                       </span>
                       <span class="ql_top"></span>
                       <span class="ql_bottom"></span>
                   </a>

                   <a class="quicklink link2" href="make.jsp">
                       <span class="ql_caption">
                           <span class="outer">
                               <span class="inner">
                                   <h2>오징어 세트 만들기</h2>
                               </span>
                           </span>
                       </span>
                       <span class="ql_top"></span>
                       <span class="ql_bottom"></span>
                   </a>

                   <a class="quicklink link3" href="match.jsp">
                       <span class="ql_caption">
                           <span class="outer">
                               <span class="inner">
                                   <h2>오징어 버거 맞추기</h2>
                               </span>
                           </span>
                       </span>
                       <span class="ql_top"></span>
                       <span class="ql_bottom"></span>
                   </a>

               </div>
		 	</div>
		 </div><!-- row -->
		<div class="row">
			<form class="form-inline" action="reviewProc.jsp" method="post">
			 	<input type="text" class="form-control mb-3 mr-sm-3" id="name" name="name" placeholder="이름">
			  	<input type="password" class="form-control mb-3 mr-sm-3" id="password" name="password"  placeholder="비밀번호">
			  	<input type="text" class="form-control mb-3 mr-sm-3" id="content" name="content" placeholder="내용"  style="width:500px;">
			 	<button type="submit" class="btn btn-primary mb-2" value="댓글 쓰기">댓글 쓰기</button>
			</form>
			<table class="table">
		    	<thead>
			      	<tr>
			        	<th>닉네임</th>
			        	<th>내용</th>
			        	<th>좋아요</th>
			        	<th>작성일자</th>
			        	<th>b</th>
			      	</tr>
			    </thead>
			    <tbody>
			    <%
			    	ReviewDAO reviewDAO = new ReviewDAO();
			    	ArrayList<Review> reviewList = reviewDAO.getReview();
			    	
			    	for(int i = 0; i < reviewList.size(); i++){
			    %>
			      	<tr>
			        	<td><%=reviewList.get(i).getName() %></td>
			        	<td><%=reviewList.get(i).getContent() %></td>
			        	<td><%=reviewList.get(i).getHeart() %></td>
			        	<td><%=reviewList.get(i).getWrite() %></td>
			        	<td>
			        	<button type="button" class="btn btn-danger" onclick="location.href='heartProc.jsp?num=<%=reviewList.get(i).getNum()%>'">b</button>
			       		</td>
			      	</tr>
			      <%} %>
			    </tbody>
			</table>
		</div><!-- row -->
	</div>
</body>
</html>