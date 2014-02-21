<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="ct" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<h1>정보 수정</h1>

<style type="text/css">
	
	#mine{position:absolute;top:100px;left:100px;border:1 solid #aaaaaa;} 
	
</style>

<div id="mine">
	<form name="frm" action="myModify" method="post" enctype="multipart/form-data">
	<input type="hidden" name="j_id"  value="${bean.j_id }">
		<table cellpading="1" cellspacing="1" border="0">
	
			<tr>
					<td colspan="2" align="center" bgcolor="yellow"><font size="5" color="red">정보수정</font></td>
			</tr>
			
				<tr>
					<td align="center">성 명</td>
					<td><input type="text" name="name" size="10" maxlength="7"></td>
				</tr>
	
				<tr>
					<td align="center">패스워드</td>
					<td><input type="password" name="pass" size="30" maxlength="20"></td>
				</tr>
	
				<tr>
				<td align="center">이 메 일</td>
					<td><input type="text" name="email" size="30" maxlength="20"></td>
				</tr>
				
				<tr>
					<td align="center">생일</td>
					<td><input type="text" name="birth">
					</td>
				</tr>
				
				<tr>
					<td align="center">성 별</td>
					<td><input type="radio" name="sex" value="m">남자
	 					<input type="radio" name="sex" value="fm">여자
					</td>
				</tr>
	
			
				<tr>
					<td align="center">전화번호</td>
					<td><input type="text" name="phone"></td>
				</tr>
			
				<tr>
					<td align="center">주소</td>
					<td><input type="text" name="address" size="60" maxlength="50"></td>
				</tr>
	
			<tr>
				<td></td>
				<td colspan="2" align="center">
					<input type="submit" value="작성">
					<input type="button" value="취소" onclick="location.href='myModifyForm?j_id=${bean.j_id}'">
					<input type="button" value="뒤로" onclick="location.href='myDetail?j_id=${bean.j_id}'"></td>
			</tr>
	
		</table>
	</form>
</div>
