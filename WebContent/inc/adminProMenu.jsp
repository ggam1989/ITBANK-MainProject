<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
     <style type="text/css">
   		
   	    #adminProMenu li{
   			margin-top: 20px;  
   			border:0px;
   			list-style: none;
   		}
   		#adminProMenu li a{
   			padding: 5px 5px 5px 25px;
   			text-decoration: none;
   			background: 5px 7px;
   	
   		}

   		#adminProMenu li a:hover{
   			background:#FFE6E6;
   			color: red;
   		}
    </style> 
    
		 <h1 align="center"><font color="pink"> ��ǰ ���� </font></h1>
  
	<div id="adminProMenu">
	
				<ul>
					<li><a href = "../adminPro/adminProUp">���� ��ǰ</a> </li>
					<li><a href="../adminPro/adminProNewp">�߰� ��ǰ</a></li>
					<li><a href="../adminPro/adminProNewc">�� ��ǰ</a></li>
					<li><a href="../adminPro/adminProDelc">��ǰ ����</a></li>
					
				</ul>
	</div>