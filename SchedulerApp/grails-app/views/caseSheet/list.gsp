
<%@ page import="com.domain.core.CaseSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'caseSheet.label', default: 'CaseSheet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-caseSheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-caseSheet" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="antenatalHistory" title="${message(code: 'caseSheet.antenatalHistory.label', default: 'Antenatal History')}" />
					
						<g:sortableColumn property="birthWeight" title="${message(code: 'caseSheet.birthWeight.label', default: 'Birth Weight')}" />
					
						<g:sortableColumn property="complaintsAndHistory" title="${message(code: 'caseSheet.complaintsAndHistory.label', default: 'Complaints And History')}" />
					
						<g:sortableColumn property="consanguinity" title="${message(code: 'caseSheet.consanguinity.label', default: 'Consanguinity')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'caseSheet.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="degree" title="${message(code: 'caseSheet.degree.label', default: 'Degree')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${caseSheetInstanceList}" status="i" var="caseSheetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${caseSheetInstance.id}">${fieldValue(bean: caseSheetInstance, field: "antenatalHistory")}</g:link></td>
					
						<td>${fieldValue(bean: caseSheetInstance, field: "birthWeight")}</td>
					
						<td>${fieldValue(bean: caseSheetInstance, field: "complaintsAndHistory")}</td>
					
						<td><g:formatBoolean boolean="${caseSheetInstance.consanguinity}" /></td>
					
						<td><g:formatDate date="${caseSheetInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: caseSheetInstance, field: "degree")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${caseSheetInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
