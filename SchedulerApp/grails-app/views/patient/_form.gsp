<%@ page import="com.domain.core.Patient" %>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="patient.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${patientInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="patient.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${patientInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="patient.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${patientInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'caseSheet', 'error')}">
	<label for="caseSheet">
		<g:message code="patient.caseSheet.label" default="Case Sheet" />
	</label>
	<g:select id="caseSheet" name="caseSheet.id" from="${com.domain.core.CaseSheet.list()}" optionKey="id" required="" value="${patientInstance?.caseSheet?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'developmentalSheet', 'error')}">
	<label for="developmentalSheet">
		<g:message code="patient.developmentalSheet.label" default="Developmental Sheet" />
	</label>
	<g:select id="developmentalSheet" name="developmentalSheet.id" from="${com.domain.core.DevelopmentalSheet.list()}" optionKey="id" required="" value="${patientInstance?.developmentalSheet?.id}" class="many-to-one"/>
	<a href="${g.createLink(controller:'DevelopmentalSheet',action:'create')}">	Create</a>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'dateOfBirth', 'error')} required">
	<label for="dateOfBirth">
		<g:message code="patient.dateOfBirth.label" default="Date Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${patientInstance?.dateOfBirth}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="patient.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${patientInstance?.enabled}" />
</div>


