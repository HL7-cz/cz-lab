// -------------------------------------------------------------------------------				
//  Logical Model				lab-validator-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzValidatorLabEhnCz				
Id: LogValidatorCz			
Title: "A.1.6 - Ověřil"				
Description:  """Ověřil"""				
* insert SetFmmandStatusRule ( 1, draft )			
* id 1..* Identifier "A.1.6.1 Identifikátor ověřovatele" """Identifikační číslo zdravotnického pracovníka, který ověřil dokument. Buď interní identifikátor přidělený institucí poskytovatele zdravotní péče, nebo (nejlépe) národní ID zdravotnického pracovníka, jako je číslo licence nebo registrační číslo. Osoba ověřující dokument se uvádí pouze pokud je odlišná od autora dokumentu. V případě propouštěcí zprávy jde o ošetřujícího lékaře, který měl pacienta v péči na propouštějícím oddělení."""				
* jmeno 1..1 HumanName "A.1.6.2 Jméno ověřovatele" """Plné jméno a identifikační údaje osoby, která dokument ověřila"""				
* idOrganizace 1..1 Identifier "A.1.6.3 ID organizace" """Identifikátor organizace, kterou ověřovatel reprezentuje"""
* organizace 1..1 CZ_OrganizationCore "A.1.6.4 Organizace ověřovatele" """Název a identifikační údaje zdravotnického zařízení které je reprezentováno osobou, která dokument ověřila."""		 		
* datumAcas 1..1 dateTime "A.1.6.5 Datum a čas ověření" """Datum a čas ověření dokumentu"""				
//--- END				
//--- END				
//--- END				
