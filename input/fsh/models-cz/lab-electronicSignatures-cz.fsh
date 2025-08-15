// -------------------------------------------------------------------------------				
//  Logical Model				lab-legalAuth-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzElectronicSignaturesLabEhnCz				
Id: LogElectronicSignatures				
Title: "A.1.9 - Electronic signatures"				
Description:  """Electronic signatures According to Act No. 327/2011, §54a
Section A1.7 of the eHN guideline."""				
* insert SetFmmandStatusRule ( 1, draft )		

* elektronickyPodpis 0..* Signature "A.1.9.1 - Elektronický podpis" """Elektronický podpis nebo pečeť dokumentu."""
* casoveRazitko 0..1 instant "A.1.9.2 - Elektronické časové razítko" """Elektronické časové razítko """
		
//--- END				
//--- END				
//--- END				
				