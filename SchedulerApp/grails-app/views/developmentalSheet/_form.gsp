<%@ page import="com.domain.core.DevelopmentalSheet" %>



<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="developmentalSheet.remarks.label" default="Remarks" />
		
	</label>
	<g:textField name="remarks" value="${developmentalSheetInstance?.remarks}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'babbling', 'error')} ">
	<label for="babbling">
		<g:message code="developmentalSheet.babbling.label" default="Babbling" />
		
	</label>
	<g:checkBox name="babbling" value="${developmentalSheetInstance?.babbling}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'climbingStairsAlternate', 'error')} ">
	<label for="climbingStairsAlternate">
		<g:message code="developmentalSheet.climbingStairsAlternate.label" default="Climbing Stairs Alternate" />
		
	</label>
	<g:checkBox name="climbingStairsAlternate" value="${developmentalSheetInstance?.climbingStairsAlternate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'climbingStairsOne', 'error')} ">
	<label for="climbingStairsOne">
		<g:message code="developmentalSheet.climbingStairsOne.label" default="Climbing Stairs One" />
		
	</label>
	<g:checkBox name="climbingStairsOne" value="${developmentalSheetInstance?.climbingStairsOne}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'communicationCooing', 'error')} ">
	<label for="communicationCooing">
		<g:message code="developmentalSheet.communicationCooing.label" default="Communication Cooing" />
		
	</label>
	<g:checkBox name="communicationCooing" value="${developmentalSheetInstance?.communicationCooing}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'crawling', 'error')} ">
	<label for="crawling">
		<g:message code="developmentalSheet.crawling.label" default="Crawling" />
		
	</label>
	<g:checkBox name="crawling" value="${developmentalSheetInstance?.crawling}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'developmentalAssessment', 'error')} ">
	<label for="developmentalAssessment">
		<g:message code="developmentalSheet.developmentalAssessment.label" default="Developmental Assessment" />
		
	</label>
	<g:textField name="developmentalAssessment" value="${developmentalSheetInstance?.developmentalAssessment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'feedsSelf', 'error')} ">
	<label for="feedsSelf">
		<g:message code="developmentalSheet.feedsSelf.label" default="Feeds Self" />
		
	</label>
	<g:checkBox name="feedsSelf" value="${developmentalSheetInstance?.feedsSelf}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'graspingObjects', 'error')} ">
	<label for="graspingObjects">
		<g:message code="developmentalSheet.graspingObjects.label" default="Grasping Objects" />
		
	</label>
	<g:checkBox name="graspingObjects" value="${developmentalSheetInstance?.graspingObjects}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'handToMouth', 'error')} ">
	<label for="handToMouth">
		<g:message code="developmentalSheet.handToMouth.label" default="Hand To Mouth" />
		
	</label>
	<g:checkBox name="handToMouth" value="${developmentalSheetInstance?.handToMouth}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'headHolding', 'error')} ">
	<label for="headHolding">
		<g:message code="developmentalSheet.headHolding.label" default="Head Holding" />
		
	</label>
	<g:checkBox name="headHolding" value="${developmentalSheetInstance?.headHolding}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'patient', 'error')} required">
	<label for="patient">
		<g:message code="developmentalSheet.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="patient" name="patient.id" from="${com.domain.core.Patient.list()}" optionKey="id" required="" value="${developmentalSheetInstance?.patient?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'pincerGrasp', 'error')} ">
	<label for="pincerGrasp">
		<g:message code="developmentalSheet.pincerGrasp.label" default="Pincer Grasp" />
		
	</label>
	<g:checkBox name="pincerGrasp" value="${developmentalSheetInstance?.pincerGrasp}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'pivoting', 'error')} ">
	<label for="pivoting">
		<g:message code="developmentalSheet.pivoting.label" default="Pivoting" />
		
	</label>
	<g:checkBox name="pivoting" value="${developmentalSheetInstance?.pivoting}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'rollingOver', 'error')} ">
	<label for="rollingOver">
		<g:message code="developmentalSheet.rollingOver.label" default="Rolling Over" />
		
	</label>
	<g:checkBox name="rollingOver" value="${developmentalSheetInstance?.rollingOver}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'running', 'error')} ">
	<label for="running">
		<g:message code="developmentalSheet.running.label" default="Running" />
		
	</label>
	<g:checkBox name="running" value="${developmentalSheetInstance?.running}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'selfCare', 'error')} ">
	<label for="selfCare">
		<g:message code="developmentalSheet.selfCare.label" default="Self Care" />
		
	</label>
	<g:checkBox name="selfCare" value="${developmentalSheetInstance?.selfCare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'selfCareDescription', 'error')} ">
	<label for="selfCareDescription">
		<g:message code="developmentalSheet.selfCareDescription.label" default="Self Care Description" />
		
	</label>
	<g:textField name="selfCareDescription" value="${developmentalSheetInstance?.selfCareDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'sittingWithSupport', 'error')} ">
	<label for="sittingWithSupport">
		<g:message code="developmentalSheet.sittingWithSupport.label" default="Sitting With Support" />
		
	</label>
	<g:checkBox name="sittingWithSupport" value="${developmentalSheetInstance?.sittingWithSupport}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'sittingWithoutSupport', 'error')} ">
	<label for="sittingWithoutSupport">
		<g:message code="developmentalSheet.sittingWithoutSupport.label" default="Sitting Without Support" />
		
	</label>
	<g:checkBox name="sittingWithoutSupport" value="${developmentalSheetInstance?.sittingWithoutSupport}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'standingWithSupport', 'error')} ">
	<label for="standingWithSupport">
		<g:message code="developmentalSheet.standingWithSupport.label" default="Standing With Support" />
		
	</label>
	<g:checkBox name="standingWithSupport" value="${developmentalSheetInstance?.standingWithSupport}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'standingWithoutSupport', 'error')} ">
	<label for="standingWithoutSupport">
		<g:message code="developmentalSheet.standingWithoutSupport.label" default="Standing Without Support" />
		
	</label>
	<g:checkBox name="standingWithoutSupport" value="${developmentalSheetInstance?.standingWithoutSupport}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'threeWordSentences', 'error')} ">
	<label for="threeWordSentences">
		<g:message code="developmentalSheet.threeWordSentences.label" default="Three Word Sentences" />
		
	</label>
	<g:checkBox name="threeWordSentences" value="${developmentalSheetInstance?.threeWordSentences}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'transfers', 'error')} ">
	<label for="transfers">
		<g:message code="developmentalSheet.transfers.label" default="Transfers" />
		
	</label>
	<g:checkBox name="transfers" value="${developmentalSheetInstance?.transfers}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'twoSyllables', 'error')} ">
	<label for="twoSyllables">
		<g:message code="developmentalSheet.twoSyllables.label" default="Two Syllables" />
		
	</label>
	<g:checkBox name="twoSyllables" value="${developmentalSheetInstance?.twoSyllables}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'twoSyllablesWithMeaning', 'error')} ">
	<label for="twoSyllablesWithMeaning">
		<g:message code="developmentalSheet.twoSyllablesWithMeaning.label" default="Two Syllables With Meaning" />
		
	</label>
	<g:checkBox name="twoSyllablesWithMeaning" value="${developmentalSheetInstance?.twoSyllablesWithMeaning}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'twoWordSentences', 'error')} ">
	<label for="twoWordSentences">
		<g:message code="developmentalSheet.twoWordSentences.label" default="Two Word Sentences" />
		
	</label>
	<g:checkBox name="twoWordSentences" value="${developmentalSheetInstance?.twoWordSentences}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'vocabulary', 'error')} ">
	<label for="vocabulary">
		<g:message code="developmentalSheet.vocabulary.label" default="Vocabulary" />
		
	</label>
	<g:checkBox name="vocabulary" value="${developmentalSheetInstance?.vocabulary}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'vocabularyDescription', 'error')} ">
	<label for="vocabularyDescription">
		<g:message code="developmentalSheet.vocabularyDescription.label" default="Vocabulary Description" />
		
	</label>
	<g:textField name="vocabularyDescription" value="${developmentalSheetInstance?.vocabularyDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'walkingWithSupport', 'error')} ">
	<label for="walkingWithSupport">
		<g:message code="developmentalSheet.walkingWithSupport.label" default="Walking With Support" />
		
	</label>
	<g:checkBox name="walkingWithSupport" value="${developmentalSheetInstance?.walkingWithSupport}" />
</div>

<div class="fieldcontain ${hasErrors(bean: developmentalSheetInstance, field: 'walkingWithoutSupport', 'error')} ">
	<label for="walkingWithoutSupport">
		<g:message code="developmentalSheet.walkingWithoutSupport.label" default="Walking Without Support" />
		
	</label>
	<g:checkBox name="walkingWithoutSupport" value="${developmentalSheetInstance?.walkingWithoutSupport}" />
</div>

