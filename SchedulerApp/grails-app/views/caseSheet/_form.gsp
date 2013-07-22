<%@ page import="com.domain.core.CaseSheet" %>



<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'antenatalHistory', 'error')} ">
	<label for="antenatalHistory">
		<g:message code="caseSheet.antenatalHistory.label" default="Antenatal History" />
		
	</label>
	<g:textField name="antenatalHistory" value="${caseSheetInstance?.antenatalHistory}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'birthWeight', 'error')} ">
	<label for="birthWeight">
		<g:message code="caseSheet.birthWeight.label" default="Birth Weight" />
		
	</label>
	<g:textField name="birthWeight" value="${caseSheetInstance?.birthWeight}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'complaintsAndHistory', 'error')} ">
	<label for="complaintsAndHistory">
		<g:message code="caseSheet.complaintsAndHistory.label" default="Complaints And History" />
		
	</label>
	<g:textField name="complaintsAndHistory" value="${caseSheetInstance?.complaintsAndHistory}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'consanguinity', 'error')} ">
	<label for="consanguinity">
		<g:message code="caseSheet.consanguinity.label" default="Consanguinity" />
		
	</label>
	<g:checkBox name="consanguinity" value="${caseSheetInstance?.consanguinity}" />
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'degree', 'error')} ">
	<label for="degree">
		<g:message code="caseSheet.degree.label" default="Degree" />
		
	</label>
	<g:textField name="degree" value="${caseSheetInstance?.degree}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'drugs', 'error')} ">
	<label for="drugs">
		<g:message code="caseSheet.drugs.label" default="Drugs" />
		
	</label>
	<g:textField name="drugs" value="${caseSheetInstance?.drugs}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'familyHistory', 'error')} ">
	<label for="familyHistory">
		<g:message code="caseSheet.familyHistory.label" default="Family History" />
		
	</label>
	<g:textField name="familyHistory" value="${caseSheetInstance?.familyHistory}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'ifLSCSIndication', 'error')} ">
	<label for="ifLSCSIndication">
		<g:message code="caseSheet.ifLSCSIndication.label" default="If LSCSI ndication" />
		
	</label>
	<g:textField name="ifLSCSIndication" value="${caseSheetInstance?.ifLSCSIndication}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'illness', 'error')} ">
	<label for="illness">
		<g:message code="caseSheet.illness.label" default="Illness" />
		
	</label>
	<g:textField name="illness" value="${caseSheetInstance?.illness}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'infancyAndChildhood', 'error')} ">
	<label for="infancyAndChildhood">
		<g:message code="caseSheet.infancyAndChildhood.label" default="Infancy And Childhood" />
		
	</label>
	<g:textField name="infancyAndChildhood" value="${caseSheetInstance?.infancyAndChildhood}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'informant', 'error')} ">
	<label for="informant">
		<g:message code="caseSheet.informant.label" default="Informant" />
		
	</label>
	<g:textField name="informant" value="${caseSheetInstance?.informant}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'internatalHistory', 'error')} ">
	<label for="internatalHistory">
		<g:message code="caseSheet.internatalHistory.label" default="Internatal History" />
		
	</label>
	<g:textField name="internatalHistory" value="${caseSheetInstance?.internatalHistory}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'irradiation', 'error')} ">
	<label for="irradiation">
		<g:message code="caseSheet.irradiation.label" default="Irradiation" />
		
	</label>
	<g:textField name="irradiation" value="${caseSheetInstance?.irradiation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'mentalRetardation', 'error')} ">
	<label for="mentalRetardation">
		<g:message code="caseSheet.mentalRetardation.label" default="Mental Retardation" />
		
	</label>
	<g:textField name="mentalRetardation" value="${caseSheetInstance?.mentalRetardation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'modeOfDelivery', 'error')} ">
	<label for="modeOfDelivery">
		<g:message code="caseSheet.modeOfDelivery.label" default="Mode Of Delivery" />
		
	</label>
	<g:textField name="modeOfDelivery" value="${caseSheetInstance?.modeOfDelivery}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'neonatalPeriod', 'error')} ">
	<label for="neonatalPeriod">
		<g:message code="caseSheet.neonatalPeriod.label" default="Neonatal Period" />
		
	</label>
	<g:textField name="neonatalPeriod" value="${caseSheetInstance?.neonatalPeriod}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'neurologicalIllness', 'error')} ">
	<label for="neurologicalIllness">
		<g:message code="caseSheet.neurologicalIllness.label" default="Neurological Illness" />
		
	</label>
	<g:textField name="neurologicalIllness" value="${caseSheetInstance?.neurologicalIllness}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'otherAntenatalHistory', 'error')} ">
	<label for="otherAntenatalHistory">
		<g:message code="caseSheet.otherAntenatalHistory.label" default="Other Antenatal History" />
		
	</label>
	<g:textField name="otherAntenatalHistory" value="${caseSheetInstance?.otherAntenatalHistory}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'otherFamilyHistory', 'error')} ">
	<label for="otherFamilyHistory">
		<g:message code="caseSheet.otherFamilyHistory.label" default="Other Family History" />
		
	</label>
	<g:textField name="otherFamilyHistory" value="${caseSheetInstance?.otherFamilyHistory}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'pastHistory', 'error')} ">
	<label for="pastHistory">
		<g:message code="caseSheet.pastHistory.label" default="Past History" />
		
	</label>
	<g:textField name="pastHistory" value="${caseSheetInstance?.pastHistory}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'patient', 'error')} required">
	<label for="patient">
		<g:message code="caseSheet.patient.label" default="Patient" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="patient" name="patient.id" from="${com.domain.core.Patient.list()}" optionKey="id" required="" value="${caseSheetInstance?.patient?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'reliability', 'error')} ">
	<label for="reliability">
		<g:message code="caseSheet.reliability.label" default="Reliability" />
		
	</label>
	<g:textField name="reliability" value="${caseSheetInstance?.reliability}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'resuscitationRequirement', 'error')} ">
	<label for="resuscitationRequirement">
		<g:message code="caseSheet.resuscitationRequirement.label" default="Resuscitation Requirement" />
		
	</label>
	<g:textField name="resuscitationRequirement" value="${caseSheetInstance?.resuscitationRequirement}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'seizures', 'error')} ">
	<label for="seizures">
		<g:message code="caseSheet.seizures.label" default="Seizures" />
		
	</label>
	<g:textField name="seizures" value="${caseSheetInstance?.seizures}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: caseSheetInstance, field: 'timeOfCry', 'error')} required">
	<label for="timeOfCry">
		<g:message code="caseSheet.timeOfCry.label" default="Time Of Cry" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="timeOfCry" precision="day"  value="${caseSheetInstance?.timeOfCry}"  />
</div>

