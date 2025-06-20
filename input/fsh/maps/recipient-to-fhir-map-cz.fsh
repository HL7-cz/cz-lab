// -------------------------------------------------------------------------------					
//  Concept Model. File: 					recipient-to-fhir-map-cz.fsh
// -------------------------------------------------------------------------------					
Instance: recipient2FHIR-cz-lab					
InstanceOf: ConceptMap					
Usage: #definition					
* insert SetFmmandStatusRuleInstance( 2, informative)					
* name = "Recipient2FHIR"					
* title = "eHN Recipient to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Recipient Model to this guide Map"					
* purpose = "It shows how the Laboratory Report Recipient data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "https://hl7.cz/fhir/lab/StructureDefinition/RecipientCz"					
* targetUri = "http://hl7.eu/fhir/StructureDefinition/information-recipient"					
					
* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/RecipientCz"					
* group[=].target = "http://hl7.eu/fhir/StructureDefinition/information-recipient"					
					
* group[=].element[+].code = #Recipient.identifier					
* group[=].element[=].display = "A.1.4.1 Recipient identifier"					
* group[=].element[=].target.code = #extension:information-recipient.valueReference.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #Recipient.name					
* group[=].element[=].display = "A.1.4.2 Recipient name"					
* group[=].element[=].target.code = #extension:information-recipient.valueReference.name				
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent			

* group[=].element[+].code = #Recipient.organizationIdentifier					
* group[=].element[=].display = "A.1.4.3 Recipient organization"					
* group[=].element[=].target.code = #extension:information-recipient.ValueReference.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ValueReference.resolve().ofType(Organization). If the recipient is an organization."					
* group[=].element[+].code = #Recipient.organizationIdentifier					
* group[=].element[=].display = "A.1.4.3 Recipient organization"					
* group[=].element[=].target.code = #extension:information-recipient.ValueReference.organization.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ValueReference.resolve().ofType(PractitionerRole). If it is the organization the professional belong to"		
					
* group[=].element[+].code = #Recipient.organization					
* group[=].element[=].display = "A.1.4.4 Recipient organization"					
* group[=].element[=].target.code = #extension:information-recipient.ValueReference					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ValueReference.resolve().ofType(Organization). If the recipient is an organization."					
* group[=].element[+].code = #Recipient.organization					
* group[=].element[=].display = "A.1.4.4 Recipient organization"					
* group[=].element[=].target.code = #extension:information-recipient.ValueReference.organization					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ValueReference.resolve().ofType(PractitionerRole). If it is the organization the professional belong to"					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
