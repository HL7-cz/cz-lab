### Oblasti řešení
Tato implementační specifikace určuje způsob reprezentace laboratorní výsledkové zprávy (laboratorního nálezu) pomocí standardu HL7 FHIR.

#### Zahrnuté oblasti
Laboratorní výsledky v rámci stěžejních oborů in vitro diagnostiky jako jsou klinická biochemie, hematologie, transfuzní lékařství, mikrobiologie a imunologie prováděné na:
•	lidských vzorcích (odebraných lidským subjektům); 
•	vzorcích jiných než lidských, může se jednat buď o materiál nebo o živý subjekt; 
•	vzorcích jiných než lidských, které s lidským subjektem souvisí (např. potravin či vzorků prostředí, jemuž byl pacient vystaven);

#### Nezahrnuté oblasti
Specializované laboratorní oblasti vyžadující specifickou strukturu výsledkových zpráv jako jsou histopatologie nebo lékařská genetika. Též nejsou zahrnuty testy (analýzy) prováděné samotnými pacienty.

### Obsah laboratorní zprávy

#### Administrativní údaje

*Tato sekce je povinná*

Tato sekce zahrnuje základní formální aspekty laboratorní zprávy specifikované zákonem  a prováděcím předpisem k tomuto zákonu a některé další údaje důležité pro administrativní kontext laboratorní zprávy. Mezi tyto údaje patří:
- Identifikační a kontaktní údaje pacienta, který je subjektem laboratorní zprávy
- Další údaje vztahující se k pacientovi
- Identifikační a kontaktní údaje pracovníka, který laboratorní zprávu vytvořil (autor laboratorní zprávy)
- Identifikační a kontaktní údaje laboratoře, která zdravotní služby provedla
- Identifikační a kontaktní údaje pracovníka, který ověřil obsah laboratorní zprávy a identifikační údaje poskytovatele, kterého tento pracovník reprezentuje
- Identifikační a kontaktní údaje pracovníka, který autorizoval a zodpovídá za obsah laboratorní zprávy, identifikační údaje poskytovatele, kterého tento pracovník reprezentuje
- Příjemci (adresáti) laboratorní zprávy
- Metadata dokumentu

<br/>

#### Tělo dokumentu

##### Informace o objednávce

*Tato sekce je povinná*

Sekce obsahuje informace o jedné nebo více objednávkách laboratorních vyšetření, které jsou zahrnuty do laboratorní zprávy/nálezu. Sekce se tedy v dokumentu může opakovat.

Informace o objednávce zahrnují:
- Identifikátor či identifikátory objednávky
- Datum a čas vytvoření objednávky
- Informace o zadavateli
- Důvod či důvody objednávky
- Informace o vyšetřovaném vzorku nebo vzorcích
  - Identifikátor vzorku
  - Biologický druh vyšetřovaného organismu
  - Typ odebraného materiálu (materiál vzorku)
  - Doba odběru či období sběru
  - Anatomické umístění vzorku
  - Metoda (procedura) odběru
  - Datum a čas přijetí vzorku laboratoří
- Doplňující klinické údaje nezbytné pro správné provedení či interpretaci labratorních testů

<br/>

##### Výsledky vyšetření

*Tato sekce je povinná*

Sekce obsahuje samotný labporatorní nález obsahující:
- Narativní textové bloky laboratorního nálezu
  - Kompletní výsledková zpráva
  - Komentáře a doporučení
- Formalizované výsledky jednotlivých vyšetření
  - Datum a čas provedení
  - Kód vyšetření
  - Název vyšetření
  - Metoda vyšetření
  - Informace o použitém měřícím systému (analyzátoru), testovací soupravě a kalibrátoru
  - Odkaz na objednávku
  - Informace o pracovníkovi laboratoře, který test provedl
  - Informace o pracovníkovi labpratoře, který výsledek testu ověřil a vydal
  - Výsledek vyšetření (výsledek, nejistota měření, jednotka měření)
  - Interpretace výsledku (škála a hodnocení)
  - Popis výsledku - komentář a textová reprezentace výsledku
  - Stav akreditace laboratoře k provedení testu