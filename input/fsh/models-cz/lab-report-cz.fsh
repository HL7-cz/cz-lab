// -------------------------------------------------------------------------------				
//  Logical Model				lab-report-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzLabReportEhnCz				
Id: LogLabReportCz		
Title: "A - Laboratorní zpráva"				
Description:  """Zpráva z laboratorního vyšetření"""				
* insert SetFmmandStatusRule ( 1, draft )			
* hlavicka 1..1 Base "A.1 Hlavička dokumentu" """A.1 Záhlaví dokumentu s administrativními údaji"""				
* hlavicka.pacient 1..1 LogSubjectCz "A.1.1 - A1.2 Pacient/subjekt" """A.1.1 Identifikace pacienta and A.1.2 Kontaktní informace pacienta"""				
* hlavicka.zdravotniPojisteni 0..1 LogPayerCz "A.1.3 Zdravotní pojištění" """A.1.3 Informace o zdravotním pojištění"""				
* hlavicka.prijemce 0..* LogRecipientCz "A.1.4 Příjemce dokumentu" """A.1.4 Informace o zamýšleném příjemci dokumentu"""				
* hlavicka.autor 1..* LogAuthorCz "A.1.5 Autor dokumentu" """A.1.5 Autor dokumentu dle zákona 372/2011 §54 odst. (3)"""				
* hlavicka.overil 0..1 LogValidatorCz "A.1.6 Ověřil" """A.1.7 Ověřil"""	
* hlavicka.zodpovida 0..* LogLegalAuthenticatorCz "A.1.7 Zodpovídá" """A.1.7 Zodpovídá"""						
* hlavicka.metadata 1..1 Base "A.1.8 Metadata dokumentu" """A.1.8 Metadata dokumentu"""				
* hlavicka.metadata.id 1..1 Identifier "A.1.8.1 ID dokumentu" """Identifikátor dokumentu"""				
* hlavicka.metadata.typ 1..1 CodeableConcept "A.1.8.2 Kategorie dokumentu" """Kategorie elektronického zdravotního záznamu (EHR).
- Preferované systémy: LOINC"""				
* hlavicka.metadata.status 1..1 CodeableConcept "A.1.8.3 Stav dokumentu" """Stav dokumentu (předběžný, finální, doplněný, opravený atp.)
- Preferované systémy: hl7:DiagnosticReportStatus"""				
* hlavicka.metadata.datumAcas 1..1 dateTime "A.1.8.4 Datum a čas vytvoření" """Datum a čas vytvoření dokumentu"""				
* hlavicka.metadata.titulek 1..1 string "A.1.8.5 Název dokumentu" """Název dokumentu"""					
* hlavicka.metadata.spravce 1..1 CZ_OrganizationCore "A.1.8.6 Správce dokumentu" """Název a identifikační údaje subjektu, který dokument spravuje. Alias technický správce dokumentu."""				
* hlavicka.metadata.duvernost 1..1 CodeableConcept "A.1.8.7 Důvěrnost dokumentu" """Stupeň důvěrnosti dokumentu (a jeho obsahu).
- Preferované systémy: hl7:Confidentiality"""				
* hlavicka.metadata.jazyk 1..1 CodeableConcept "A.1.8.8 Jazyk dokumentu" """Jazyk, v němž je dokument napsán (narativní část dokumentu).
- Preferované systémy:  NCLP EJAZYK"""				
* hlavicka.metadata.verze 0..1 string "A.1.8.9 Verze" """Verze dokumentu"""		
* hlavicka.elektronickePodpisy 1..* Base "A.1.9 Elektronické podpisy" """dle zákona 327/2011 §54a"""

* telo 0..1 Base "A.2 Tělo dokumentu" """A.2 Tělo dokumentu"""	
* telo.objednavka 0..* LogOrderCz "A.2.1-A.2.2 Objednávka" """A.2.1 Informace o objednávce, A.2.2 Důvod objednávky
"""				
* telo.vzorek 0..* LogSpecimenLabCz "A.2.3 Informace o vzorku" """A.2.3 Informace o vzorku"""				
* telo.vysledek 0..* LogResultCz "A.2.4 Datové elementy výsledku vyšetření" """A.2.4 Datové elementy výsledku vyšetření"""				

* presentedForm 1..* LogPresentedFormCz "A.3 - Vizuální podoba dokumentu" """Zpráva čitelná lidským okem, je požadován PDF formát."""
* attachments 0..* LogAttachmentsCz "A.4 - Přílohy" """Ostatní přílohy"""

//--- END				
//--- END				
//--- END				
				
				
				
//--------------------------------------------------------------------------------				
//  Logical Model - Comments				
//--------------------------------------------------------------------------------				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
