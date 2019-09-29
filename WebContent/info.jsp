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
	.carousel-item > img {
	   height: 480px;
	   weight: 480px;
	}
	row{
		margin:20px;
	}
  </style>
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
	<div class="cantanier bg-faded">
		<div class="row  justify-content-md-center" "><!-- 오징어 버거 소개 -->
			<div class="col text-center">
				<img src="img/info/info_1.jpg">
			</div>
		</div>
		<div class="row justify-content-md-center"><!-- 오징어 버거 정보 -->
			<table class="table table-hover text-center">
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
			        <td>400kcal / 171g</td>
			        <td>16g(30%)</td>
			        <td>669mg(33%)</td>
			        <td>11g</td>
			        <td>2.9g(19%)</td>
			      </tr>
			      <tr>
			        <th colspan="5">알러지 정보</th>
			      </tr>
			      <tr>
			        <td colspan="5">밀, 대두, 난류, 우유, 토마토, 쇠고기, 닭고기, 새우, 오징어</td>
			      </tr>
			      <tr>
			        <th colspan="5">원산지 정보</th>
			      </tr>
			      <tr>
			        <td colspan="5">오징어 : 페루산
									명태연육 : 미국산</td>
			      </tr>
			    </tbody>
			  </table>
		</div><!-- row -->
		<div class="row"><!-- 오징어 버거 비하인드 -->
			<div class="col text-center">
			<button class="btn btn-primary btn-lg btn-block" data-toggle="collapse" data-target="#history">오징어 버거 역사</button>

				<div id="history" class="collapse">
				<img src="img/bg/before.jpg">
				<p>2004년 출시 당시에는 불타는 오징어버거로 시작했으며, 2010년 이후로는 그냥 오징어버거로 바뀌었다. 원래 일반 메뉴였으나 2014년 6월 2일 부로 착한메뉴로 들어가면서 세트 및 콤보가 단종되었으며 홈서비스 메뉴에서도 제외되었다.[1] 그러다가 2016년 3월 경에 착한점심 메뉴로 올라가면서 점심시간대 한정으로 세트 메뉴가 부활하였다. 2016년 6월 중에 착한메뉴 시스템이 사라지면서 일반 버거로 편입되었고 평시 세트가 부활했다.

2016년 8월 리치버거와 함께 단종된다는 소문이 돌고 있는데, 결국 9월 12일 부로 리치버거와 함께 단종됐다. 매니아 취향의 버거도 아니고 나름 인기를 가지고 있었던 버거였음에도 무작정 단종시킨 것을 성토하는 목소리가 많다. 단종 당시 가격은 단품 2,000원, 세트 4,200원, 런치 3,500원.</p>
				</div>
			</div>
		</div>
		<div class="row"><!-- 오징어 버거 특징 -->
			<div class="col text-center">
				<button class="btn btn-primary btn-lg btn-block" data-toggle="collapse" data-target="#specific">오징어 버거 특징</button>
				<div id="specific" class="collapse">
					<p>오징어가 들어간 튀김 패티와 매콤한 소스가 조화를 이룬다. 맛은 매운 맛과 달콤한 맛이 어우러져 매콤달콤한 편이라고 하나, 가게 알바의 역량에 따라 맛의 질이 기하급수적으로 상승, 하강하는 대표적 메뉴. 과거에는 소스가 엄청나게 매워서 그야말로 불타는 맛이었지만 2013년 이후론 그나마 온순(?)해진 편이다. 하지만 여전히 맵기는 매한가지이다.

또한 매운 소스의 양에 따라 매운 정도가 변한다. 알바에게 소스 많이 넣어달라고 하면 더욱 매운 맛을 느낄 수 있다. 어린이를 동반한 부모가 주문할 경우 반드시 매운데 괜찮겠냐고 물어보게 시킨다. 그 만큼 맵고 속쓰리다...

그리고 위에 적혀있듯이 상당히 매니악한 메뉴라 웬만하면 만들어놓은 걸 보기 힘들다. 즉 주문하면 거의 무조건 바로 튀겨서 주는데 조금 기다려야 하기는 하지만 갓 나온 뜨거운 햄버거를 먹을 수 있다는 것 또한 장점이다. 뜨겁기 때문에 매운맛도 배가된다.</p>
				</div>
			</div>
		</div>
		<div class="row"><!-- 오징어 버거 재출시 -->
			<div class="col text-center">
				<button class="btn btn-primary btn-lg btn-block" data-toggle="collapse" data-target="#resend">오징어 버거 재출시</button>
				<div id="resend" class="collapse">
					<img src="img/info/resend.jpg">
					<p>결승 투표 결과 1위에 등극하였다. 45퍼로 득표했다는데 자세한 수치들이 비율과 안 맞다는 지적이 있다. 이 부분은 롯데리아가 의혹해명을 내놓았다.#

어쨌거나 재출시는 확정되었긴 한데 롯데리아 측에서 순위 발표글에 사실 이 투표는 1위한 제품의 리뉴얼 버전을 출시하는 게 목표였다는 반전을 날려주었다. 롯데리아 공식 페이스북에 올리온 4컷 만화에서 '더 바삭한 패티'와 '더 매운 맛'을 언급한 것을 보면 패티와 소스에 변화가 있을거라 추정된다.
					</p>
				</div>
			</div>
		</div>
		<div class="row"><!-- 오징어 버거 웹툰 -->
		<div class="col text-center">
		  <!-- webtoon1 -->
			<div id="webtoon1" class="carousel slide" data-ride="carousel" style="width: 480px; height:480px;" data-interval="false">
			  <ul class="carousel-indicators">
			    <li data-target="#webtoon1" data-slide-to="0" class="active"></li>
			    <li data-target="#webtoon1" data-slide-to="1"></li>
			    <li data-target="#webtoon1" data-slide-to="2"></li>
			    <li data-target="#webtoon1" data-slide-to="3"></li>
			  </ul>
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="img/webtoon/wt_1.jpg" >
			    </div>
			    <div class="carousel-item">
			      <img src="img/webtoon/wt_2.jpg">
			    </div>
			    <div class="carousel-item">
			      <img src="img/webtoon/wt_3.jpg">
			    </div>
			    <div class="carousel-item">
			      <img src="img/webtoon/wt_4.jpg">
			    </div>
			  </div>
			  <a class="carousel-control-prev" href="#webtoon1" data-slide="prev">
			    <span class="carousel-control-prev-icon"></span>
			  </a>
			  <a class="carousel-control-next" href="#webtoon1" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
			  </a>
			</div>
		</div><!-- col -->
		<div class="col text-center">
		<!-- webtoon2 -->
			<div id="webtoon2" class="carousel slide" data-ride="carousel" style="width: 480px; height:480px;" data-interval="false">
			  <ul class="carousel-indicators">
			    <li data-target="#webtoon2" data-slide-to="0" class="active"></li>
			    <li data-target="#webtoon2" data-slide-to="1"></li>
			    <li data-target="#webtoon2" data-slide-to="2"></li>
			    <li data-target="#webtoon2" data-slide-to="3"></li>
			  </ul>
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="img/webtoon/wt_5.jpg" >
			    </div>
			    <div class="carousel-item">
			      <img src="img/webtoon/wt_6.jpg">
			    </div>
			    <div class="carousel-item">
			      <img src="img/webtoon/wt_7.jpg">
			    </div>
			    <div class="carousel-item">
			      <img src="img/webtoon/wt_8.jpg">
			    </div>
			  </div>
			  <a class="carousel-control-prev" href="#webtoon2" data-slide="prev">
			    <span class="carousel-control-prev-icon"></span>
			  </a>
			  <a class="carousel-control-next" href="#webtoon2" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
			  </a>
			</div>
			</div><!-- col -->
		</div><!-- row -->
		
		<div class="row justify-content-md-center"><!-- 오징어 버거 웹툰 -->
		<div class="col text-center">
		  <!-- webtoon3 -->
			<div id="webtoon3" class="carousel slide" data-ride="carousel" style="width: 480px; height:480px;" data-interval="false">
			  <ul class="carousel-indicators">
			    <li data-target="#webtoon3" data-slide-to="0" class="active"></li>
			    <li data-target="#webtoon3" data-slide-to="1"></li>
			    <li data-target="#webtoon3" data-slide-to="2"></li>
			    <li data-target="#webtoon3" data-slide-to="3"></li>
			  </ul>
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="img/webtoon/wt_9.jpg">
			    </div>
			    <div class="carousel-item">
			      <img src="img/webtoon/wt_10.jpg">
			    </div>
			    <div class="carousel-item">
			      <img src="img/webtoon/wt_11.jpg">
			    </div>
			    <div class="carousel-item">
			      <img src="img/webtoon/wt_12.jpg">
			    </div>
			  </div>
			  <a class="carousel-control-prev" href="#webtoon3" data-slide="prev">
			    <span class="carousel-control-prev-icon"></span>
			  </a>
			  <a class="carousel-control-next" href="#webtoon3" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
			  </a>
			</div>
			</div><!-- col -->
			<div class="col text-center">
	`			<!-- webtoon4 -->
				<div id="webtoon4" class="carousel slide" data-ride="carousel" style="width: 480px; height:480px;" data-interval="false">
				  	<div class="carousel-inner">
				    	<div class="carousel-item active">
				     	 	<img src="img/webtoon/wt_13.jpg">
				    	</div>
			  		</div>
				</div>
			</div><!-- col -->
		</div><!-- row -->
	</div>
</body>
</html>