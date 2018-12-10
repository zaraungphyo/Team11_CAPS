
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<%-- <spring:url value="/css/simple.css" var="style"/>
<link rel="STYLESHEET" type="text/css" href="${style}" /> --%>
	<div class="container">
  <form:form modelAttribute="user" class="form-horizontal" method="POST" action="${pageContext.request.contextPath}/home/login" >
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">
      	<spring:message code="fieldLabel.username" />
      </label>
      <div class="col-sm-4">
     <!--    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"> -->
     <form:input path="email" class="form-control" placeholder="Enter email" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">
		<spring:message code="fieldLabel.password" />
	</label>
      <div class="col-sm-4">          
       <!--  <input type="password" class="form-control" id="password" placeholder="Enter password" name="password"> -->
      	<form:password path="password" class="form-control" placeholder="Enter password"/>
      </div>
    </div>
<!--     <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox" name="remember"> Remember me</label>
        </div>
      </div>
    </div> -->
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
       <!--  <button type="submit" class="btn btn-default">Submit</button> -->
       <form:button name="submit" class="btn btn-default" type="submit">Login</form:button>
      </div>
    </div>
  </form:form>
</div>