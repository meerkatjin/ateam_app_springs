<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Community Board</title>
<style type="text/css">
.menu ul li { float: left; margin-right: 40px; font-size: 18px; font-weight: bold;}
.btn-write ul { margin: 0; }
.btn-write ul li { float: right; margin-bottom: 20px; font-weight: bold;}
.menu { height: 50px; }
table { width: 1024px; }
.btn-write ul { margin: 0; }
.btn-write ul li { float: right; margin-bottom: 20px; font-weight: bold; }
</style>
</head>
<body>
<div class="menu">
<ul>
	<li><a href="list.no">공지사항</a></li>
	<li><a href="list.qa">자주묻는 질문</a></li>
	<li><a href="list.bo">게시판</a></li>
</ul>

</div>

<form action="list.no" method="post">
<div class="btn-write">
	<ul>
		<!-- 로그인한 경우에만 글쓰기 버튼 보이게 -->
		<li><a class="btn-fill" href="new.qa" maxlength="100">글쓰기</a></li>
	</ul>
</div>
<input type='hidden' name='curPage' value='1'/>
</form>

<table>
<tr>
	<th class="w-px80">번호</th>
	<th>제목</th>
	<th class="w-px120">작성자</th>
	<th class="w-px120">작성일</th>
	<th class="w-px120">조회수</th>
</tr>
<c:forEach items="${page.list}" var="vo">
<tr>
	<td>${vo.no}</td>
	<td>${vo.board_title}</td>
	<td>${vo.name}</td>
	<fmt:formatDate value="${vo.create_dt}" var="create_dt" pattern="yyyy-MM-dd" />
	<td>${create_dt}</td>
	<td>${vo.board_readcount}</td>
</tr>
</c:forEach>
</table>

</body>
</html>