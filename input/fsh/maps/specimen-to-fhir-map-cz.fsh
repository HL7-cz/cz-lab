// -------------------------------------------------------------------------------					
//  Concept Model. File: 					specimen-to-fhir-map-cz.fsh
// -------------------------------------------------------------------------------					
Instance: specimen2FHIR-cz-lab					
InstanceOf: ConceptMap					
Usage: #definition					
* insert SetFmmandStatusRuleInstance( 2, informative)					
* name = "Specimen2Fhir"					
* title = "eHN Specimen to this guide Map"					
* status = #draft					
* experimental = true					
* description = "eHN Specimen Model to this guide Map"					
* purpose = "It shows how the Specimen data set defined by the EU eHN guidelines is mapped into this guide"					
* sourceUri = "https://hl7.cz/fhir/lab/StructureDefinition/SpecimenLabCz"					
* targetUri = "https://hl7.cz/fhir/lab/StructureDefinition/cz-service-request-lab"	

* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/SpecimenLabCz"					
* group[=].target = "https://hl7.cz/fhir/lab/StructureDefinition/cz-service-request-lab"					
					
* group[=].element[+].code = #SpecimenLab.identifier					
* group[=].element[=].display = "A.4.1 Specimen identifier"					
* group[=].element[=].target.code = #Specimen.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #SpecimenLab.speciesType					
* group[=].element[=].display = "A.4.2 Type of species"					
* group[=].element[=].target.code = #Specimen.subject.extension:patient-animal.extension:species					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "subject.ofType(Patient)"					
* group[=].element[+].code = #SpecimenLab.material					
* group[=].element[=].display = "A.4.3 Material"					
* group[=].element[=].target.code = #Specimen.type					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #SpecimenLab.collected					
* group[=].element[=].display = "A.4.4 Collection period"					
* group[=].element[=].target.code = #Specimen.collection.collected[x]					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #SpecimenLab.anatomicLocation					
* group[=].element[=].display = "A.4.5 Anatomic location"					
* group[=].element[=].target.code = #Specimen.collection.bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
					
* group[=].element[+].code = #SpecimenLab.anatomicLocation					
* group[=].element[=].display = "A.4.5 Anatomic location"					
* group[=].element[=].target.code = #Specimen.collection.extension:bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see Group 2 for details"					
* group[=].element[+].code = #SpecimenLab.morphology					
* group[=].element[=].display = "A.4.6 Morphology"					
* group[=].element[=].target.code = #Specimen.collection.extension:bodySite					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "see Group 2 for details"					
* group[=].element[+].code = #SpecimenLab.sourceDevice					
* group[=].element[=].display = "A.4.7 Source Device"					
* group[=].element[=].target.code = #Specimen.subject					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "When the device (e.g. the catheter) is what has been examinated.
If the device is meant instead as the mean used to collect the specimen (e.g blood collected from the catheter), then, this is represented by the collectionMethod attribute and mapped into the Specimen.collection.method"					
* group[=].element[+].code = #SpecimenLab.collectionMethod					
* group[=].element[=].display = "A.4.8 Collection procedure/method"					
* group[=].element[=].target.code = #Specimen.collection.method					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #SpecimenLab.receivedDateTime					
* group[=].element[=].display = "A.4.9 Received date"					
* group[=].element[=].target.code = #Specimen.receivedTime					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
//---END					
					
					
					
					
* group[+].source = "https://hl7.cz/fhir/lab/StructureDefinition/SpecimenLabCz"					
* group[=].target = "http://hl7.eu/fhir/laboratory/StructureDefinition/BodyStructure-eu-lab"					
					
* group[=].element[+].code = #SpecimenLab.anatomicLocation					
* group[=].element[=].display = "A.4.5 Anatomic location"					
* group[=].element[=].target.code = #BodyStructure.location					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
* group[=].element[+].code = #SpecimenLab.anatomicLocation					
* group[=].element[=].display = "A.4.5 Anatomic location"					
* group[=].element[=].target.code = #BodyStructure.extension:laterality					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "For details about laterality"					
* group[=].element[+].code = #SpecimenLab.morphology					
* group[=].element[=].display = "A.4.6 Morphology"					
* group[=].element[=].target.code = #BodyStructure.morphology					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
					
//---END					
//---END					
//---END					
					
					
					
