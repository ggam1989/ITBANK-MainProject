<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���̵� ã��</title>
<script type="text/javascript">
		
	//���̵� �ߺ� Ȯ��
	function id_Check()
	{
		var check = document.id_CheckForm;
		
		 if (check.j_id.value == "") 
		 {
			alert("�˻��Ͻ� ���̵� �Է��ϼ���");
			check.j_id.focus();
			return false;
		 }					
		 
		//���̵� ���� ������� �ʱ�
		 if (check.j_id.value.indexOf(" ")>=0)
		 {
			alert("���̵� ������ ����� �� �����ϴ�.");
			check.j_id.focus();
			check.j_id.select();
			return false;
		 }
		 
		//���̵� ��ȿ�� �˻� (�����ҹ���, ���ڸ� ���)
		 for (var i=0;i<check.j_id.value.length ;i++ )
		 {
			 var ch=check.j_id.value.charAt(i);  
		   if (!(ch>='0' && ch<='9') && !(ch>='a' && ch<='z'))
		   {
				alert ("���̵�� �ҹ���, ���ڸ� �Է°����մϴ�.")
				check.j_id.focus();
				check.j_id.select();
				return false;
		   }
		 }
		 
		//���̵� ���� üũ (6~12��)
		 if (check.j_id.value.length<4 || check.j_id.value.length>8)
		 {
			alert ("���̵� 4~8�ڱ��� �Է����ּ���.");
			check.j_id.focus();
			check.j_id.select();
			return false;
		 }
		 
		 check.action ="id_Check";
		/* ��üũ�� ��� ����ϸ� ���� submit �Ѵ�. */
		check.submit();	
	}
	
	//��� ������ ���̵��� ��� myWriteForm���� j_id���� ������ ���ÿ� â�� �ݴ´�.
	function check_j_id_close(j_id)
	{	
		opener.ff12321.j_id.value = j_id;
		window.close();		
		opener.ff12321.pass.focus();				
	} 
	
	//���ͽ� �α��� �ǵ��� ��
	function formEnter(key) 
	{		  	  
		  if (event.keyCode==13) 
		  {
		    if( key == 'j_id') id_Check();
			//id_Check_go()�� �α��� �Լ�
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
		<td colspan="2" align="center">���̵� �ߺ� Ȯ�� - ${bean.j_id }</td>
	</tr>
	<c:choose >
		<c:when test="${bean.j_id == null || bean.j_id == '' }">
		<tr>			
			<td>	
				<input type="text" name="j_id" maxlength="15" onkeydown="javascript:formEnter('j_id')">
				<input type="button" value="�ߺ�Ȯ��" onclick="javascript:id_Check()"><br>
				����, ���� ȥ�� 4~8��		
			</td>
		</tr>
		</c:when>
		<c:otherwise>
		<tr>				
			<td colspan="2" align="center">
					���� ${bean.j_id } ��밡��  &nbsp; <a href="id_CheckForm.bo">�ٸ� ���̵� ����</a><br>	
				<input type="button" value="���� ���̵� ����" onclick="javascript:check_j_id_close('${bean.j_id }')">
			</td>					
		</tr>		
		</c:otherwise>	
	</c:choose>
		
</table>
</form>
</body>
</html>