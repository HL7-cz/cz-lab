// -------------------------------------------------------------------------------				
//  Logical Model				lab-payer-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogEnPayerLabEhnCz				
Id: PayerCz				
Title: "A.1.3 - Health insurance and payment information"				
Description:  """Health insurance and payment information.  Section A1.3 of the eHN guideline."""				
* insert SetFmmandStatusRule ( 1, draft )			
* identifier 0..1 Identifier "A.1.3.1 Health insurance code" """Unique health insurance company identification code. """				
* name 0..1 string "A.1.3.2 Health insurance name" """Full, official name of the healthcare insurance provider. """		 		
* subjectIdentifier 0..1 Identifier "A.1.3.3 Health insurance number" """Number or code under which the insured person is registered at the insurance provider. """				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
