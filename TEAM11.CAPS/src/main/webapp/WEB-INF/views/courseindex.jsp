<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:if test="${fn:length(courselst) gt 0 }">
	<table class="table table-striped">
	  		<thead>
				<tr class="listHeading">
					<th><spring:message code="fieldLabel.courseId" /></th>
					<th><spring:message code="fieldLabel.courseName" /></th>
					<th><spring:message code="fieldLabel.courseDesc" /></th>
					<th><spring:message code="caption.edit" /></th>
					<th><spring:message code="caption.delete" /></th>
				</tr>
			</thead>

	  <tbody>
			<c:forEach var="course" items="${courselst }">
			<tr>
		      <th scope="row">${course.courseId}</th>
		      <td>${course.courseName}</td>
		      <td>${course.courseName}</td>
		      <td>@${course.courseDescription}</td>
		      <td align="center"><a
						href="${pageContext.request.contextPath}/admin/role/edit/${role.roleId}.html"><spring:message
								code="caption.edit" /></a></td>
					<td><a
						href="${pageContext.request.contextPath}/admin/role/delete/${role.roleId}.html"><spring:message
								code="caption.detail" /></a></td>
		    </tr>
			</c:forEach>
			</tbody>
	</table>
</c:if>