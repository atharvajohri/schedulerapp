package com.domain.core

class CaseSheet {
	
	Patient patient
	
	String informant
	String reliability
	String complaintsAndHistory
	String pastHistory
	
	String antenatalHistory
	String drugs
	String irradiation
	String illness
	String otherAntenatalHistory
	
	String internatalHistory
	String modeOfDelivery
	String ifLSCSIndication
	Date timeOfCry
	String resuscitationRequirement
	String birthWeight
	
	String neonatalPeriod
	String infancyAndChildhood
	
	String familyHistory
	Boolean consanguinity
	String degree
	String mentalRetardation
	String seizures
	String neurologicalIllness
	String otherFamilyHistory
	
	Date dateCreated

    static constraints = {
    }
	
	@Override
	String toString() {
		return "Case Sheet for $patient.name"
	}
}
