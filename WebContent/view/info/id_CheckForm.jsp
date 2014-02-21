<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>아이디 찾기</title>
<script type="text/javascript">
		
	//아이디 중복 확인
	function id_Check()
	{
		var check = document.id_CheckForm;
		
		 if (check.j_id.value == "") 
		 {
			alert("검색하실 아이디를 입력하세요");
			check.j_id.focus();
			return false;
		 }					
		 
		//아이디에 공백 사용하지 않기
		 if (check.j_id.value.indexOf(" ")>=0)
		 {
			alert("아이디에 공백을 사용할 수 없습니다.");
			check.j_id.focus();
			check.j_id.select();
			return false;
		 }
		 
		//아이디 유효성 검사 (영문소문자, 숫자만 허용)
		 for (var i=0;i<check.j_id.value.length ;i++ )
		 {
			 var ch=check.j_id.value.charAt(i);  
		   if (!(ch>='0' && ch<='9') && !(ch>='a' && ch<='z'))
		   {
				alert ("아이디는 소문자, 숫자만 입력가능합니다.")
				check.j_id.focus();
				check.j_id.select();
				return false;
		   }
		 }
		 
		//아이디 길이 체크 (6~12자)
		 if (check.j_id.value.length<4 || check.j_id.value.length>8)
		 {
			alert ("아이디를 4~8자까지 입력해주세요.");
			check.j_id.focus();
			check.j_id.select();
			return false;
		 }
		 
		 check.action ="id_Check";
		/* 폼체크를 모두 통과하면 폼을 submit 한다. */
		check.submit();	
	}
	
	//사용 가능한 아이디일 경우 myWriteForm으로 j_id값을 보냄과 동시에 창을 닫는다.
	function check_j_id_close(j_id)
	{	
		opener.ff12321.j_id.value = j_id;
		window.close();		
		opener.ff12321.pass.focus();				
	} 
	
	//엔터시 로그인 되도록 함
	function formEnter(key) 
	{		  	  
		  if (event.keyCode==13) 
		  {
		    if( key == 'j_id') id_Check();
			//id_Check_go()는 로그인 함수
		  }
		  return false;
	}

</script>

</head>
<body>
<form name="id_CheckForm"  onsubmit="return false;">
<input type="hidden" name="url" value="id_CheckForm" >
<table border="0" cellpadding="1" cellspacing="1" width="200">
	<tr>
		<td colspan="2" align="center">아이디 중복 확인 - ${bean.j_id }</td>
	</tr>
	<c:choose >
		<c:when test="${bean.j_id == null || bean.j_id == '' }">
		<tr>			
			<td>	
				<input type="text" name="j_id" maxlength="15" onkeydown="javascript:formEnter('j_id')">
				<input type="button" value="중복확인" onclick="javascript:id_Check()"><br>
				영문, 숫자 혼합 4~8자		
			</td>
		</tr>
		</c:when>
		<c:otherwise>
		<tr>				
			<td colspan="2" align="center">
					현재 ${bean.j_id } 사용가능  &nbsp; <a href="id_CheckForm.bo">다른 아이디 고르기</a><br>	
				<input type="button" value="현재 아이디를 선택" onclick="javascript:check_j_id_close('${bean.j_id }')">
			</td>					
		</tr>		
		</c:otherwise>	
	</c:choose>
		
</table>
</form>
</body>
</html>