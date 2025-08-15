// -------------------------------------------------------------------------------				
//  Logical Model				lab-author-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzAuthorLabEhnCz				
Id: LogAuthorCz				
Title: "A.1.5 - Autor dokumentu"				
Description:  """Autor dokumentu dle zákona 372/2011 §54 odst. (3)"""				
* insert SetFmmandStatusRule ( 1, draft )		
* id 1..* Identifier "A.1.5.1 Identifikátor autora" """Identifikační číslo zdravotnického pracovníka (nebo informačního systému), který provedl zápis do zdravotnické dokumentace. Buď interní identifikátor přidělený institucí poskytovatele zdravotní péče, nebo (nejlépe) národní ID zdravotnického pracovníka, jako je číslo licence nebo registrační číslo."""				
* jmeno 1..1 HumanName "A.1.5.2 Jméno autora" """Jméno autora či informačního systému (např. software, který dokument automatizovaně sestavil)"""		
* idOrganizace 1..1 Identifier "A.1.5.3 ID organizace" """Identifikátor organizace, kterou autor reprezentuje"""		
* organizace 1..1 CZ_OrganizationCore "A.1.5.4 Organizace autora" """Název a identifikační údaje zdravotnického zařízení které je reprezentováno autorem dokumentu."""		 	
* datumUlozeni 1..1 dateTime "A.1.5.5 Datum a čas uložení" """Datum a čas poslední modifikace dokumentu."""	
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
