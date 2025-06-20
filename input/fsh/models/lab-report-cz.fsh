// -------------------------------------------------------------------------------				
//  Logical Model				lab-report-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LabReportEhnCz				
Id: LabReport				
Title: "A - Laboratory Report"				
Description:  """Laboratory Report. eHN guideline model."""				
* insert SetFmmandStatusRule( 2, informative)				
* header 1..1 BackboneElement "A.1 Report header data elements" """A.1 Report header data elements"""				
* header.subject 1..1 http://hl7.eu/fhir/laboratory/StructureDefinition/Subject "A.1.1 - A1.2 Patient/subject" """A.1.1 Identification of the patient/subject and A.1.2 Patient/subject related contact information  """				
* header.payer 0..1 http://hl7.eu/fhir/laboratory/StructureDefinition/Payer "A.1.3 Health insurance and payment information" """A.1.3 Health insurance and payment information"""				
* header.informationRecipient 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/Recipient "A.1.4 Information recipient" """A.1.4 Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"""				
* header.author 1..* http://hl7.eu/fhir/laboratory/StructureDefinition/Author "A.1.5 Author" """A.1.5 Author of the document according to Act 372/2011 §54 (3)"""				
* header.validator 0..1 http://hl7.eu/fhir/laboratory/StructureDefinition/Validator "A.1.6 Result validator" """A.1.7 Result validator"""	
* header.legalAuthenticator 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/LegalAuthenticator "A.1.7 Legal authenticator" """A.1.6 Legal authenticator (The person taking responsibility for the medical content of the document)"""						
* header.metadata 1..1 BackboneElement "A.1.8 Laboratory report metadata" """A.1.8 Laboratory report metadata"""				
* header.metadata.documentId 1..1 Identifier "A.1.8.1 Document Id" """Unique identifier of the document"""				
* header.metadata.type 1..1 CodeableConcept "A.1.8.2 Document type" """Category of the document. 
- Preferred system(s): LOINC"""				
* header.metadata.status 1..1 CodeableConcept "A.1.8.3 Document status" """The status of the laboratory test result report. E.g., preliminary, final. 
- Preferred system(s): hl7:DiagnosticReportStatus"""				
* header.metadata.dateTime 1..1 dateTime "A.1.8.4 Report date and time" """Date and time of the result report creation."""				
* header.metadata.title 1..1 string "A.1.8.5 Document title" """Document title, fixed value 'Laboratory Result report'"""					
* header.metadata.custodian 1..1 CZ_OrganizationCore "A.1.8.6 Report custodian" """Name and identification of the entity that manages the document. Alias of the technical administrator of the document."""				
* header.metadata.confidentiality 1..1 CodeableConcept "A.1.8.7 Confidentiality" """Level of confidentiality of the document. Implicit value is normal. 
- Preferred system(s): hl7:Confidentiality"""				
* header.metadata.language 1..1 CodeableConcept "A.1.8.8 Language" """Language in which the document is written.
- Preferred system(s):  NCLP EJAZYK"""				
* header.metadata.version 0..1 string "A.1.8.9 Version" """Version of the document."""		
* header.electronicSignatures 0..1 BackboneElement "A.1.9 Electronic signatures" """Electronic signatures According to Act No. 327/2011, §54a."""

* order 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/Order "A.2-A.3 Order" """A.2 Order information (Laboratory Result Report could respond to multiple test orders)
A.3 Order reason (Laboratory Result Report could respond to multiple reasons)
"""				
* specimen 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/SpecimenLab "A.4 Specimen information" """A.4 Specimen information"""				
* result 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/Result "A.5 Results data elements" """A.5 Results data elements"""				
//--- END				
//--- END				
//--- END				
				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model - Comments				
//--------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
