
<%@ page import="com.domain.core.DevelopmentalSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'developmentalSheet.label', default: 'DevelopmentalSheet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-developmentalSheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-developmentalSheet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list developmentalSheet">
			
				<g:if test="${developmentalSheetInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="developmentalSheet.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${developmentalSheetInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.babbling}">
				<li class="fieldcontain">
					<span id="babbling-label" class="property-label"><g:message code="developmentalSheet.babbling.label" default="Babbling" /></span>
					
						<span class="property-value" aria-labelledby="babbling-label"><g:formatBoolean boolean="${developmentalSheetInstance?.babbling}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.climbingStairsAlternate}">
				<li class="fieldcontain">
					<span id="climbingStairsAlternate-label" class="property-label"><g:message code="developmentalSheet.climbingStairsAlternate.label" default="Climbing Stairs Alternate" /></span>
					
						<span class="property-value" aria-labelledby="climbingStairsAlternate-label"><g:formatBoolean boolean="${developmentalSheetInstance?.climbingStairsAlternate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.climbingStairsOne}">
				<li class="fieldcontain">
					<span id="climbingStairsOne-label" class="property-label"><g:message code="developmentalSheet.climbingStairsOne.label" default="Climbing Stairs One" /></span>
					
						<span class="property-value" aria-labelledby="climbingStairsOne-label"><g:formatBoolean boolean="${developmentalSheetInstance?.climbingStairsOne}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.communicationCooing}">
				<li class="fieldcontain">
					<span id="communicationCooing-label" class="property-label"><g:message code="developmentalSheet.communicationCooing.label" default="Communication Cooing" /></span>
					
						<span class="property-value" aria-labelledby="communicationCooing-label"><g:formatBoolean boolean="${developmentalSheetInstance?.communicationCooing}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.crawling}">
				<li class="fieldcontain">
					<span id="crawling-label" class="property-label"><g:message code="developmentalSheet.crawling.label" default="Crawling" /></span>
					
						<span class="property-value" aria-labelledby="crawling-label"><g:formatBoolean boolean="${developmentalSheetInstance?.crawling}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="developmentalSheet.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${developmentalSheetInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.developmentalAssessment}">
				<li class="fieldcontain">
					<span id="developmentalAssessment-label" class="property-label"><g:message code="developmentalSheet.developmentalAssessment.label" default="Developmental Assessment" /></span>
					
						<span class="property-value" aria-labelledby="developmentalAssessment-label"><g:fieldValue bean="${developmentalSheetInstance}" field="developmentalAssessment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.feedsSelf}">
				<li class="fieldcontain">
					<span id="feedsSelf-label" class="property-label"><g:message code="developmentalSheet.feedsSelf.label" default="Feeds Self" /></span>
					
						<span class="property-value" aria-labelledby="feedsSelf-label"><g:formatBoolean boolean="${developmentalSheetInstance?.feedsSelf}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.graspingObjects}">
				<li class="fieldcontain">
					<span id="graspingObjects-label" class="property-label"><g:message code="developmentalSheet.graspingObjects.label" default="Grasping Objects" /></span>
					
						<span class="property-value" aria-labelledby="graspingObjects-label"><g:formatBoolean boolean="${developmentalSheetInstance?.graspingObjects}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.handToMouth}">
				<li class="fieldcontain">
					<span id="handToMouth-label" class="property-label"><g:message code="developmentalSheet.handToMouth.label" default="Hand To Mouth" /></span>
					
						<span class="property-value" aria-labelledby="handToMouth-label"><g:formatBoolean boolean="${developmentalSheetInstance?.handToMouth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.headHolding}">
				<li class="fieldcontain">
					<span id="headHolding-label" class="property-label"><g:message code="developmentalSheet.headHolding.label" default="Head Holding" /></span>
					
						<span class="property-value" aria-labelledby="headHolding-label"><g:formatBoolean boolean="${developmentalSheetInstance?.headHolding}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.patient}">
				<li class="fieldcontain">
					<span id="patient-label" class="property-label"><g:message code="developmentalSheet.patient.label" default="Patient" /></span>
					
						<span class="property-value" aria-labelledby="patient-label"><g:link controller="patient" action="show" id="${developmentalSheetInstance?.patient?.id}">${developmentalSheetInstance?.patient?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.pincerGrasp}">
				<li class="fieldcontain">
					<span id="pincerGrasp-label" class="property-label"><g:message code="developmentalSheet.pincerGrasp.label" default="Pincer Grasp" /></span>
					
						<span class="property-value" aria-labelledby="pincerGrasp-label"><g:formatBoolean boolean="${developmentalSheetInstance?.pincerGrasp}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.pivoting}">
				<li class="fieldcontain">
					<span id="pivoting-label" class="property-label"><g:message code="developmentalSheet.pivoting.label" default="Pivoting" /></span>
					
						<span class="property-value" aria-labelledby="pivoting-label"><g:formatBoolean boolean="${developmentalSheetInstance?.pivoting}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.rollingOver}">
				<li class="fieldcontain">
					<span id="rollingOver-label" class="property-label"><g:message code="developmentalSheet.rollingOver.label" default="Rolling Over" /></span>
					
						<span class="property-value" aria-labelledby="rollingOver-label"><g:formatBoolean boolean="${developmentalSheetInstance?.rollingOver}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.running}">
				<li class="fieldcontain">
					<span id="running-label" class="property-label"><g:message code="developmentalSheet.running.label" default="Running" /></span>
					
						<span class="property-value" aria-labelledby="running-label"><g:formatBoolean boolean="${developmentalSheetInstance?.running}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.selfCare}">
				<li class="fieldcontain">
					<span id="selfCare-label" class="property-label"><g:message code="developmentalSheet.selfCare.label" default="Self Care" /></span>
					
						<span class="property-value" aria-labelledby="selfCare-label"><g:formatBoolean boolean="${developmentalSheetInstance?.selfCare}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.selfCareDescription}">
				<li class="fieldcontain">
					<span id="selfCareDescription-label" class="property-label"><g:message code="developmentalSheet.selfCareDescription.label" default="Self Care Description" /></span>
					
						<span class="property-value" aria-labelledby="selfCareDescription-label"><g:fieldValue bean="${developmentalSheetInstance}" field="selfCareDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.sittingWithSupport}">
				<li class="fieldcontain">
					<span id="sittingWithSupport-label" class="property-label"><g:message code="developmentalSheet.sittingWithSupport.label" default="Sitting With Support" /></span>
					
						<span class="property-value" aria-labelledby="sittingWithSupport-label"><g:formatBoolean boolean="${developmentalSheetInstance?.sittingWithSupport}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.sittingWithoutSupport}">
				<li class="fieldcontain">
					<span id="sittingWithoutSupport-label" class="property-label"><g:message code="developmentalSheet.sittingWithoutSupport.label" default="Sitting Without Support" /></span>
					
						<span class="property-value" aria-labelledby="sittingWithoutSupport-label"><g:formatBoolean boolean="${developmentalSheetInstance?.sittingWithoutSupport}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.standingWithSupport}">
				<li class="fieldcontain">
					<span id="standingWithSupport-label" class="property-label"><g:message code="developmentalSheet.standingWithSupport.label" default="Standing With Support" /></span>
					
						<span class="property-value" aria-labelledby="standingWithSupport-label"><g:formatBoolean boolean="${developmentalSheetInstance?.standingWithSupport}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.standingWithoutSupport}">
				<li class="fieldcontain">
					<span id="standingWithoutSupport-label" class="property-label"><g:message code="developmentalSheet.standingWithoutSupport.label" default="Standing Without Support" /></span>
					
						<span class="property-value" aria-labelledby="standingWithoutSupport-label"><g:formatBoolean boolean="${developmentalSheetInstance?.standingWithoutSupport}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.threeWordSentences}">
				<li class="fieldcontain">
					<span id="threeWordSentences-label" class="property-label"><g:message code="developmentalSheet.threeWordSentences.label" default="Three Word Sentences" /></span>
					
						<span class="property-value" aria-labelledby="threeWordSentences-label"><g:formatBoolean boolean="${developmentalSheetInstance?.threeWordSentences}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.transfers}">
				<li class="fieldcontain">
					<span id="transfers-label" class="property-label"><g:message code="developmentalSheet.transfers.label" default="Transfers" /></span>
					
						<span class="property-value" aria-labelledby="transfers-label"><g:formatBoolean boolean="${developmentalSheetInstance?.transfers}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.twoSyllables}">
				<li class="fieldcontain">
					<span id="twoSyllables-label" class="property-label"><g:message code="developmentalSheet.twoSyllables.label" default="Two Syllables" /></span>
					
						<span class="property-value" aria-labelledby="twoSyllables-label"><g:formatBoolean boolean="${developmentalSheetInstance?.twoSyllables}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.twoSyllablesWithMeaning}">
				<li class="fieldcontain">
					<span id="twoSyllablesWithMeaning-label" class="property-label"><g:message code="developmentalSheet.twoSyllablesWithMeaning.label" default="Two Syllables With Meaning" /></span>
					
						<span class="property-value" aria-labelledby="twoSyllablesWithMeaning-label"><g:formatBoolean boolean="${developmentalSheetInstance?.twoSyllablesWithMeaning}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.twoWordSentences}">
				<li class="fieldcontain">
					<span id="twoWordSentences-label" class="property-label"><g:message code="developmentalSheet.twoWordSentences.label" default="Two Word Sentences" /></span>
					
						<span class="property-value" aria-labelledby="twoWordSentences-label"><g:formatBoolean boolean="${developmentalSheetInstance?.twoWordSentences}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.vocabulary}">
				<li class="fieldcontain">
					<span id="vocabulary-label" class="property-label"><g:message code="developmentalSheet.vocabulary.label" default="Vocabulary" /></span>
					
						<span class="property-value" aria-labelledby="vocabulary-label"><g:formatBoolean boolean="${developmentalSheetInstance?.vocabulary}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.vocabularyDescription}">
				<li class="fieldcontain">
					<span id="vocabularyDescription-label" class="property-label"><g:message code="developmentalSheet.vocabularyDescription.label" default="Vocabulary Description" /></span>
					
						<span class="property-value" aria-labelledby="vocabularyDescription-label"><g:fieldValue bean="${developmentalSheetInstance}" field="vocabularyDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.walkingWithSupport}">
				<li class="fieldcontain">
					<span id="walkingWithSupport-label" class="property-label"><g:message code="developmentalSheet.walkingWithSupport.label" default="Walking With Support" /></span>
					
						<span class="property-value" aria-labelledby="walkingWithSupport-label"><g:formatBoolean boolean="${developmentalSheetInstance?.walkingWithSupport}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${developmentalSheetInstance?.walkingWithoutSupport}">
				<li class="fieldcontain">
					<span id="walkingWithoutSupport-label" class="property-label"><g:message code="developmentalSheet.walkingWithoutSupport.label" default="Walking Without Support" /></span>
					
						<span class="property-value" aria-labelledby="walkingWithoutSupport-label"><g:formatBoolean boolean="${developmentalSheetInstance?.walkingWithoutSupport}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${developmentalSheetInstance?.id}" />
					<g:link class="edit" action="edit" id="${developmentalSheetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
