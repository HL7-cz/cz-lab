Instance: CZ-LabResult-Observation-Example-Urine-Leukocytes
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Title: "Nitrity v moči"
Description: "Příklad lab. výsledku textový - kódovaný"

* status = #final

* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[studyType] = $loinc#26436-6 "Laboratory studies (set)" 
//* category[specialty] = 

* code.coding[0].system = $nclp
* code.coding[0].code = #03399
* code.coding[0].display = "Nitrity; moč"
* code.text = "Nitrity v moči"

* subject = Reference(Zyrgana)

* performer[+] = Reference(practitionerRoleSejdlova)
* performer[=].extension[performerFunction].valueCodeableConcept = http://hl7.org/fhir/StructureDefinition/event-performerFunction#PPRF "Primary performer"

* performer[+] = Reference(practitionerRoleZybradlo)
* performer[=].extension[performerFunction].valueCodeableConcept = http://hl7.org/fhir/StructureDefinition/event-performerFunction#LA "Legal authenticator"

* specimen = Reference(CZ-LabResult-Specimen-Urine-Example)

* effectiveDateTime = "2025-04-24T09:00:00+01:00"
* issued = "2025-04-24T10:00:00+01:00"

* valueCodeableConcept = $sct#260385009 "Negative"

* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"