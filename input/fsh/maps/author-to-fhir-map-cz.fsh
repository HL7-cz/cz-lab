// -------------------------------------------------------------------------------					
//  Concept Model. File: 					author-to-fhir-ma-cz.fsh
// -------------------------------------------------------------------------------					
Instance: author2FHIR-cz-lab					
InstanceOf: ConceptMap					
Usage: #definition					

* insert SetFmmandStatusRuleInstance ( 2, informative)	
* name = "LabRptAuthor2FHIR"					
* title = "eHN Author to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Author Model to this guide Map"					
* purpose = "It shows how the Laboratory Report Author data set defined by the EU eHN guidelines is mapped into this guide"					
//* sourceUri = "https://hl7.cz/fhir/lab/StructureDefinition/AuthorCz"					
//* targetUri = "https://hl7.cz/fhir/lab/StructureDefinition/cz-bundle-lab"			
					
* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/AuthorCz"					
* group[=].target = "https://hl7.cz/fhir/lab/StructureDefinition/cz-composition-lab-report"					
					
* group[=].element[+].code = #Author.identifier					
* group[=].element[=].display = "A.1.5.1 Author identifier"					
* group[=].element[=].target.code = #Composition.author.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "A.1.5.2 Author name"					
* group[=].element[=].target.code = #Composition.author.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Human Author and author.ofType(Practitioner)"					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "A.1.5.2 Author name"					
* group[=].element[=].target.code = #Composition.author.Practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Human Author and  author.ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "A.1.5.2 Author name"					
* group[=].element[=].target.code = #Composition.device.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Device Author, implies author.ofType(Device)"	

* group[=].element[+].code = #Author.organizationIdentifier					
* group[=].element[=].display = "A.1.5.3 Author organization identifier"					
* group[=].element[=].target.code = #Composition.author.organization.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Author.organization					
* group[=].element[=].display = "A.1.5.4 Author organization"					
* group[=].element[=].target.code = #Composition.author.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent				
* group[=].element[=].target.comment = "Human Author and author.ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.organization					
* group[=].element[=].display = "A.1.5.4 Author organization"					
* group[=].element[=].target.code = #Composition.author.owner					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Device Author, implies author.ofType(Device)"		

* group[=].element[+].code = #Author.organization.dateOfSaving					
* group[=].element[=].display = "A.1.5.5 Date and time of saving."					
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	


//---END					
//---END					
//---END					
//---END					
//---END					
					
* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/AuthorCz"					
* group[=].target = "https://hl7.cz/fhir/lab/StructureDefinition/cz-diagnostic-report-lab"					
					
* group[=].element[+].code = #Author.identifier					
* group[=].element[=].display = "A.1.5.1 Author identifier"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter"			
* group[=].element[+].code = #Author.identifier					
* group[=].element[=].display = "A.1.5.1 Author identifier"					
* group[=].element[=].target.code = #DiagnosticReport.performer.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer"			

* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "A.1.5.2 Author name"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter and 
resultsInterpreter.resolve().ofType(Practitioner)"					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "A.1.5.2 Author name"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter and resultsInterpreter.resolve().ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "A.1.5.2 Author name"					
* group[=].element[=].target.code = #DiagnosticReport.performer.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer and performer.resolve().ofType(Practitioner)"					
* group[=].element[+].code = #Author.name					
* group[=].element[=].display = "A.1.5.2 Author name"					
* group[=].element[=].target.code = #DiagnosticReport.performer.Practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer and performer.resolve().ofType(PractitionerRole)"	

* group[=].element[+].code = #Author.organization					
* group[=].element[=].display = "A.1.5.3 Author organization identifier"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.organization.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter and resultsInterpreter.resolve().ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.organization					
* group[=].element[=].display = "A.1.5.3 Author organization identifier"					
* group[=].element[=].target.code = #DiagnosticReport.performer.organization.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer and performer.resolve().ofType(PractitionerRole)"

* group[=].element[+].code = #Author.organization					
* group[=].element[=].display = "A.1.5.4 Author organization"					
* group[=].element[=].target.code = #DiagnosticReport.resultsInterpreter.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the interpreter and resultsInterpreter.resolve().ofType(PractitionerRole)"					
* group[=].element[+].code = #Author.organization					
* group[=].element[=].display = "A.1.5.4 Author organization"					
* group[=].element[=].target.code = #DiagnosticReport.performer.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If the author is the performer and performer.resolve().ofType(PractitionerRole)"		
//---END					
//---END					
//---END					
//---END					
