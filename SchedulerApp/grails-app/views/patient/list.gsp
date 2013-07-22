
<%@ page import="com.domain.core.Patient" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-patient" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-patient" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'patient.email.label', default: 'Email')}" />
					
						<th><g:message code="patient.caseSheet.label" default="Case Sheet" /></th>
					
						<th><g:message code="patient.developmentalSheet.label" default="Developmental Sheet" /></th>
					
						<g:sortableColumn property="phone" title="${message(code: 'patient.phone.label', default: 'Phone')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'patient.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="dateOfBirth" title="${message(code: 'patient.dateOfBirth.label', default: 'Date Of Birth')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${patientInstanceList}" status="i" var="patientInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${patientInstance.id}">${fieldValue(bean: patientInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: patientInstance, field: "caseSheet")}</td>
					
						<td>${fieldValue(bean: patientInstance, field: "developmentalSheet")}</td>
					
						<td>${fieldValue(bean: patientInstance, field: "phone")}</td>
					
						<td><g:formatDate date="${patientInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${patientInstance.dateOfBirth}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${patientInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
