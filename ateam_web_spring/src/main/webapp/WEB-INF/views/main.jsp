<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<style>
/*메인 내용물 사이즈*/
.main-content-size { margin: 10px 0; text-align: left; }
.main-content-size.notice { width: 29%; margin-right: 9px; }
.main-content-size.recipe { width: 69%; margin-left: 8px; }
.main-content-size-harf { width: 49.5%; margin: 10px 0; overflow: hidden; cursor: pointer; }
.main-content-size-harf:nth-child(odd) { margin-right: 3px; }
.main-content-size-harf:nth-child(even) { margin-left: 3px; }
.main-content-size-harf:hover { background-color: #ddd; }
.main-content-title { justify-content: space-between; }
.main-content-title a { line-height: 64px; font-size: 12px; }
.main-content-title a:hover { color: #0000ff; }
.main-content-bord:not(:first-child) { margin-top: 20px; }
.main-content-con { width: 100%; padding: 5px 0; }
.main-content-bord .main-content-con div { display: block; width: 100%; height: 45px; line-height: 45px; border-bottom: 1px solid #bbb; }
.main-content-bord .main-content-con div:last-child{ border-bottom: none; }

/* Hide the images by default */
.mySlides {
	display: none;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
	text-shadow: -1px 0 #000000, 0 1px #000000, 1px 0 #000000, 0 -1px #000000;
}

.row{
	position: absolute;
	bottom: 0;
	width: 100%;
}

/* Six columns side by side */
.column {
	float: left;
	border: solid 1px #000;
	margin-right: -1px;
}

/* Add a transparency effect for thumnbail images */
.demo {
	opacity: 0.4;
}

.active, .demo:hover {
	opacity: 1;
}

.cursor {
  cursor: pointer;
}
</style>
<form action="" method="post">
<input type="hidden" name='recipe_id'/>
</form>
<div style="position: relative;">
	<div class="mySlides">
		<div class="numbertext">1 / 3</div>
		<img src="imgs/main/maintitle1.jpg" style="width: 100%" />
	</div>
	
	<div class="mySlides">
		<div class="numbertext">2 / 3</div>
		<img src="imgs/main/maintitle2.jpg" style="width: 100%" />
	</div>
	
	<div class="mySlides">
		<div class="numbertext">3 / 3</div>
		<img src="imgs/main/maintitle3.jpg" style="width: 100%" />
	</div>
	
	<div class="row">
		<div class="column">
			<img class="demo cursor" src="imgs/main/maintitle1.small.jpg" style="width: 100%"
				onclick="currentSlide(1)" />
		</div>
		<div class="column">
			<img class="demo cursor" src="imgs/main/maintitle2.small.jpg" style="width: 100%"
				onclick="currentSlide(2)" />
		</div>
		<div class="column">
			<img class="demo cursor" src="imgs/main/maintitle3.small.jpg" style="width: 100%"
				onclick="currentSlide(3)" />
		</div>
	</div>
</div>
<div class="flexSet-wrap">
<div class="main-content-size notice">
	<div class="main-content-bord">
		<div class="flexSet-wrap main-content-title">
			<h3>공지</h3>
			<a href="list.no">더보기 ></a>
		</div>
		<div class="main-content-con bottomtop-border-2px">
		<c:forEach var="i" begin="0" end="4">
			<div style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
			<c:if test="${!empty notice[i]}">
				<a href='view.no?board_no=${notice[i].board_no}'>${notice[i].board_title}</a>
			</c:if>
			</div>
		</c:forEach>
		</div>
	</div>
	<div class="main-content-bord">
		<div class="flexSet-wrap main-content-title">
			<h3>Q&amp;A</h3>
			<a href="list.qa">더보기 ></a>
		</div>
		<div class="main-content-con bottomtop-border-2px">
			<c:forEach var="i" begin="0" end="4">
			<div style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
			<c:if test="${!empty qna[i]}">
				<a href='view.qa?board_no=${qna[i].board_no}'>${qna[i].board_title}</a>
			</c:if>
			</div>
		</c:forEach>
		</div>
	</div>
	<div class="main-content-bord">
		<div class="flexSet-wrap main-content-title">
			<h3>게시판</h3>
			<a href="list.bo">더보기 ></a>
		</div>
		<div class="main-content-con bottomtop-border-2px">
			<c:forEach var="i" begin="0" end="4">
			<div style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
			<c:if test="${!empty board[i]}">
				<a href='view.bo?board_no=${board[i].board_no}'>${board[i].board_title}</a>
			</c:if>
			</div>
		</c:forEach>
		</div>
	</div>
</div>

<div class="main-content-size recipe ">
	<div class="flexSet-wrap main-content-title">
		<h3>레시피</h3>
		<a href="list.rp">더보기 ></a>
	</div>
	<div class="flexSet-wrap main-content-con top-border-2px">
	<c:forEach var="vo" items="${recommend}">
		<div class="main-content-size-harf bottom-border-2px" onclick="go_view(${vo.recipe_id})">
			<img src="${vo.img_url}" style="height: 270px; min-width: 350px;">
			<p>${vo.recipe_nm_ko}</p>
			<div style="font-size: 14px; padding: 5px;">${vo.sumry}</div>
		</div>
	</c:forEach>
	</div>
</div>
</div>
<script>
var slideIndex = 1;
var timerId = null;
showSlides(slideIndex);

function increasIndex(){
  showSlides(slideIndex++);
}

function currentSlide(n) {
  clearTimeout(timerId);
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  if (slideIndex > slides.length) {slideIndex = 1}  
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  
  timerId = setTimeout(increasIndex, 5000);
}

function go_view(id){
	$('[name=recipe_id]').val(id);
	$('form').attr('action', 'view.rp');
	$('form').submit();
}
</script>