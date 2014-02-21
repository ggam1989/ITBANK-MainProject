<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	
	#join{position:absolute;top:100px;left:100px;border:1 solid #aaaaaa;} 
	
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
<script type="text/javascript">
//아이디 중복확인 창 열기
function id_Check()
{
	window.open("id_CheckForm","GET","toolbar=yes, resizable=yes, width=400,height=300");
}

</script>

</head>
<body>
	<h1>Member Write</h1>

<div id="join">
	<form name="ff12321" action="../info/myWrite" method="post" enctype="multipart/form-data">
	<table cellpadding="1" cellspacing="1" border="0">
			<tr>
				<td colspan="2" align="center" bgcolor="fff000"><font size="5" color="red">회원가입</font></td>
			</tr>
			
			<tr>
				<td align="center">성 명</td>
				<td><input type="text" name="name" size="10" maxlength="7"></td>
			</tr>
			
			<tr>
				<td align="center">아 이 디</td>
				<td><input type="text" name="j_id" maxlength="15" readonly="readonly">
					<input type="button" value="중복확인" onclick="javascript:id_Check()">
				</td>
			<tr>

			<tr>
				<td align="center">비밀번호</td>
				<td><input type="password" name="pass" size="30" maxlength="20"></td>
			</tr>
			
			<tr>
				<td align="center">비밀번호 확인</td>
				<td><input type="text" name="password2" maxlength="20" ></td>		
			</tr>	

			<tr>
				<td align="center">이 메 일</td>
				<td><input type="text" name="email" size="30" maxlength="20"></td>
			</tr>
			
			<tr>
				<td align="center">주 소</td>
				<td><input type="text" name="address"></td>
			</tr>
			
			<tr>
				<td align="center">생일</td>
				<td><input type="text" name="birth"></td>
			</tr>
			
			<tr>
				<td align="center">성 별</td>
				<td><input type="radio" name="sex" value="m" >남자
 					<input type="radio" name="sex" value="fm" >여자</td>
			</tr>

			<tr>
				<td align="center">전화번호</td>
				<td><input type="text" name="phone"></td>
			</tr>

			
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="가입">
					<input type="reset" value="취소">
					<input type="button" value="뒤로" onclick="history.go(-1)">
				</td>
			</tr>

		</table>
	</form>
</div>

</body>
</html>