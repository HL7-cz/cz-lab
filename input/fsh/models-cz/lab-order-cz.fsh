// -------------------------------------------------------------------------------				
//  Logical Model				lab-order-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzOrderLabEhnCz				
Id: LogOrderCz			
Title: "A.2.1, A.2.2 - Objednávka"				
Description:  """Objednávka"""				
* insert SetFmmandStatusRule ( 1, draft )			
* detailyObjednavky 0..1 Base "A.2.1 Informace o objednávce" """A.2 Výsledková listina může odpovídat více objednávkám"""				
* detailyObjednavky.id 0..1 Identifier "A.2.1.1 ID objednávky" """Identifikátor objednávky laboratorního vyšetření."""				
* detailyObjednavky.datumAcas 0..1 dateTime "A.2.1.2 Datum a čas objednávky" """Datum a čas zadání objednávky."""		 		
* detailyObjednavky.idZadavatele 0..1 Identifier "A.2.1.3 Identifikátor zadavatele objednávky" """Identifikační číslo zdravotnického pracovníka - jedná se buď o interní identifikátor přidělený provozovatelem zdravotní péče nebo (nejlépe) národní ID zdravotnického pracovníka jako například licence nebo registrační číslo. V případě, že není objednávka zadána zdravotnickým pracovníkem ale například samotným pacientem, měl by být použit vhodný osobní identifikátor."""				
* detailyObjednavky.jmenoZadavatele 0..1 HumanName "A.2.1.4 Jméno zadavatele objednávky" """Jméno osoby."""				
* detailyObjednavky.kontaktyZadavatele 0..1 Base "A.2.1.5 Kontaktní údaje zadavatele objednávky" """Kontaktní údaje zadavatele objednávky (adresa a telekomunikační údaje)."""				
* detailyObjednavky.organizaceZadavatele 0..1 CZ_OrganizationCore "A.2.1.6 Organizace zadavatele objednávky" """Organizace zadavatele objednávky (poskytovatel zdravotních služeb)."""				
* duvodObjednavky 0..* Base "A.2.2 Důvod objednávky" """A.2.2 Důvod objednávky"""				
* duvodObjednavky.kod 1..* CodeableConcept "A.2.2.1 Popis problému / diagnózy / stavu" """Okolnosti zdravotního stavu pacienta, které ovlivňují jeho zdraví a znalost kterých je zásadní pro práci zdravotnického pracovníka během kontaktu s pacientem. Klinický stav subjektu relevantní pro interpretaci výsledků.
- Preferované systémy: MKN-10
- Preferované systémy: Orphacode"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
