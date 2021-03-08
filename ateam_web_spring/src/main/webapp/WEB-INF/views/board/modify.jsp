<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h3>게시판 글 수정</h3>

<form method="post" action='update.bo' enctype="multipart/form-data">
<table>
<tr><th class='w-px160'>제목</th>
	<td><input class='chk' title='제목' type='text' name='board_title' value='${vo.board_title}' /></td>
</tr>
<tr><th>작성자</th>
	<td>${vo.name}</td>
</tr>
<tr><th>내용</th>
	<td><textarea class='chk' title='내용' name='board_content'>${vo.board_content}</textarea>  </td>
</tr>

<tr><th>첨부파일</th>
	<td class='left'>
		<label>
			<input type='file' name='file' id='attach-file' />
			<img src='imgs/select.png' class='file-img' />
		</label>
		<span id='file-name'>${vo.filename}</span>
		<a id='delete-file'><i class='fas fa-times'></i></a>
	</td>
</tr>
</table>
<input type='hidden' name='board_no' value='${vo.board_no}'/>
<input type='hidden' name='filename' />
</form>
<div class='btnSet'>
	<a class='btn-fill' onclick="if( emptyCheck() ){ $('[name=filename]').val( $('#file-name').text() );   $('form').submit() }">저장</a>
	<a class='btn-empty' href='javascript:history.go(-1)'>취소</a>
</div>
<script type="text/javascript" src="js/file_check.js"></script>
<script type="text/javascript">
if( ${!empty vo.filename} ){
	$('#delete-file').css('display','inline');
}
</script>