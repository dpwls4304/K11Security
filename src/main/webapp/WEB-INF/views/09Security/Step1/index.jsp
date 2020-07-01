<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script>
$(function(){
   
});
</script>
</head>
<body>
<!-- 
Spring security 사용절차
	1. 의존설정(pom.xml)
		<dependency>
	         <groupId>org.springframework.security</groupId>
	         <artifactId>spring-security-web</artifactId>
	         <version>4.2.1.RELEASE</version>
	      </dependency>
	      <dependency>
	         <groupId>org.springframework.security</groupId>
	         <artifactId>spring-security-config</artifactId>
	         <version>4.2.1.RELEASE</version>
	      </dependency>
	      <dependency>
	         <groupId>org.springframework.security</groupId>
	         <artifactId>spring-security-taglibs</artifactId>
	         <version>4.2.1.RELEASE</version>
	      </dependency>
      
	2. web.xml에서 Security 설정파일의 위치를 추가
		
		<context-param>
		<param-name>contextConfigLocation</param-name>
		<param-value>
			/WEB-INF/spring/root-context.xml
			/WEB-INF/spring/security-context1.xml -> 여기를 추가
		</param-value>
		</context-param>
	
	3. 2번에서 설정한 위치에 스프링 시큐리티 설정파일을 생성한다.
		-파일 생성시 security namesapces를 추가한다.
		-만약 생성후 할 때는 하단의 탭을 활용한다.
		-intercept-url과 같은 관련속성은 해당 파일 참조
		
	4. web.xml에서 시큐리티를 웹어플리케이션에 적용하기위한 필터설정
	
		<filter>
			<filter-name>springSecurityFilterChain</filter-name>
			<filter-class>org.springframework.web.filter.DelegatingFilterProxy</filter-class>
		</filter>
		<filter-mapping>
			<filter-name>springSecurityFilterChain</filter-name>
			<url-pattern>/*</url-pattern>
		</filter-mapping>
	※DB연동을 하지 않는다면 4번까지의 과정으로 시큐리티 사용이 가능함.
	
	5. 관리자 정보 JDBC연동 및 화면 커스텀
		2단계, 3단계를 통해 진행.
		security-context2.xml 파일 참조
	
 -->
<div class="container">
	<!-- 파일명 : index.jsp -->
	<h2>스프링 시큐리티 Step1</h2>
	
	<h3>기본설정으로 구현하기</h3>
	
	<h4>URER 권한을 획득한 후 접속할 수 있는 페이지입니다.</h4>
	
	<form:form method="post" action="../logout">
		<input type="submit" value="로그아웃" />
	</form:form>
</div>
</body>
</html>