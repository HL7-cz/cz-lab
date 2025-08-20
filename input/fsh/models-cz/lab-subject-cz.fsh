// -------------------------------------------------------------------------------				
//  Logical Model				lab-subject-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzSubjectLabEhnCz				
Id: LogSubjectCz		
Title: "A1.1, A1.2 - Pacient"				
Description:  """Pacient"""				
* insert SetFmmandStatusRule ( 1, draft )			
* identifikace 1..1 Base "A.1.1 Identifikace pacienta" """A.1.1 Identifikace pacienta"""	
* identifikace.jmeno 1..* string "A.1.1.1 Křestní jméno" """Křestní jméno"""		 					
* identifikace.prijmeni 1..* string "A.1.1.2 Příjmení" """Příjmení"""				
* identifikace.datumNarozeni 1..1 dateTime "A.1.1.3 Datum narození" """Datum, případně i čas narození
- Preferované systémy: ISO 8601 """				
* identifikace.id 1..* Identifier "A.1.1.4 Identifikátor pacienta" """Typ identifikátoru a identifikátor osoby. Identifikátor musí být unikátní v rámci daného typu identifikátoru. Povinné je zadání alespoň jednoho národního či mezinárodního identifikátoru (rodné číslo, číslo pasu apod.)"""				
* identifikace.statniObcanstvi 0..* CodeableConcept "A.1.1.5 Státní občanství" """Státní občanství dle zákona 186/2013. Státní občanství, jak je uváděno na oficiálních dokladech k prokázání identity.
- Preferované systémy: eHDSICountry (ISO 3166)"""
* identifikace.pohlavi 1..1 CodeableConcept "A.1.1.6 Úřední pohlaví" """Úřední/administrativní pohlaví (pohlaví uváděné v dokladech pro úřední účely). Biologické pohlaví pacienta, které může být odlišné od pohlaví administrativního může být vedeno v jiných částech zdravotnické dokumentace.
- Preferované systémy: HL7 Administrative Gender """	
* identifikace.komunikacniJazyk 0..* CodeableConcept  "A.1.1.7 Komunikační jazyk" """Jazyk (jazyky) v nichž pacient komunikuje
- Preferované systémy: NCLP EJAZYK"""

* kontakt 0..1 Base "A.1.2 Kontaktní informace pacienta" """A.1.2 Kontaktní informace pacienta"""				
* kontakt.adresa 0..* Address "A.1.2.1 Adresa" """Poštovní, domácí a/nebo kancelářské adresa. Adresy jsou vždy sekvence částí adresy (např. řádek adresy, země, PSČ, město), i když se formát poštovní adresy může lišit v závislosti na zemi. Adresa může obsahovat informaci o typu adresy; pokud tento atribut není přítomen, předpokládá se, že jde o výchozí adresu použitelnou pro jakýkoli účel.
- Preferované systémy:  eHDSICountry (ISO 3166)"""				
* kontakt.kontakt 0..* ContactPoint "A.1.2.2 Telekomunikační kontakt (e-mail, telefon atp.)." """Telekomunikační kontakt (e-mail, telefon atp.)."""				

* kontakt.preferovanyLekar 0..* Base "A.1.2.3 Preferovaný lékař" """Registrující praktický lékař, případně jiný lékař, který může poskytovat informace o pacientovi. Zvláště potřebné u pacientů s vzácným onemocněním."""
* kontakt.preferovanyLekar.id 1..1 Identifier "A.1.2.3.1 Identifikátor zdravotnického pracovníka v NR-ZP" """Identifikační číslo zdravotnického pracovníka dle Národního registru zdravotnických pracovníků. """
* kontakt.preferovanyLekar.jmeno 1..1 HumanName "A.1.2.3.2 Jméno lékaře" """Jméno lékaře, u kterého je pacient v péči, nebo který pacienta eviduje."""
* kontakt.preferovanyLekar.specializace 0..* CodeableConcept "A.1.2.3.3 Specializace lékaře" """Specializace lékaře (Praktické lékařství pro děti a dorost, Praktické lékařství pro dospělé, interní lékařství, gynekologie a porodnictví a pod.)
- Preferované systémy: NR-ZP Specializace lékařů"""
* kontakt.preferovanyLekar.idAnazevPoskytovatele 0..1 string "A.1.2.3.4 ID a název poskytovatele" """Identifikátor (IČO, NRPZS) a název poskytovatele, kterého lékař reprezentuje"""
* kontakt.preferovanyLekar.adresaPoskytovatele 0..1 Address "A.1.2.3.5 Adresa poskytovatele" """Poštovní, domácí a/nebo kancelářské adresa. Adresy jsou vždy sekvence částí adresy (např. řádek adresy, země, PSČ, město), i když se formát poštovní adresy může lišit v závislosti na zemi. Adresa může obsahovat informaci o typu adresy; pokud tento atribut není přítomen, předpokládá se, že jde o výchozí adresu použitelnou pro jakýkoli účel."""
* kontakt.preferovanyLekar.kontakt 0..* ContactPoint "A.1.2.3.6 Telekomunikační kontakt (e-mail, telefon atp.)." """Telekomunikační kontakt (e-mail, telefon atp.)."""

* kontakt.legalRepresent 0..* Base "A.1.2.4 Zákonní zástupci a další kontaktní osoby" """"""
* kontakt.legalRepresent.typ 0..1 CodeableConcept "A.1.2.4.1 Typ kontaktu" """Typ kontaktní osoby rozlišující emergentní kontakty, zákonné zástupce a ostatní osoby se vztahem k pacientovi.
- Preferované systémy: HL7 Role"""
* kontakt.legalRepresent.vztahKpacientovi 0..1 CodeableConcept "A.1.2.4.2 Vztah k pacientovi" """Vztah osoby k pacientovi (otec, syn, dcera atp.)
- Preferované systémy: eHDSIPersonalRelationship"""
* kontakt.legalRepresent.id 0..* Identifier  "A.1.2.4.3 Id osoby" """Typ identifikátoru a identifikátor osoby. Identifikátor musí být unikátní v rámci daného typu identifikátoru. Povinné je zadání alespoň jednoho národního či mezinárodního identifikátoru (rodné číslo, číslo pasu apod.)"""
* kontakt.legalRepresent.jmeno 1..* string "A.1.2.4.4 Křestní jméno" """Křestní jméno"""
* kontakt.legalRepresent.prijmeni 1..* string "A.1.2.4.5 Příjmení" """Příjmení"""
* kontakt.legalRepresent.adresa 0..1 Address "A.1.2.4.6 Adresa kontaktní osoby" """Poštovní, domácí a/nebo kancelářské adresa. Adresy jsou vždy sekvence částí adresy (např. řádek adresy, země, PSČ, město), i když se formát poštovní adresy může lišit v závislosti na zemi. Adresa může obsahovat informaci o typu adresy; pokud tento atribut není přítomen, předpokládá se, že jde o výchozí adresu použitelnou pro jakýkoli účel."""
* kontakt.legalRepresent.kontakt 0..* ContactPoint "A.1.2.4.7 Telekomunikační kontakt (e-mail, telefon atp.)." """Telekomunikační kontakt (e-mail, telefon atp.)."""
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
