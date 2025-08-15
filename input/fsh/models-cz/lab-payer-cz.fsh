// -------------------------------------------------------------------------------				
//  Logical Model				lab-payer-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzPayerLabEhnCz				
Id: LogPayerCz				
Title: "A.1.3 - Preferované systémy"				
Description:  """Informace o zdravotním pojištění"""				
* insert SetFmmandStatusRule ( 1, draft )		
* kod 0..1 Identifier "A.1.3.1 Kód zdravotní pojišťovny" """Kód zdravotní pojišťovny"""				
* nazev 0..1 string "A.1.3.2 Název zdravotní pojišťovny" """Název zdravotní pojišťovny"""		 		
* cisloPojisteni 0..1 Identifier "A.1.3.3 Číslo zdravotního pojištění" """Číslo pojištěnce"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
