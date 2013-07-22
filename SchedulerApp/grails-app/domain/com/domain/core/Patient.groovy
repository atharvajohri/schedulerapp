package com.domain.core

class Patient {

	String name
	Date dateOfBirth
	Date dateCreated
	String phone
	String email
	
	static hasOne = [caseSheet: CaseSheet, developmentalSheet: DevelopmentalSheet]
	
	Boolean enabled = true
	
    static constraints = {
		email email:true
		caseSheet unique:true, nullable:true
		developmentalSheet unique:true, nullable:true
		email: nullable:true
		phone unique:true
    }
}
