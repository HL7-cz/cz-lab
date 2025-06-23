// -------------------------------------------------------------------------------					
//  Concept Model. File: 					legalAuth-to-fhir-map-cz.fsh
// -------------------------------------------------------------------------------					
Instance: legalAuth2FHIR-cz-lab					
InstanceOf: ConceptMap					
Usage: #definition					
* insert SetFmmandStatusRuleInstance( 2, informative)					
* name = "LegalAuth2Fhir"					
* title = "eHN Recipient to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Legal Authenticator Model to this guide Map"					
* purpose = "It shows how the Legal Authenticator Recipient data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "https://hl7.cz/fhir/lab/StructureDefinition/LegalAuthenticatorCz"					
* targetUri = "https://hl7.cz/fhir/lab/StructureDefinition/cz-composition-lab-report"					
					
* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/LegalAuthenticatorCz"					
* group[=].target = "https://hl7.cz/fhir/lab/StructureDefinition/cz-composition-lab-report"					
					
* group[=].element[+].code = #LegalAuthenticator.identifier					
* group[=].element[=].display = "A.1.6.1 Legal authenticator identifier"					
* group[=].element[=].target.code = #Composition.attester.party.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='legal')"

* group[=].element[+].code = #LegalAuthenticator.name					
* group[=].element[=].display = "A.1.6.2 Legal authenticator name"					
* group[=].element[=].target.code = #Composition.attester.party.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='legal').party.resolve().ofType(Practitioner).name"			

* group[=].element[+].code = #LegalAuthenticator.name					
* group[=].element[=].display = "A.1.6.2 Legal authenticator name"					
* group[=].element[=].target.code = #Composition.attester.party.Practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='legal').party.resolve().ofType(PractitionerRole).Practitioner.resolve().name"		

* group[=].element[+].code = #LegalAuthenticator.organization					
* group[=].element[=].display = "A.1.6.3 Legal authenticator organization"					
* group[=].element[=].target.code = #Composition.attester.party.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='legal').party.resolve().ofType(PractitionerRole).organization.resolve()"			
		
* group[=].element[+].code = #LegalAuthenticator.dateTime					
* group[=].element[=].display = "A.1.6.4 Authentication date and time"					
* group[=].element[=].target.code = #Composition.attester.time					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='legal').time"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
