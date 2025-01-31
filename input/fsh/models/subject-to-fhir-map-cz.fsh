// -------------------------------------------------------------------------------					
//  Concept Model. File: 					subject-to-fhir-map-cz.fsh
// -------------------------------------------------------------------------------					
Instance: subject2FHIR-cz-lab					
InstanceOf: ConceptMap					
Usage: #definition					

* insert SetFmmandStatusRuleInstance( 2, informative)						
* name = "LabRptSubject2Fhir"					
* title = "eHN Subject to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Subject Model to this guide Map"					
* purpose = "It shows how the Laboratory Report Subject data set defined by the CZ eHN guidelines is mapped into this guide"					
* sourceUri = "http://hl7.cz/fhir/laboratory/StructureDefinition/Subject"					
* targetUri = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"					
					
* group[+].source = "http://hl7.cz/fhir/laboratory/StructureDefinition/Subject"					
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"					
					
* group[=].element[+].code = #Subject.identification					
* group[=].element[=].display = "A.1.1 Identification of the patient/subject"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	

* group[=].element[+].code = #Subject.identification.givenName					
* group[=].element[=].display = "A.1.1.1 Given name"					
* group[=].element[=].target.code = #Patient.name.given					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent				
					
* group[=].element[+].code = #Subject.identification.familyName					
* group[=].element[=].display = "A.1.1.2 Familyname/surname"					
* group[=].element[=].target.code = #Patient.name.family					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
							
* group[=].element[+].code = #Subject.identification.dateOfBirth					
* group[=].element[=].display = "A.1.1.3 Date of birth"					
* group[=].element[=].target.code = #Patient.birthDate					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.identification.identifier					
* group[=].element[=].display = "A.1.1.4 Patient identifier"					
* group[=].element[=].target.code = #Patient.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	

* group[=].element[+].code = #Subject.identification.citizenship					
* group[=].element[=].display = "A.1.1.5 Citizenship"					
* group[=].element[=].target.code = #Patient.patient-citizenship					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
					
* group[=].element[+].code = #Subject.identification.gender					
* group[=].element[=].display = "A.1.1.6 Gender"					
* group[=].element[=].target.code = #Patient.gender					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	

* group[=].element[+].code = #Subject.identification.languageOfCommunication					
* group[=].element[=].display = "A.1.1.7 Language of communication"					
* group[=].element[=].target.code = #Patient.communication.language					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent
					
* group[=].element[+].code = #Subject.addressTelecom					
* group[=].element[=].display = "A.1.2 Patient/subject related contact information"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #Subject.addressTelecom.address					
* group[=].element[=].display = "A.1.2.1 Address"					
* group[=].element[=].target.code = #Patient.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Subject.addressTelecom.telecom					
* group[=].element[=].display = "A.1.2.2 Telecom"					
* group[=].element[=].target.code = #Patient.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					

* group[=].element[+].code = #Subject.addressTelecom.preferedPhysician					
* group[=].element[=].display = "A.1.2.3 Prefered physician"					
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	

* group[=].element[+].code = #Subject.addressTelecom.preferedPhysician.Identifier		
* group[=].element[=].display = "A.1.2.3.1 Identification of the prefered physician"					
* group[=].element[=].target.code = #Patient.generalPractitioner.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent		

* group[=].element[+].code = #Subject.addressTelecom.preferedPhysician.Name		
* group[=].element[=].display = "A.1.2.3.2 Name of the prefered physician"					
* group[=].element[=].target.code = #Patient.generalPractitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent		

* group[=].element[+].code = #Subject.addressTelecom.preferedPhysician.Specialization		
* group[=].element[=].display = "A.1.2.3.3 Specialization of the prefered physician"					
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto		

* group[=].element[+].code = #Subject.addressTelecom.preferedPhysician.providerIdentifierName		
* group[=].element[=].display = "A.1.2.3.4 Identification and name of the provider the doctor represents"					
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto		

* group[=].element[+].code = #Subject.addressTelecom.preferedPhysician.providerAddress		
* group[=].element[=].display = "A.1.2.3.5 Provider address"					
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto		

* group[=].element[+].code = #Subject.addressTelecom.preferedPhysician.telecom		
* group[=].element[=].display = "A.1.2.3.6 Telecom"					
* group[=].element[=].target.code = #Patient.generalPractitioner.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent		



* group[=].element[+].code = #Subject.legalRepresent					
* group[=].element[=].display = "A.1.2.4 Legal representatives and other contact persons"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto			

* group[=].element[+].code = #Subject.legalRepresent.type					
* group[=].element[=].display = "A.1.2.4.1 Contact type"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	

* group[=].element[+].code = #Subject.legalRepresent.relationToSubject					
* group[=].element[=].display = "A.1.2.4.2 Relationship to the patient"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	

* group[=].element[+].code = #Subject.legalRepresent.identifier					
* group[=].element[=].display = "A.1.2.4.3 Person identifier"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	

* group[=].element[+].code = #Subject.legalRepresent.givenName					
* group[=].element[=].display = "A.1.2.4.4 Given name"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	

* group[=].element[+].code = #Subject.legalRepresent.familyName					
* group[=].element[=].display = "A.1.2.4.5 Family name/surname"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	

* group[=].element[+].code = #Subject.legalRepresent.address					
* group[=].element[=].display = "A.1.2.4.6 Contact person address"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	

* group[=].element[+].code = #Subject.legalRepresent.telecom					
* group[=].element[=].display = "A.1.2.4.7 Telecom"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	

//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
