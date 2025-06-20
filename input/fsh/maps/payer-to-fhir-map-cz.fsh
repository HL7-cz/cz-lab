// -------------------------------------------------------------------------------					
//  Concept Model. File: 					payer-to-fhir-map-cz.fsh
// -------------------------------------------------------------------------------					
Instance: payer2FHIR-cz-lab					
InstanceOf: ConceptMap					
Usage: #definition					
* insert SetFmmandStatusRuleInstance( 2, informative)					
* name = "Payer2Fhir"					
* title = "eHN Payer to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Payer Model to this guide Map"					
* purpose = "It shows how the Laboratory Report Payer data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "https://hl7.cz/fhir/lab/StructureDefinition/PayerCz"					
* targetUri = "https://hl7.cz/fhir/lab/StructureDefinition/cz-bundle-lab"					
					
* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/PayerCz"					
* group[=].target = "https://hl7.cz/fhir/lab/StructureDefinition/cz-service-request-lab"					
								
* group[=].element[+].code = #Payer.identifier					
* group[=].element[=].display = "A.1.3.1 Health insurance code"					
* group[=].element[=].target.code = #ServiceRequest.insurance					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "details in Group 2"		

* group[=].element[+].code = #Payer.name					
* group[=].element[=].display = "A.1.3.2 Health insurance name"					
* group[=].element[=].target.code = #ServiceRequest.insurance					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "details in Group 2"			

* group[=].element[+].code = #Payer.subjectIdentifier					
* group[=].element[=].display = "A.1.3.3 Health insurance number"					
* group[=].element[=].target.code = #ServiceRequest.insurance					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "details in Group 2"					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/PayerCz"					
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Coverage"							
					
* group[=].element[+].code = #Payer.identifier					
* group[=].element[=].display = "A.1.3.1 Health insurance code"					
* group[=].element[=].target.code = #Coverage.payor.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "payor.ofType(Organization)"	

* group[=].element[+].code = #Payer.name					
* group[=].element[=].display = "A.1.3.2 Health insurance name"					
* group[=].element[=].target.code = #Coverage.payor.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "payor.ofType(Organization)"			

* group[=].element[+].code = #Payer.subjectIdentifier					
* group[=].element[=].display = "A.1.3.3 Health insurance number"					
* group[=].element[=].target.code = #Coverage.policyHolder.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it refers to the owner of the policy"	

* group[=].element[+].code = #Payer.subjectIdentifier					
* group[=].element[=].display = "A.1.3.3 Health insurance number"					
* group[=].element[=].target.code = #Coverage.beneficiary.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it refers to the plan beneficiary"		

* group[=].element[+].code = #Payer.subjectIdentifier					
* group[=].element[=].display = "A.1.3.3 Health insurance number"					
* group[=].element[=].target.code = #Coverage.subscriberId					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it is the ID assigned to the subscriber"		
			
* group[=].element[+].code = #Payer.subjectIdentifier					
* group[=].element[=].display = "A.1.3.3 Health insurance number"					
* group[=].element[=].target.code = #Coverage.subscriber.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it refers to the subscriber to the policy and the Subscriber is of type Patient"					
//---END					
//---END					
//---END					
//---END					
					
					
* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/PayerCz"					
* group[=].target = "https://hl7.cz/fhir/lab/StructureDefinition/cz-patient-lab"									
					
* group[=].element[+].code = #Payer.identifier					
* group[=].element[=].display = "A.1.3.1 Health insurance code"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Payer.name					
* group[=].element[=].display = "A.1.3.2 Health insurance name"					
//-- unmatched					
//-- unmatched					
* group[=].element[=].target.equivalence = #unmatched					
					
* group[=].element[+].code = #Payer.subjectIdentifier					
* group[=].element[=].display = "A.1.3.3 Health insurance number"					
* group[=].element[=].target.code = #Patient.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If treated as one of the Patient identifiers; this applies in some jurisdictions"					
//---END					
//---END					
//---END					
//---END					
