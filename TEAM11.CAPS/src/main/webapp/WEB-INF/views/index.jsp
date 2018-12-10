<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    

	<h1>Home page</h1>
	<p>
	Welcome to "Student application".<br/>
	<spring:message code="message.welcome" />
	<i>${message}</i><br/>
	
	<a href="/emp/list.html">View </a><br/>
	</p>
	