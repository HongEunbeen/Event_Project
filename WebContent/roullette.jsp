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
  <script src="http://code.jquery.com/jquery-1.12.4.js"></script>

	<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/easing/EasePack.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenLite.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/plugins/CSSPlugin.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>	
</head>
<style>
	row{
	  justify-content:center;
	}
	#wrap{  background-color:#ffffff;  position: relative; overflow: hidden;}
	#wrap #gameContainer{width:508px; height:671px; text-align: center; position: relative;margin:0px auto;}
	#wrap #gameContainer h1{}
	#wrap #gameContainer .obj{position: absolute;}
	#wrap #gameContainer .board_start{width:177px; height:177px; top:195px; left:165px; z-index: 5;}
	#wrap #gameContainer .board_start img{width:100%;}
	#wrap #gameContainer .board_bg{width:508px; height:508px; top:40px; left:0px; z-index: 2;}
	#wrap #gameContainer .board_bg img{width:100%;}
	#wrap #gameContainer .board_on{width:508px; height:508px; top:40px; left:0px; z-index: 3; background-image: url('//img.babathe.com/upload/specialDisplay/htmlImage/2019/test/roulette_circle_bg.png');    background-size: 508px;
	}
	#wrap #gameContainer .board_on img{position:absolute; width:100px;top:115px; height:100px;}
	#wrap #gameContainer .board_on img:nth-child(1){    left: 55px;  transform: rotate( -60deg );  top: 120px;}
	#wrap #gameContainer .board_on img:nth-child(2){left: 62px;  transform: rotate( -113deg );  top: 286px;  }
	#wrap #gameContainer .board_on img:nth-child(3){  left: 208px;  top: 372px; transform: rotate(-180deg);}  
	#wrap #gameContainer .board_on img:nth-child(4){left: 351px; top: 286px;  transform: rotate(-245deg);}
	#wrap #gameContainer .board_on img:nth-child(5){ left: 351px;  top: 125px;  transform: rotate(-292deg);   }
	#wrap #gameContainer .board_on img:nth-child(6){  left: 205px;  top: 42px;  transform: rotate(5deg); }  
	
	#wrap #gameContainer .obj.board_arrow{width:90px; height:105px; top:0px; left:195px; z-index: 5;}
	#wrap #gameContainer .char1{width:259px; height:246px; top:400px; left:90px; z-index: 1;}
	#wrap #gameContainer .char2{width:175px; height:198px; top:449px; left:600px; z-index: 1;}
	#wrap #gameContainer .char3{width:112px; height:108px; top:540px; left:550px; z-index: 3;}
	#wrap #gameContainer .txt1{width:420px; height:30px; bottom:20px; left:260px; z-index: 3;}
	
	.popup {display: none; position: fixed; left: 50%; z-index: 99999; text-align: center; background:#fff; font-size:20px; color:#000;}
	#fade {display: none;background: #000;position: fixed;left: 0;top: 0;width: 100%;height: 100%;opacity: .60;z-index: 9999;}
	#popup_gift{width:475px; height:505px; top:120px;}
	#popup_gift .lottery_present {text-align:center;}
	#popup_gift .lottery_present img{ display:block; margin: 50px auto 30px;}
	
	#popup_fail{width:475px; height:505px; top:120px;}
	.popup  .close{ display:inline-block; width:150px; hegiht:50px; line-height:50px; color:#fff; background:#333; margin: 30px 0 0;} 

</style>
<script>
	$(document).ready(function() {
		var gift;	
	    var  present =[ 1,2,3,4,5,6 ]
		iniGame = function(num){
			gift = num;
	                   
			//$(".board_start").html('<img src="images/roulette_board_go.png">');
			TweenLite.killTweensOf($(".board_on"));
			TweenLite.to($(".board_on"), 0, {css:{rotation:rotationPos[gift]}});
			TweenLite.from($(".board_on"),5, {css:{rotation:-3000}, onComplete:endGame, ease:Sine.easeOut});
	               console.log("gift 숫자 : "+ (gift +1) );
		}
		
		var rotationPos = new Array(60,120,180,240,300,360 );
		TweenLite.to($(".board_on"), 60, {css:{rotation:-4000}, ease: Linear.easeNone});
		
		function endGame(){
	            var  copImg= "img/coupon/coupon"+( gift +1) + ".png";
	            console.log("이미지 : " + copImg );
	    		$("#popup_gift .lottery_present" ).text(function( ) {
	    			return "쿠폰을 받으세요";
	    		});
	           	$( '<img  src="' + copImg+ '" />' ).prependTo("#popup_gift .lottery_present");
	 			setTimeout(function() {openPopup("popup_gift");	}, 1000);
		}
		
		$(".popup .btn").on("click",function(){
			location.reload();
		});
		
		function openPopup(id) {
			closePopup();
			$('.popup').slideUp(0);
			var popupid = id
			$('body').append('<div id="fade"></div>');
			$('#fade').css({
			'filter' : 'alpha(opacity=60)'
			}).fadeIn(300);
			var popuptopmargin = ($('#' + popupid).height()) / 2;
			var popupleftmargin = ($('#' + popupid).width()) / 2;
			$('#' + popupid).css({
				'margin-left' : -popupleftmargin
			});
			$('#' + popupid).slideDown(500);
		}
		
		function closePopup() {
			$('#fade').fadeOut(300, function() {
				// $(".player").html('');
			});
			$('.popup').slideUp(400);
			return false
		}
		$(".close").click(closePopup);
	
	});
	$(function() {
		var clicked  =0;
		for(i=1; i<7; i++){
	  		var  pictures = "img/coupon/coupon"+ i  + ".png"; 
	  		$(".board_on").append('<img  src="' + pictures + '" />');
		}
		$(".join").on("mousedown",function(){                                   
	  		if( clicked <= 0){    iniGame(Math.floor(Math.random() *6));    }	
	 		else  if( clicked >=1 ){    event.preventDefault(); alert( "이벤트 참여 하셨씁니다."); }                                           
	 	 clicked ++
		});
	})
		
</script>
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
	    </ul>
	    <form class="form-inline my-2 my-lg-0">
	      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	    </form>
	  </div>
	</nav>
	
	<div class="contanier">
		<div class="row justify-content-md-center" >
			<div id="wrap">
				<div id="gameContainer">				
					<div class="board_start obj"><img src="http://img.babathe.com/upload/specialDisplay/htmlImage/2019/test/coupon_button.png" class="join"></div>
					<div class="board_bg obj"><img src="http://img.babathe.com/upload/specialDisplay/htmlImage/2019/test/roulette_circle_bg.png"></div>
					<div class="board_on obj"></div>
					<div class="board_arrow obj"><img src="http://img.babathe.com/upload/specialDisplay/htmlImage/2019/test/roulette_board_arrow.png"></div>
				</div>
				<div id="popup_gift" class="popup">
					<div class="lottery_present"></div>
				        <a href="javascript:;" class="close">닫기 </a>
				</div>
			</div>
		</div><!-- row -->
		<div class="row justify-content-md-center">
			<button class="btn btn-primary btn-lg" onclick="location.href='index.jsp'">돌아가기</button>
		</div><!-- row -->
	</div>
</body>
</html>