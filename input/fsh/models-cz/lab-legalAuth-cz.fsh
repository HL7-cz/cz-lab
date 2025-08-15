// -------------------------------------------------------------------------------				
//  Logical Model				lab-legalAuth-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzLegalAuthenticatorLabEhnCz				
Id: LogLegalAuthenticatorCz			
Title: "A.1.7 - Zodpovídá"				
Description:  """Zodpovídá"""				
* insert SetFmmandStatusRule ( 1, draft )
* id 1..* Identifier "A.1.7.1 Zodpovídá - ID" """Identifikační číslo zdravotnického pracovníka, který zodpovídá za celkový obsah dokumentu. Buď interní identifikátor přidělený institucí poskytovatele zdravotní péče, nebo (nejlépe) národní ID zdravotnického pracovníka, jako je číslo licence nebo registrační číslo. Primář či vedoucí oddělení, který zodpovídá za propouštěcí zprávu jako celek. Může být totožný s ověřujícím pracovníkem."""				
* jmeno 1..1 HumanName "A.1.7.2 Zodpovídá - jméno osoby" """Plné jméno a identifikační údaje osoby, která zodpovídá za obsah dokumentu."""			
* organizace 1..1 CZ_OrganizationCore "A.1.7.3 Zodpovídá - organizace" """Název a identifikační údaje zdravotnického zařízení které je reprezentováno osobou, která zodpovídá za obsah dokumentu."""		 		
* datumAcas 1..1 dateTime "A.1.7.4 Datum a čas autorizace" """Datum a čas autorizace dokumentu"""		
		
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
