// -------------------------------------------------------------------------------				
//  Logical Model				lab-report-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogEnLabReportEhnCz				
Id: LabReportCz		
Title: "A - Laboratory Report"				
Description:  """Laboratory Report. eHN guideline model."""				
* insert SetFmmandStatusRule ( 1, draft )			
* header 1..1 Base "A.1 Report header data elements" """A.1 Report header data elements"""				
* header.subject 1..1 SubjectCz "A.1.1 - A1.2 Patient/subject" """A.1.1 Identification of the patient/subject and A.1.2 Patient/subject related contact information  """				
* header.payer 0..1 PayerCz "A.1.3 Health insurance and payment information" """A.1.3 Health insurance and payment information"""				
* header.informationRecipient 0..* RecipientCz "A.1.4 Information recipient" """A.1.4 Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"""				
* header.author 1..* AuthorCz "A.1.5 Author" """A.1.5 Author of the document according to Act 372/2011 §54 (3)"""				
* header.validator 0..1 ValidatorCz "A.1.6 Result validator" """A.1.7 Result validator"""	
* header.legalAuthenticator 0..* LegalAuthenticatorCz "A.1.7 Legal authenticator" """A.1.7 Legal authenticator (The person taking responsibility for the medical content of the document)"""						
* header.metadata 1..1 Base "A.1.8 Laboratory report metadata" """A.1.8 Laboratory report metadata"""				
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
* header.electronicSignatures 1..* Base "A.1.9 Electronic signatures" """Electronic signatures According to Act No. 327/2011, §54a."""

* body 0..1 Base "A.2 Report body data elements" """A.2 Report body data elements"""	
* body.order 0..* OrderCz "A.2.1-A.2.2 Order" """A.2.1 Order information (Laboratory Result Report could respond to multiple test orders)
A.2.2 Order reason (Laboratory Result Report could respond to multiple reasons)
"""				
* body.specimen 0..* SpecimenLabCz "A.2.3 Specimen information" """A.2.3 Specimen information"""				
* body.result 0..* ResultCz "A.2.4 Results data elements" """A.2.4 Results data elements"""				

* presentedForm 1..* PresentedFormCz "A.3 - Presented Form" """Entire report as issued. Various formats could be provided,  pdf format is recommended."""
* attachments 0..* AttachmentsCz "A.4 - Attachments" """Aditional attachment"""

//--- END				
//--- END				
//--- END				
				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model - Comments				
//--------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
