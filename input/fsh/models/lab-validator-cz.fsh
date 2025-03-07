// -------------------------------------------------------------------------------				
//  Logical Model				lab-validator-cz.fsh
// -------------------------------------------------------------------------------				
Logical: ValidatorLabEhnCz				
Id: Validator				
Title: "A.1.6 - Result validator"				
Description:  """Result validator. Section A1.6 of the eHN guideline."""				
* insert SetFmmandStatusRule( 2, informative)				
* identifier 1..* Identifier "A.1.6.1 Result validator identifier" """The health professional identification number who verified the document. Either an internal identifier assign by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number. The person certifying the document shall be mentioned only if he is different from the author of the document. In the case of a discharge report, this is the attending physician who had the patient under his/her care in the discharging ward.  """				
* name 1..1 HumanName "A.1.6.2 Result validator name" """Full name and identification details of the person who verified the document.  """				
* organizationIdentifier 1..1 Identifier "A.1.6.3 Result validator organisation identifier" """Identifier of the organisation that the verifier represents."""
* organization 1..1 Organization "A.1.6.4 Result validator organisation" """The name and identification details of the healthcare facility represented by the person who verified the document.  """		 		
* dateTime 1..1 dateTime "A.1.6.5 Validation date and time" """Date and time when the document was validated. """				
//--- END				
//--- END				
//--- END				
