Instance: CZ-LabResult-Observation-Example-Urine-Color
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Title: "Urine color"
Description: "Example of a lab result – free text"

* id = "5c3e9a12-4f7b-41d0-86a2-9b7e4d2f1c08"

* status = #final

* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[studyType] = $loinc#26436-6 "Laboratory studies (set)" 
//* category[specialty] = 

* code.coding[0].system = $nclp
* code.coding[0].code = #12339
* code.coding[0].display = "Moč barva"
* code.text = "Barva moči"

* subject = Reference(Zyrgana)

* performer[+] = Reference(practitionerRoleSejdlova)
* performer[=].extension[performerFunction].valueCodeableConcept = http://hl7.org/fhir/StructureDefinition/event-performerFunction#PPRF "Primary performer"

* performer[+] = Reference(practitionerRoleZybradlo)
* performer[=].extension[performerFunction].valueCodeableConcept = http://hl7.org/fhir/StructureDefinition/event-performerFunction#LA "Legal authenticator"

* specimen = Reference(CZ-LabResult-Specimen-Urine-Example)

* effectiveDateTime = "2025-04-24T09:00:00+02:00"
* issued = "2025-04-24T10:00:00+02:00"

* valueCodeableConcept.text = "žlutá"

* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
