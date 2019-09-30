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
	  <a class="navbar-brand" href="#"><img src="img/icon/logo_red.png"></a>
	  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
	    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	      <li class="nav-item">
	        <a class="nav-link" href="index.jsp">홈</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="info.jsp">오징어 버거</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="make.jsp">최고의 조합 만들기</a>
	      </li>
	      <li class="nav-item active">
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
			<div class="card-group">
				<div class="card" data-toggle="modal" data-target="#myModal-1"><img src="img/bg/bg_hc_m.png"></div>
				<div class="card" data-toggle="modal" data-target="#myModal-2"><img src="img/bg/bg_mazzahash_m.png"></div>
				<div class="card" data-toggle="modal" data-target="#myModal-3"><img src="img/bg/bg_newbgg_m.png"></div>
			</div>
			<div class="card-group">
				<div class="card" data-toggle="modal" data-target="#myModal-4"><img src="img/bg/bg_newshrimp_m.png"></div>
				<div class="card" data-toggle="modal" data-target="#myModal-5"><img src="img/bg/bg_wagyu_ed_m.png"></div>
				<div class="card" data-toggle="modal" data-target="#myModal-6"><img src="img/bg/bg_squid_m.png"></div>
			</div>
		</div>
	</div>
	
	<!-- The Modal 크리스피 치킨 버거-->
	<div class="modal" id="myModal-1">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h4 class="modal-title">핫 크리스피 버거</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	      <div class="modal-body">
	         <table class="table table-hover">
			    <thead>
			      <tr>
			        <th>총칼로리</th>
			        <th>단백질</th>
			        <th>나트륨</th>
			        <th>당류</th>
			        <th>포화지방</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td>503kcal / 190g</td>
			        <td>22g(40%)</td>
			        <td>929mg(46%)</td>
			        <td>5g</td>
			        <td>7.3g(49%)</td>
			      </tr>
			    </tbody>
			 </table>
			  <table class="table">
			    <thead>
			      <tr>
			        <th>알러지 정보</th>
			        <th>원산지 정보</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr class="table-secondary">
			        <td>밀, 대두, 난류, 우유, 토마토, 닭고기	</td>
			        <td>닭고기 : 국내산</td>
			      </tr>
			    </tbody>
			 </table>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- The Modal 치즈인더  버거-->
	<div class="modal" id="myModal-2">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h4 class="modal-title">치즈 인더 버거 해쉬</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	      <div class="modal-body">
	         <table class="table table-hover">
			    <thead>
			      <tr>
			        <th>총칼로리</th>
			        <th>단백질</th>
			        <th>나트륨</th>
			        <th>당류</th>
			        <th>포화지방</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td>674kcal / 218g</td>
			        <td>16g(29%)</td>
			        <td>695mg(35%)</td>
			        <td>1g</td>
			        <td>14.0g(93%)</td>
			      </tr>
			    </tbody>
			 </table>
			  <table class="table">
			    <thead>
			      <tr>
			        <th>알러지 정보</th>
			        <th>원산지 정보</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr class="table-secondary">
			        <td>밀, 대두, 난류, 우유</td>
			        <td>-</td>
			      </tr>
			    </tbody>
			 </table>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- The Modal 불고기  버거-->
	<div class="modal" id="myModal-3">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h4 class="modal-title">불고기 버거</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	      <div class="modal-body">
	         <table class="table table-hover">
			    <thead>
			      <tr>
			        <th>총칼로리</th>
			        <th>단백질</th>
			        <th>나트륨</th>
			        <th>당류</th>
			        <th>포화지방</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td>>442kcal / 162g</td>
			        <td>18g(33%)</td>
			        <td>720mg(36%)</td>
			        <td>9g</td>
			        <td>6.5g(43%)</td>
			      </tr>
			    </tbody>
			 </table>
			  <table class="table">
			    <thead>
			      <tr>
			        <th>알러지 정보</th>
			        <th>원산지 정보</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr class="table-secondary">
			        <td>밀, 대두, 난류, 우유, 쇠고기,토마토,돼기고기,닭고기</td>
			        <td>호주산</td>
			      </tr>
			    </tbody>
			 </table>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- The Modal 새우  버거-->
	<div class="modal" id="myModal-4">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h4 class="modal-title">새우 버거</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	      <div class="modal-body">
	         <table class="table table-hover">
			    <thead>
			      <tr>
			        <th>총칼로리</th>
			        <th>단백질</th>
			        <th>나트륨</th>
			        <th>당류</th>
			        <th>포화지방</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td>492kcal / 179g	</td>
			        <td>15g(27%)</td>
			        <td>810mg(41%)</td>
			        <td>7g</td>
			        <td>4.7g(31%)</td>
			      </tr>
			    </tbody>
			 </table>
			  <table class="table">
			    <thead>
			      <tr>
			        <th>알러지 정보</th>
			        <th>원산지 정보</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr class="table-secondary">
			        <td>대두, 난류, 우유, 토마토, 새우</td>
			        <td>명태연육 :	미국산
						새우 : 베트남산</td>
			      </tr>
			    </tbody>
			 </table>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div><!-- The Modal 와규  버거-->
	<div class="modal" id="myModal-5">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h4 class="modal-title">와규 에디션 2</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	      <div class="modal-body">
	         <table class="table table-hover">
			    <thead>
			      <tr>
			        <th>총칼로리</th>
			        <th>단백질</th>
			        <th>나트륨</th>
			        <th>당류</th>
			        <th>포화지방</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td>497kcal / 185g</td>
			        <td>20g(36%)</td>
			        <td>737mg(37%)</td>
			        <td>14g</td>
			        <td>11.4g(76%)</td>
			      </tr>
			    </tbody>
			 </table>
			  <table class="table">
			    <thead>
			      <tr>
			        <th>알러지 정보</th>
			        <th>원산지 정보</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr class="table-secondary">
			        <td>밀, 대두, 난류, 우유, 토마토, 쇠고기</td>
			        <td>호주산</td>
			      </tr>
			    </tbody>
			 </table>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- 오징어 버거 -->
		<div class="modal" id="myModal-6">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h4 class="modal-title">오징어 버거</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	      <div class="modal-body">
	      	<h2>정답입니다. 이 사진은 오징어 버거가 맞습니다.</h2>
	         <button type="button" class="btn btn-info" onclick="location.href='info.jsp'">영양정보 보러가기</button>
	         <form class="form" action="matchProc.jsp" method="post">
	         	<div class="form-group">
	               <label for="name">이름</label>
	               <input type="text" class="form-control form-control-lg" name="name" id="name">
	               <div class="invalid-feedback">이름을 입력해주세요</div>
	           </div>
	           <div class="form-group">
	               <label for="phone">휴대전화 번호</label>
	               <input type="text" class="form-control form-control-lg" id="phone" name="phone">
	               <div class="invalid-feedback">전화번호를 입려해 주세요</div>
	           </div> 
	           <div class="custom-control custom-checkbox">
	             <input type="checkbox" class="custom-control-input" id="checkInfo" " name="checkInfo">
	             <label class="custom-control-label" for="checkInfo">개인정보 이용에 동의합니다.(동의 하시면 입력하신 폰 번호로 쿠폰이 발송됩니다.)</label>
	           </div>
	           <div class="form-group py-4">
	               <button class="btn btn-outline-secondary btn-lg" data-dismiss="modal" aria-hidden="true">취소하기</button>
	               <button type="submit" class="btn btn-success btn-lg float-right">제출하기</button>
	           </div>
	         </form>
	      </div>
	    </div>
	  </div>
	</div>
</body>
</html>