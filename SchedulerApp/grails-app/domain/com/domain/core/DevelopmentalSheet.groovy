package com.domain.core

class DevelopmentalSheet {

	Patient patient
	Date dateCreated
	
	Boolean headHolding
	Boolean rollingOver 
	Boolean sittingWithSupport
	Boolean sittingWithoutSupport
	Boolean pivoting
	Boolean crawling
	Boolean standingWithSupport   
	Boolean standingWithoutSupport
	Boolean walkingWithSupport
	Boolean walkingWithoutSupport
	Boolean running
	Boolean climbingStairsOne
	Boolean climbingStairsAlternate
	
	Boolean graspingObjects				
	Boolean transfers
	Boolean handToMouth        
	Boolean feedsSelf           
	Boolean pincerGrasp
	Boolean communicationCooing		
	Boolean babbling			
	Boolean twoSyllables
	
	Boolean twoSyllablesWithMeaning		
	Boolean twoWordSentences                 
	Boolean threeWordSentences
	Boolean vocabulary
	String vocabularyDescription
	Boolean selfCare
	String selfCareDescription
	String developmentalAssessment
	               
	String remarks
	
    static constraints = {
		remarks nullable:true		
    }
	
	@Override
	String toString() {
		return "Developmental Case Sheet for $patient.name"
	}
}
