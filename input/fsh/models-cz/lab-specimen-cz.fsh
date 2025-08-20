// -------------------------------------------------------------------------------				
//  Logical Model				lab-specimen-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogCzSpecimenLabEhnCz				
Id: LogSpecimenLabCz		
Title: "A.2.3 - Informace o vzorku"				
Description:  """Informace o vzorku"""				
* insert SetFmmandStatusRule ( 1, draft )				
* id 1..* Identifier "A.2.3.1 ID vzorku" """Identifikátor vzorku, který je jedinečný v rozsahu zvoleného rámce. Například: identifikátor přidělený objednávkovým systémem, identifikátor přidělený laboratoří apod. Možné je použití více identifikátorů."""				
* druhVzorku 0..1 CodeableConcept "A.2.3.2 Biologický druh" """Biologický druh - týká se vzorků odebraných nikoliv přímo pacientovi, ale subjektu s pacientem souvisejícím.
- Preferované systémy: SNOMED CT"""				
* material 0..1 CodeableConcept "A.2.3.3 Materiál" """Materiál vzorku.
- Preferované systémy: SNOMED CT"""		 		
* dobaSberu 1..1 dateTime "A.2.3.4 Doba sběru" """Datum, čas odběru nebo doba sběru (začátek a ukončení sběru) materiálu.
- Preferované systémy: ISO 8601"""				
* anatomickeUmisteni 0..1 CodeableConcept "A.2.3.5 Anatomické umístění" """Anatomické umístění (umístění v rámci těla, lateralita) odkud je materiál odebrán, například 'levý loket'.
- Preferované systémy: SNOMED CT"""				
* morfologie 0..1 CodeableConcept "A.2.3.6 Morfologie" """Morfologické abnormality anatomického umístění odkud je materiál odebrán, například rána nebo vřed. 
- Preferované systémy: SNOMED CT"""				
* zdrojMaterialu 0..1 CodeableConcept "A.2.3.7 Zdroj materiálu" """V případě, že není materiál odebrán přímo z pacienta, ale pochází z předmětu, který s pacientem souvisí (například katetr).
- Preferované systémy: SNOMED CT
- Preferované systémy: EMDN"""				
* procedura 0..1 CodeableConcept "A.2.3.8 Procedura / metoda sběru" """Metoda sběru vzorku - pro případy, kdy je to pro výsledky relevantní. 
- Preferované systémy: SNOMED CT"""				
* datumPrijeti 0..1 dateTime "A.2.3.9 Datum přijetí" """Datum a čas převzetí materiálu laboratoří.
- Preferované systémy: ISO 8601"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
