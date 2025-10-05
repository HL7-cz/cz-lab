// -------------------------------------------------------------------------------				
//  Logical Model				lab-result-cz.fsh
// -------------------------------------------------------------------------------				
Logical: LogEnResultLabEhnCz				
Id: ResultCz			
Title: "A.2.4 - Results data elements"				
Description:  """Results data elements. Section A5 of the eHN guideline."""				
* insert SetFmmandStatusRule ( 1, draft )		
* narrative 1..1 Base "A.2.4.1 Laboratory report narrative" """A.2.4.1 Laboratory report narrative"""				
* narrative.report 0..1 Narrative "A.2.4.1.1 Narrative report" """Entire report (textual summary inside the laboratory result report document) as issued by the laboratory."""				
* narrative.notes 0..1 Narrative "A.2.4.1.2 Comments, interpretation and recommendations" """Comments, such as a textual interpretation or advice accompanying the result report, for example."""		 		
* observation 0..1 Base "A.2.4.2 Observation details" """A.2.4.2 Observation details (report could consist of multiple observations) """				
* observation.dateTime 1..* CodeableConcept "A.2.4.2.1 Observation date" """Date and time of the observation - Preferred system(s): ISO 8601"""				
* observation.code 1..* CodeableConcept "A.2.4.2.2 Observation code" """Code representing the observation using the agreed code systems.
- Preferred system(s): NČLP"""				
* observation.code.name 1..* string "A.2.4.2.3 Observation name" """Full name of the observation according to the used test coding standard."""				
//MK* observation.code.originalName 0..* string "A.2.4.2.3.2 Observation original name" """Original (conventional) name of the observation as used by the laboratory"""				
//MK* observation.code.displayName 0..* string "A.2.4.2.3.3 Observation display name" """Simplified (short name of the observation) for display."""				
* observation.method 0..1 CodeableConcept "A.2.4.2.4 Observation method" """Observation method (measurement principle) to obtain the result.
- Preferred system(s): SNOMED CT"""		
* observation.device 0..1 CodeableConcept "A.2.4.2.5 Observation device" """Device (analyser), laboratory test kit and used calibrator information (identifier, type, name, model, manufacturer)
- Preferred system(s): SNOMED CT
- Preferred system(s): EMDN"""				
* observation.testKit 0..1 string "A.2.4.2.6 Test kit" """Information about the test kit used – ID, type, name, manufacturer"""		
* observation.calibrator 0..1 string "A.2.4.2.7 Calibrator" """Information about the calibrator used (unless it is a basic unit of measurement, e.g. IU) - ID, type, name, manufacturer"""
* observation.order 0..1 Base "A.2.4.2.8 Order" """Identifies order and order placer this observation belongs to."""				
* observation.performer 0..1 Base "A.2.4.2.9 Performer" """Identifies the originator/author and provides provenance information about the source of the results data that may have not originated with the source of the whole Laboratory Report document. """				
* observation.reporter 0..1 Base "A.2.4.2.10 Reporter" """With certain observation results, e.g. there may also be an interpreter or a person responsible for validation."""				
* observation.result 1..1 Base "A.2.4.2.11 Observation result" """Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation. 
- Preferred system(s): SNOMED CT (for ordinal or nominal scale results and result interpretation)
- Preferred system(s): UCUM (for units)"""				
* observation.interpretation 1..1 CodeableConcept "A.2.4.2.12 Observation interpretation" """Information about reference intervals and result interpretation.
 - Preferred system(s): SNOMED CT"""				
* observation.description 0..1 Narrative "A.2.4.2.13 Result description" """Comments and narrative representation of the observation result and findings."""				
* observation.accreditationStatus 0..1 Base "A.2.4.2.14 Accreditation status" """Accreditation status of the laboratory for the particular observation."""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
