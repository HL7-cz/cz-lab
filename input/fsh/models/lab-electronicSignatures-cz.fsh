// -------------------------------------------------------------------------------				
//  Logical Model				lab-legalAuth-cz.fsh
// -------------------------------------------------------------------------------				
Logical: ElectronicSignaturesLabEhnCz				
Id: ElectronicSignatures				
Title: "A.1.9 - Electronic signatures"				
Description:  """Electronic signatures According to Act No. 327/2011, §54a
Section A1.7 of the eHN guideline."""				
* insert SetFmmandStatusRule( 2, informative)				
* identifier 0..* Signature "A.1.9.1 Electronic signature" """Electronic signature or document seal. """					 		
* dateTime 0..1 instant "A.1.9.2 Timestamp" """Electronic time stamp."""		
		
//--- END				
//--- END				
//--- END				
				