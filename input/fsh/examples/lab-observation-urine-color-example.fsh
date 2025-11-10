Instance: CZ-LabResult-Observation-Example-Urine-Color
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Title: "Urine color"
Description: "Example of a lab result – free text"

* id = "5c3e9a12-4f7b-41d0-86a2-9b7e4d2f1c08"

* status = #final

* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[studyType] = $loinc#26436-6 //"Laboratory studies (set)" 
//* category[specialty] = 

* code.coding[0].system = $nclp
* code.coding[0].code = #12339
* code.coding[0].display = "Moč (barva) (U; barva [-] *)"
* code.text = "Moč barva"

* subject = Reference(urn:uuid:c60b7c0e-0d8c-4e43-9f52-86d1dcf1a43c)

* performer[+] = Reference(urn:uuid:fab321ab-7777-4444-cccc-abcdefabcdef)
* performer[=].extension[performerFunction].valueCodeableConcept = $performer-function#PPRF "Primary performer"

* performer[+] = Reference(urn:uuid:aabbccdd-1111-4222-9333-ffeeddccbbcc)
* performer[=].extension[performerFunction].valueCodeableConcept = $performer-function#LA "Legal authenticator"

* specimen = Reference(urn:uuid:4c7a1d2f-89b3-41e5-a6f2-3b9d7c5e0a21)

* effectiveDateTime = "2025-04-24T09:00:00+02:00"
* issued = "2025-04-24T10:00:00+02:00"

* valueCodeableConcept.text = "žlutá"

* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
