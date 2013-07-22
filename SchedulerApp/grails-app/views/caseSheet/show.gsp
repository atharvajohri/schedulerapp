
<%@ page import="com.domain.core.CaseSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'caseSheet.label', default: 'CaseSheet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-caseSheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-caseSheet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list caseSheet">
			
				<g:if test="${caseSheetInstance?.antenatalHistory}">
				<li class="fieldcontain">
					<span id="antenatalHistory-label" class="property-label"><g:message code="caseSheet.antenatalHistory.label" default="Antenatal History" /></span>
					
						<span class="property-value" aria-labelledby="antenatalHistory-label"><g:fieldValue bean="${caseSheetInstance}" field="antenatalHistory"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.birthWeight}">
				<li class="fieldcontain">
					<span id="birthWeight-label" class="property-label"><g:message code="caseSheet.birthWeight.label" default="Birth Weight" /></span>
					
						<span class="property-value" aria-labelledby="birthWeight-label"><g:fieldValue bean="${caseSheetInstance}" field="birthWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.complaintsAndHistory}">
				<li class="fieldcontain">
					<span id="complaintsAndHistory-label" class="property-label"><g:message code="caseSheet.complaintsAndHistory.label" default="Complaints And History" /></span>
					
						<span class="property-value" aria-labelledby="complaintsAndHistory-label"><g:fieldValue bean="${caseSheetInstance}" field="complaintsAndHistory"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.consanguinity}">
				<li class="fieldcontain">
					<span id="consanguinity-label" class="property-label"><g:message code="caseSheet.consanguinity.label" default="Consanguinity" /></span>
					
						<span class="property-value" aria-labelledby="consanguinity-label"><g:formatBoolean boolean="${caseSheetInstance?.consanguinity}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="caseSheet.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${caseSheetInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.degree}">
				<li class="fieldcontain">
					<span id="degree-label" class="property-label"><g:message code="caseSheet.degree.label" default="Degree" /></span>
					
						<span class="property-value" aria-labelledby="degree-label"><g:fieldValue bean="${caseSheetInstance}" field="degree"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.drugs}">
				<li class="fieldcontain">
					<span id="drugs-label" class="property-label"><g:message code="caseSheet.drugs.label" default="Drugs" /></span>
					
						<span class="property-value" aria-labelledby="drugs-label"><g:fieldValue bean="${caseSheetInstance}" field="drugs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.familyHistory}">
				<li class="fieldcontain">
					<span id="familyHistory-label" class="property-label"><g:message code="caseSheet.familyHistory.label" default="Family History" /></span>
					
						<span class="property-value" aria-labelledby="familyHistory-label"><g:fieldValue bean="${caseSheetInstance}" field="familyHistory"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.ifLSCSIndication}">
				<li class="fieldcontain">
					<span id="ifLSCSIndication-label" class="property-label"><g:message code="caseSheet.ifLSCSIndication.label" default="If LSCSI ndication" /></span>
					
						<span class="property-value" aria-labelledby="ifLSCSIndication-label"><g:fieldValue bean="${caseSheetInstance}" field="ifLSCSIndication"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.illness}">
				<li class="fieldcontain">
					<span id="illness-label" class="property-label"><g:message code="caseSheet.illness.label" default="Illness" /></span>
					
						<span class="property-value" aria-labelledby="illness-label"><g:fieldValue bean="${caseSheetInstance}" field="illness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.infancyAndChildhood}">
				<li class="fieldcontain">
					<span id="infancyAndChildhood-label" class="property-label"><g:message code="caseSheet.infancyAndChildhood.label" default="Infancy And Childhood" /></span>
					
						<span class="property-value" aria-labelledby="infancyAndChildhood-label"><g:fieldValue bean="${caseSheetInstance}" field="infancyAndChildhood"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.informant}">
				<li class="fieldcontain">
					<span id="informant-label" class="property-label"><g:message code="caseSheet.informant.label" default="Informant" /></span>
					
						<span class="property-value" aria-labelledby="informant-label"><g:fieldValue bean="${caseSheetInstance}" field="informant"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.internatalHistory}">
				<li class="fieldcontain">
					<span id="internatalHistory-label" class="property-label"><g:message code="caseSheet.internatalHistory.label" default="Internatal History" /></span>
					
						<span class="property-value" aria-labelledby="internatalHistory-label"><g:fieldValue bean="${caseSheetInstance}" field="internatalHistory"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.irradiation}">
				<li class="fieldcontain">
					<span id="irradiation-label" class="property-label"><g:message code="caseSheet.irradiation.label" default="Irradiation" /></span>
					
						<span class="property-value" aria-labelledby="irradiation-label"><g:fieldValue bean="${caseSheetInstance}" field="irradiation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.mentalRetardation}">
				<li class="fieldcontain">
					<span id="mentalRetardation-label" class="property-label"><g:message code="caseSheet.mentalRetardation.label" default="Mental Retardation" /></span>
					
						<span class="property-value" aria-labelledby="mentalRetardation-label"><g:fieldValue bean="${caseSheetInstance}" field="mentalRetardation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.modeOfDelivery}">
				<li class="fieldcontain">
					<span id="modeOfDelivery-label" class="property-label"><g:message code="caseSheet.modeOfDelivery.label" default="Mode Of Delivery" /></span>
					
						<span class="property-value" aria-labelledby="modeOfDelivery-label"><g:fieldValue bean="${caseSheetInstance}" field="modeOfDelivery"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.neonatalPeriod}">
				<li class="fieldcontain">
					<span id="neonatalPeriod-label" class="property-label"><g:message code="caseSheet.neonatalPeriod.label" default="Neonatal Period" /></span>
					
						<span class="property-value" aria-labelledby="neonatalPeriod-label"><g:fieldValue bean="${caseSheetInstance}" field="neonatalPeriod"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.neurologicalIllness}">
				<li class="fieldcontain">
					<span id="neurologicalIllness-label" class="property-label"><g:message code="caseSheet.neurologicalIllness.label" default="Neurological Illness" /></span>
					
						<span class="property-value" aria-labelledby="neurologicalIllness-label"><g:fieldValue bean="${caseSheetInstance}" field="neurologicalIllness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.otherAntenatalHistory}">
				<li class="fieldcontain">
					<span id="otherAntenatalHistory-label" class="property-label"><g:message code="caseSheet.otherAntenatalHistory.label" default="Other Antenatal History" /></span>
					
						<span class="property-value" aria-labelledby="otherAntenatalHistory-label"><g:fieldValue bean="${caseSheetInstance}" field="otherAntenatalHistory"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.otherFamilyHistory}">
				<li class="fieldcontain">
					<span id="otherFamilyHistory-label" class="property-label"><g:message code="caseSheet.otherFamilyHistory.label" default="Other Family History" /></span>
					
						<span class="property-value" aria-labelledby="otherFamilyHistory-label"><g:fieldValue bean="${caseSheetInstance}" field="otherFamilyHistory"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.pastHistory}">
				<li class="fieldcontain">
					<span id="pastHistory-label" class="property-label"><g:message code="caseSheet.pastHistory.label" default="Past History" /></span>
					
						<span class="property-value" aria-labelledby="pastHistory-label"><g:fieldValue bean="${caseSheetInstance}" field="pastHistory"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.patient}">
				<li class="fieldcontain">
					<span id="patient-label" class="property-label"><g:message code="caseSheet.patient.label" default="Patient" /></span>
					
						<span class="property-value" aria-labelledby="patient-label"><g:link controller="patient" action="show" id="${caseSheetInstance?.patient?.id}">${caseSheetInstance?.patient?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.reliability}">
				<li class="fieldcontain">
					<span id="reliability-label" class="property-label"><g:message code="caseSheet.reliability.label" default="Reliability" /></span>
					
						<span class="property-value" aria-labelledby="reliability-label"><g:fieldValue bean="${caseSheetInstance}" field="reliability"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.resuscitationRequirement}">
				<li class="fieldcontain">
					<span id="resuscitationRequirement-label" class="property-label"><g:message code="caseSheet.resuscitationRequirement.label" default="Resuscitation Requirement" /></span>
					
						<span class="property-value" aria-labelledby="resuscitationRequirement-label"><g:fieldValue bean="${caseSheetInstance}" field="resuscitationRequirement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.seizures}">
				<li class="fieldcontain">
					<span id="seizures-label" class="property-label"><g:message code="caseSheet.seizures.label" default="Seizures" /></span>
					
						<span class="property-value" aria-labelledby="seizures-label"><g:fieldValue bean="${caseSheetInstance}" field="seizures"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caseSheetInstance?.timeOfCry}">
				<li class="fieldcontain">
					<span id="timeOfCry-label" class="property-label"><g:message code="caseSheet.timeOfCry.label" default="Time Of Cry" /></span>
					
						<span class="property-value" aria-labelledby="timeOfCry-label"><g:formatDate date="${caseSheetInstance?.timeOfCry}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${caseSheetInstance?.id}" />
					<g:link class="edit" action="edit" id="${caseSheetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
