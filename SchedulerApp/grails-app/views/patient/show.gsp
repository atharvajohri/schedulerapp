
<%@ page import="com.domain.core.Patient" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-patient" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-patient" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list patient">
			
				<g:if test="${patientInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="patient.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${patientInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.caseSheet}">
				<li class="fieldcontain">
					<span id="caseSheet-label" class="property-label"><g:message code="patient.caseSheet.label" default="Case Sheet" /></span>
					
						<span class="property-value" aria-labelledby="caseSheet-label"><g:link controller="caseSheet" action="show" id="${patientInstance?.caseSheet?.id}">${patientInstance?.caseSheet?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.developmentalSheet}">
				<li class="fieldcontain">
					<span id="developmentalSheet-label" class="property-label"><g:message code="patient.developmentalSheet.label" default="Developmental Sheet" /></span>
					
						<span class="property-value" aria-labelledby="developmentalSheet-label"><g:link controller="developmentalSheet" action="show" id="${patientInstance?.developmentalSheet?.id}">${patientInstance?.developmentalSheet?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="patient.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${patientInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="patient.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${patientInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="patient.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${patientInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="patient.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${patientInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="patient.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${patientInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${patientInstance?.id}" />
					<g:link class="edit" action="edit" id="${patientInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
