// -------------------------------------------------------------------------------				
//  Logical Model				lab-recipient-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzRecipientLabEhnCz		
Id: LogRecipientCz				
Title: "A.1.4 - Příjemce dokumentu"				
Description:  """Informace o zamýšleném příjemci dokumentu"""				
* insert SetFmmandStatusRule ( 1, draft )			
* id 0..1 Identifier "A.1.4.1 ID příjemce" """Identifikační číslo zdravotnického pracovníka. Buď interní identifikátor přidělený institucí poskytovatele zdravotní péče, nebo (nejlépe) národní ID zdravotnického pracovníka, jako je číslo licence nebo registrační číslo. V případě, kdy příjemcem není zdravotnický pracovník, např. pacient, měl by být použit vhodný osobní identifikátor."""				
* jmeno 0..1 HumanName "A.1.4.2 Jméno příjemce" """Jméno a příjmení osoby příjemce."""		
* idOrganizace 0..1 Identifier "A.1.4.3 ID organizace příjemce" """Identifikátor organizace příjemce dle NRPZS nebo IČO."""		 		
* organizace 0..1 CZ_OrganizationCore "A.1.4.4 Organizace příjemce" """Název a identifikační údaje zdravotnického zařízení příjemce, případně také pracoviště příjemce"""		 		

//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
