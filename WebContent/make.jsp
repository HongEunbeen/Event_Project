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
  <script>
 	var drink;
	var desert1;
	var desert2;
	var chicken;
	var phone;
	var name;
	function submit(){
		phone = document.getElementById('phone').value;
		name = document.getElementById('name').value;
		alert(phone + name);
		if(!drink || !desert1 || !desert2 || !chicken){
			alert("빈칸이 존재합니다 모든 제품을 다 골라주세요");
		}else if(!phone || !name){
			alert("개인정보를 입력해주새요");
		}else{
			location.href = 'makeProc.jsp?drink='+drink+'&desert1='+desert1+'&desert2='+desert2+'&chicken='+chicken+'&phone='+phone+'&name='+name;//페이지 이동하기
		}
	}	
	 $(document).ready(function(){
		 	
			$(".card-group > .card img").click(function(){
				
				$("#boards div img ").css({
					'height': '200px',
					'weight': '280px'
				});
				if(this.id=='drink'){
					$("#boards #drink img ").attr('src', this.src);
					drink = this.title;
				}else if(this.id == 'desert1'){
					$("#boards #desert1 img ").attr('src', this.src);
					desert1 = this.title;
				}else if(this.id == 'desert2'){
					$("#boards #desert2 img ").attr('src', this.src);
					desert2 = this.title;
				}else if(this.id == 'chicken'){
					$("#boards #chicken img ").attr('src', this.src);
					chicken = this.title;
				}
			});
			
		
		});
 </script>

    <style>
	.carousel-item div > div > img {
	   height: 200px;
	   weight: 280px;
	}
.carousel-control-next,
.carousel-control-prev {
    filter: invert(100%);
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
	<div class="container">
		<div class="row">
			<div class="col text-center">
				<img src="img/info/pk_squid_legend_m.png">
				<p>위 행복팩처럼 오징어 버거와 함께 어울리는 팩을 만들어 주세요</p>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4">
				<div id="boards">
					<div id="drink" class="card" style="width: 280px; height:200px;">
						<img>
					</div>
				</div>
			</div><!-- col -->
			<div class="col-sm-8">
				<div id="drink-slider" class="carousel slide" data-ride="carousel" style="width: 840px; height:200px;" data-interval="false">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
					     <div id="images" class="card-group">
							<div class="card"><img src="img/dr/dr_cdl_m.png" id="drink" title="사이다" ></div>
							<div class="card"><img src="img/dr/dr_cl_m.png" id="drink" title="콜라" ></div>
							<div class="card"><img src="img/dr/dr_iam_m.png" id="drink" title="아이스 아메리카노" ></div>
						</div>
				    </div>
				    <div class="carousel-item">
				    	<div id="images" class="card-group">
							<div class="card"><img src="img/dr/dr_icedtea_m.png" id="drink" title="복숭아아이스티" ></div>
							<div class="card"><img src="img/dr/dr_icl_m.png" id="drink" title="아이스카페라떼" ></div>
							<div class="card"><img src="img/dr/dr_la_m.png" id="drink" title="레몬에이드" ></div>
						</div>
				    </div>
				    <div class="carousel-item">
					    <div id="images" class="card-group">
							<div class="card"><img src="img/dr/dr_milk_m.png" id="drink" title="뜨거운우유" ></div>
							<div class="card"><img src="img/dr/dr_nm_m.png" id="drink" title="생수" ></div>
							<div class="card"><img src="img/dr/dr_oj_m.png" id="drink" title="오렌지 주스" ></div>
						</div>
				    </div>
				  </div>
				  <a class="carousel-control-prev" href="#drink-slider" data-slide="prev">
				    <span class="carousel-control-prev-icon"></span>
				  </a>
				  <a class="carousel-control-next" href="#drink-slider" data-slide="next">
				    <span class="carousel-control-next-icon"></span>
				  </a>
				</div>
			</div><!-- col -->	
		</div><!-- row -->
		
		<div class="row"><!-- desert1 -->
			<div class="col-sm-4">
				<div id="boards">
					<div id="desert1" class="card" style="width: 280px; height:200px;">
						<img>
					</div>
				</div>
			</div><!-- col -->
			<div class="col-sm-8">
				<div id="desert1-slider" class="carousel slide" data-ride="carousel" style="width: 840px; height:200px;" data-interval="false">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
					     <div id="images" class="card-group">
							<div class="card"><img src="img/ds/ds_berrybingsu_m.png" id="desert1"  title="팥빙수" ></div>
							<div class="card"><img src="img/ds/ds_csa_m.png" id="desert1" title="콘샐러드" ></div>
							<div class="card"><img src="img/ds/ds_gipie_goso_m.png" id="desert1" title="지파이" ></div>
						</div>
				    </div>
				    <div class="carousel-item">
				    	<div id="images" class="card-group">
							<div class="card"><img src="img/ds/ds_gipie_havanaro_m.png" id="desert1" title="지파이히바네로" ></div>
							<div class="card"><img src="img/ds/ds_hb_new2_m.png" id="desert1" title="해쉬브라운" ></div>
							<div class="card"><img src="img/ds/ds_ncs_m.png" id="desert1" title="치즈스틱" ></div>
						</div>
				    </div>
				    <div class="carousel-item">
					    <div id="images" class="card-group">
							<div class="card"><img src="img/ds/ds_nugget_m.png" id="desert1" title="너겟" ></div>
							<div class="card"><img src="img/ds/ds_ptt_m.png" id="desert1" title="감자튀김" ></div>
							<div class="card"><img src="img/ds/ds_sha_m.png" id="desert1" title="쉑쉑너켓" ></div>
						</div>
				    </div>
				    <div class="carousel-item">
					    <div id="images" class="card-group">
							<div class="card"><img src="img/ds/ds_sr_m.png" id="desert1" title="오징어 링" ></div>
							<div class="card"><img src="img/ds/ds_tornado_choco_m.png" id="desert1" title="오레오토네이도" ></div>
							<div class="card"><img src="img/ds/ds_yg_m.png" id="desert1" title="양념감자" ></div>
						</div>
				    </div>
				  </div>
				  <a class="carousel-control-prev" href="#desert1-slider" data-slide="prev">
				    <span class="carousel-control-prev-icon"></span>
				  </a>
				  <a class="carousel-control-next" href="#desert1-slider" data-slide="next">
				    <span class="carousel-control-next-icon"></span>
				  </a>
				</div>
			</div><!-- col -->	
		</div><!-- row -->
		
		<div class="row"><!-- desert2 -->
			<div class="col-sm-4">
				<div id="boards">
					<div id="desert2" class="card" style="width: 280px; height:200px;">
						<img>
					</div>
				</div>
			</div><!-- col -->
			<div class="col-sm-8">
				<div id="desert2-slider" class="carousel slide" data-ride="carousel" style="width: 840px; height:200px;" data-interval="false">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
					     <div id="images" class="card-group">
							<div class="card"><img src="img/ds/ds_berrybingsu_m.png" id="desert2" title="팥빙수"></div>
							<div class="card"><img src="img/ds/ds_csa_m.png" id="desert2" title="콘샐러드"></div>
							<div class="card"><img src="img/ds/ds_gipie_goso_m.png" id="desert2" title="지파이"></div>
						</div>
				    </div>
				    <div class="carousel-item">
				    	<div id="images" class="card-group">
							<div class="card"><img src="img/ds/ds_gipie_havanaro_m.png" id="desert2" title="지파이히바네로"></div>
							<div class="card"><img src="img/ds/ds_hb_new2_m.png" id="desert2" title="해쉬브라운"></div>
							<div class="card"><img src="img/ds/ds_ncs_m.png" id="desert2" title="치즈스틱"></div>
						</div>
				    </div>
				    <div class="carousel-item">
					    <div id="images" class="card-group">
							<div class="card"><img src="img/ds/ds_nugget_m.png" id="desert2" title="너켓"></div>
							<div class="card"><img src="img/ds/ds_ptt_m.png" id="desert2" title="감자튀김"></div>
							<div class="card"><img src="img/ds/ds_sha_m.png" id="desert2" title="쉑쉑너켓"></div>
						</div>
				    </div>
				    <div class="carousel-item">
					    <div id="images" class="card-group">
							<div class="card"><img src="img/ds/ds_sr_m.png" id="desert2" title="오징어 링"></div>
							<div class="card"><img src="img/ds/ds_tornado_choco_m.png" id="desert2" title="오레오토네이도"></div>
							<div class="card"><img src="img/ds/ds_yg_m.png" id="desert2" title="양념감자"></div>
						</div>
				    </div>
				  </div>
				  <a class="carousel-control-prev" href="#desert2-slider" data-slide="prev">
				    <span class="carousel-control-prev-icon"></span>
				  </a>
				  <a class="carousel-control-next" href="#desert2-slider" data-slide="next">
				    <span class="carousel-control-next-icon"></span>
				  </a>
				</div>
			</div><!-- col -->	
		</div><!-- row -->
		
		<div class="row"><!-- chicken -->
			<div class="col-sm-4">
				<div id="boards">
					<div id="chicken" class="card" style="width: 280px; height:200px;">
						<img>
					</div>
				</div>
			</div><!-- col -->
			<div class="col-sm-8">
				<div id="chicken-slider" class="carousel slide" data-ride="carousel" style="width: 840px; height:200px;" data-interval="false">
					<div class="carousel-inner">
					    <div class="carousel-item active">
						     <div id="images" class="card-group">
								<div class="card"><img src="img/ck/ck_cf4_m.png" id="chicken" title="치킨텐더" ></div>
								<div class="card"><img src="img/ck/ck_firewing2_m.png" id="chicken" title="매운치킨 2조각" ></div>
								<div class="card"><img src="img/ck/ck_nc1_m.png" id="chicken" title="치킨 1조각" ></div>
							</div>
					    </div>
					</div>
				</div>
			</div><!-- col -->	
		</div><!-- row -->
		<div class="row">
	        <div class="col-12 text-center py-2">	
	            <a href="#loginModal" role="button" class="btn btn-primary btn-lg" data-toggle="modal">제출하기</a>
	        </div>
    	</div>
    	<div id="loginModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		    <div class="modal-dialog">
		        <div class="modal-content">
		            <div class="modal-header">
		                <h3>제출하기</h3>
		                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		            </div>
		            <div class="modal-body">
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
		                        <button type="button" class="btn btn-success btn-lg float-right" onclick="submit()">제출하기</button>
		                    </div>
		            </div>
		        </div>
		    </div>
		</div>
	</div><!-- container -->
</body>
</html>