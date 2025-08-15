// -------------------------------------------------------------------------------				
//  Logical Model				lab-legalAuth-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogEnLegalAuthenticatorLabEhnCz				
Id: LegalAuthenticatorCz			
Title: "A.1.7 - Legal authenticator"				
Description:  """Legal authenticator (The person taking responsibility for the medical content of the document).
Section A1.7 of the eHN guideline."""				
* insert SetFmmandStatusRule ( 1, draft )			
* identifier 1..* Identifier "A.1.7.1 Legal authenticator identifier" """Identification number of the healthcare professional responsible for the overall content of the document. Either an internal identifier assigned by the health care provider's institution or (preferably) a national health professional ID such as a license or registration number. The chief medical officer or head of department who is responsible for the discharge report as a whole. May be the same as the certifying officer. """				
* name 1..1 HumanName "A.1.7.2 Legal authenticator name" """Full name and identification of the person responsible for the content of the document."""			
* organization 1..1 CZ_OrganizationCore "A.1.7.3 Legal authenticator organization" """The name and identification details of the healthcare facility represented by the person responsible for the content of the document."""		 		
* dateTime 1..1 dateTime "A.1.7.4 Authentication date and time" """Date and time when the document was authorized."""		
		
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
