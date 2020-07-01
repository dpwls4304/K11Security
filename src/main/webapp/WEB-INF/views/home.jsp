<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<h2>Spring Security 사용1 - Default 페이지 사용</h2>
	<li>
		<a href="./security1-1/index.do" target="_blank">
			step1 페이지 바로가기(인증필요)
		</a>
	</li>
	<li>
		<a href="./security1-2/access.do" target="_blank">
			step1 페이지 바로가기(인증불필요)
		</a>
	</li>
	
	<h2>Spring Security - Step2(커스텀 페이지 사용하기)</h2>
	
	<li>
		<a href="./security2/index.do" target="_blank">
			Step2 INDEX 페이지 바로가기
		</a>
	</li>
	<li>
		<a href="./security2/login.do" target="_blank">
			Step2 로그인 페이지 바로가기
		</a>
	</li>
	<li>
		<a href="./security2/admin/main.do" target="_blank">
			Step2 관리자영역 바로가기
		</a>
	</li>
	<li>
		<a href="./security2/accessDenied.do" target="_blank">
			Step2 접근불가안내페이지 바로가기
		</a>
	</li>
	
	<!-- 
	프로젝트에 스프링 시큐리티를 적용할 경우 <form태그를
	사용할 때는 인증이 필요없는 페이지에서도 반드시
	<form:form 태그 라이브러리를 사용해야 한다.
	해당 태그를 사용하면 _csrf라는 hidden폼이 자동으로 삽입되고
	시큐리티는 이 값을 사용하여 정상적인 폼값인지 확인한다.
	 -->
	<h2>Spring Security 사용시 주의사항</h2>
	<li>
		<a href="./security3/form.do" target="_blank">
			Form페이지 바로가기
		</a>
	</li>
</body>
</html>
