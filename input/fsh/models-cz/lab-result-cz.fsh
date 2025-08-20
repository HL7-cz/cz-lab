// -------------------------------------------------------------------------------				
//  Logical Model				lab-result-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzResultLabEhnCz				
Id: LogResultCz			
Title: "A.2.4 - Datové elementy výsledku vyšetření"				
Description:  """Datové elementy výsledku vyšetření"""				
* insert SetFmmandStatusRule ( 1, draft )				
* textoveCasti 1..1 Base "A.2.4.1 Textové části" """A.2.4.1 Textové části"""				
* textoveCasti.zprava 0..1 Narrative "A.2.4.1.1 Kompletní výsledková zpráva" """Kompletní laboratorní zpráva, tak jak ji laboratoř vydala."""				
* textoveCasti.poznamky 0..1 Narrative "A.2.4.1.2 Komentáře, interpretace a doporučení" """Komentáře, například textové interpretace nebo doporučení, které jsou součástí výsledkové zprávy."""		 		
* formalizovane 0..1 Base "A.2.4.2 Formalizovaná vyšetření" """A.2.4.2 Formalizovaná vyšetření """				
* formalizovane.datumAcas 1..* CodeableConcept "A.2.4.2.1 Datum a čas vyšetření" """Datum a čas vyšetření"""				
* formalizovane.kod 1..* CodeableConcept "A.2.4.2.2 Kód vyšetření" """Kód reprezentující vyšetření v rámci dohodnutého číselníku.
- Preferované systémy: NČLP"""				
* formalizovane.jemon 1..* string "A.2.4.2.3 Název vyšetření" """Celý název vyšetření podle použitého číselníku."""						
* formalizovane.metoda 0..1 CodeableConcept "A.2.4.2.4 Metoda vyšetření" """Použitá metoda vyšetření (princip měření).
- Preferované systémy: SNOMED CT"""				
* formalizovane.zarizeni 0..1 CodeableConcept "A.2.4.2.5 formalizovane device" """Device (analyser), laboratory test kit and used calibrator information (identifier, type, name, model, manufacturer)
- Preferované systémy: SNOMED CT
- Preferované systémy: EMDN"""		
* formalizovane.kit 0..1 string "A.2.4.2.6 Testovací souprava" """Informace o použité testovací soupravě (test-kit) - ID, typ, název, výrobce"""		
* formalizovane.kalibrator 0..1 string "A.2.4.2.7 Kalibrátor" """Informace o použitém kalibrátoru (pokud nejde o základní jednotky měření, např. IU) - ID, typ, název, výrobce"""
* formalizovane.objednavka 0..1 Base "A.2.4.2.8 Objednávka" """Identifikuje objednávku a jejího zadavatele."""				
* formalizovane.provedl 0..1 Base "A.2.4.2.9 Provedl" """Identifikuje pracovníka, který provedl laboratorní vyšetření, pokud není totožný s autorem laboratorní zprávy jako celku."""				
* formalizovane.vydal 0..1 Base "A.2.4.2.10 Vydal" """Používá se u některých výsledků, například tam kde musí být interpretovány nebo kde existuje osoba zodpovědná za jejich validaci."""				
* formalizovane.vysledek 1..1 Base "A.2.4.2.11 Výsledek vyšetření" """Výsledek vyšetření, zahrnuje textové, číselné i kódované výsledky a též nejistoty měření. Obsah výsledku vyšetření se může lišit v závislosti na druhu vyšetření.
- Preferované systémy: SNOMED CT (pro výsledky na ordinální nebo nominální škále a pro interpretaci výsledků)
- Preferované systémy: UCUM (pro jednotky)"""				
* formalizovane.interpretace 1..1 CodeableConcept "A.2.4.2.12 Interpretace naměřených hodnot" """Informace o referenčních intervalech a interpretaci výsledků.
 - Preferované systémy: SNOMED CT"""				
* formalizovane.popis 0..1 Narrative "A.2.4.2.13 Popis výsledku" """Komentář a textová reprezentace výsledku vyšetření."""				
* formalizovane.stavAkreditace 0..1 Base "A.2.4.2.14 Stav akreditace" """Informace o akreditaci laboratoře pro příslušné vyšetření."""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
