// -------------------------------------------------------------------------------					
//  Concept Model. File: 					validator-to-fhir-map-cz.fsh
// -------------------------------------------------------------------------------					
Instance: validator2FHIR-cz-lab					
InstanceOf: ConceptMap					
Usage: #definition					
* insert SetFmmandStatusRuleInstance( 2, informative)					
* name = "Validator2Fhir"					
* title = "eHN Validator to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Validator Model to this guide Map"					
* purpose = "It shows how the Validator Recipient data set defined by the EU eHN guidelines is mapped into this guide"					
//* sourceUri = "https://hl7.cz/fhir/lab/StructureDefinition/ValidatorCz"					
//* targetUri = "https://hl7.cz/fhir/lab/StructureDefinition/cz-composition-lab-report"					
					
* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/ValidatorCz"					
* group[=].target = "https://hl7.cz/fhir/lab/StructureDefinition/cz-composition-lab-report"					
					
* group[=].element[+].code = #Validator.identifier					
* group[=].element[=].display = "A.1.6.1 Result validator identifier"					
* group[=].element[=].target.code = #Composition.attester.party.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional')"				

* group[=].element[+].code = #Validator.name					
* group[=].element[=].display = "A.1.6.2 Result validator name"					
* group[=].element[=].target.code = #Composition.attester.party.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional').party.resolve().ofType(Practitioner).name"				

* group[=].element[+].code = #Validator.name					
* group[=].element[=].display = "A.1.6.2 Result validator name"					
* group[=].element[=].target.code = #Composition.attester.party.Practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional').party.resolve().ofType(PractitionerRole).Practitioner.resolve().name"		

* group[=].element[+].code = #Validator.organizationIdentifier					
* group[=].element[=].display = "A.1.6.3 Result validator organisation identifier"					
* group[=].element[=].target.code = #Composition.attester.party.organization.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
	
* group[=].element[+].code = #Validator.organization					
* group[=].element[=].display = "A.1.6.4 Result validator organisation"					
* group[=].element[=].target.code = #Composition.attester.party.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional').party.resolve().ofType(PractitionerRole).organization.resolve()"			

* group[=].element[+].code = #Validator.dateTime					
* group[=].element[=].display = "A.1.6.5 Validation date and time"					
* group[=].element[=].target.code = #Composition.attester.time					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "attester.where(mode='professional').time"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
