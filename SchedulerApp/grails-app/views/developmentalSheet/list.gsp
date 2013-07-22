
<%@ page import="com.domain.core.DevelopmentalSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'developmentalSheet.label', default: 'DevelopmentalSheet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-developmentalSheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-developmentalSheet" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="remarks" title="${message(code: 'developmentalSheet.remarks.label', default: 'Remarks')}" />
					
						<g:sortableColumn property="babbling" title="${message(code: 'developmentalSheet.babbling.label', default: 'Babbling')}" />
					
						<g:sortableColumn property="climbingStairsAlternate" title="${message(code: 'developmentalSheet.climbingStairsAlternate.label', default: 'Climbing Stairs Alternate')}" />
					
						<g:sortableColumn property="climbingStairsOne" title="${message(code: 'developmentalSheet.climbingStairsOne.label', default: 'Climbing Stairs One')}" />
					
						<g:sortableColumn property="communicationCooing" title="${message(code: 'developmentalSheet.communicationCooing.label', default: 'Communication Cooing')}" />
					
						<g:sortableColumn property="crawling" title="${message(code: 'developmentalSheet.crawling.label', default: 'Crawling')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${developmentalSheetInstanceList}" status="i" var="developmentalSheetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${developmentalSheetInstance.id}">${fieldValue(bean: developmentalSheetInstance, field: "remarks")}</g:link></td>
					
						<td><g:formatBoolean boolean="${developmentalSheetInstance.babbling}" /></td>
					
						<td><g:formatBoolean boolean="${developmentalSheetInstance.climbingStairsAlternate}" /></td>
					
						<td><g:formatBoolean boolean="${developmentalSheetInstance.climbingStairsOne}" /></td>
					
						<td><g:formatBoolean boolean="${developmentalSheetInstance.communicationCooing}" /></td>
					
						<td><g:formatBoolean boolean="${developmentalSheetInstance.crawling}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${developmentalSheetInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
