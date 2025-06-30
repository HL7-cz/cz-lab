// -------------------------------------------------------------------------------				
//  Logical Model				lab-recipient-cz.fsh
// -------------------------------------------------------------------------------				
Logical: RecipientLabEhnCz		
Id: RecipientCz				
Title: "A.1.4 - Information recipient"				
Description:  """Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable.
Section A1.4 of the eHN guideline."""				
* insert SetFmmandStatusRule( 2, informative)				
* identifier 0..1 Identifier "A.1.4.1 Recipient identifier" """The health professional identification number.
Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the license or registration number.
In case when recipient is not a health professional, e.g. patient, appropriate personal identifier should be used."""				
* name 0..1 HumanName "A.1.4.2 Recipient name" """Name and surname of the recipient."""		
* organizationIdentifier 0..1 Identifier "A.1.4.3 Recipient organization" """Identifier of the recipient organization according to the NRPZS or IČO."""		 		
* organization 0..1 CZ_OrganizationCore "A.1.4.4 Recipient organization" """Name and identification details of the recipient's healthcare facility, and, where applicable, the recipient's workplace."""		 		

//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
