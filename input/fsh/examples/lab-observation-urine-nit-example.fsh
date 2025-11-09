Instance: CZ-LabResult-Observation-Example-Urine-Leukocytes
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Title: "Urine nitrites"
Description: "Example of a lab result – coded text"

* id = "b4e2d7a9-63c1-44f8-b0a5-2e9d1c7a3f56"

* status = #final

* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[studyType] = $loinc#26436-6 //"Laboratory studies (set)" 
//* category[specialty] = 

* code.coding[0].system = $nclp
* code.coding[0].code = #03399
* code.coding[0].display = "Nitrity (U; arb. konc. [arb.j.] Testační proužek)"
* code.text = "U_nitrity"

* subject = Reference(urn:uuid:c60b7c0e-0d8c-4e43-9f52-86d1dcf1a43c)

* performer[+] = Reference(urn:uuid:fab321ab-7777-4444-cccc-abcdefabcdef)
* performer[=].extension[performerFunction].valueCodeableConcept = $performer-function#PPRF "Primary performer"

* performer[+] = Reference(urn:uuid:aabbccdd-1111-4222-9333-ffeeddccbbcc)
* performer[=].extension[performerFunction].valueCodeableConcept = $performer-function#LA "Legal authenticator"

* specimen = Reference(urn:uuid:4c7a1d2f-89b3-41e5-a6f2-3b9d7c5e0a21)

* effectiveDateTime = "2025-04-24T09:00:00+02:00"
* issued = "2025-04-24T10:00:00+02:00"

* valueCodeableConcept = $sct#260385009 //"Negative"

* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"