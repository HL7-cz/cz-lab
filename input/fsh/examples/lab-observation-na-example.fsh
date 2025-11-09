Instance: CZ-LabResult-Observation-Example-Sodium-Failed
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Title: "Serum sodium"
Description: "Example of a lab result not delivered due to a broken tube, with a comment on the result"

* id = "2fb0c9d4-7e12-47a6-9a3b-1c5e8d2f4a76"

* status = #final

* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[studyType] = $loinc#26436-6 //"Laboratory studies (set)"
//* category[specialty] =

* code.coding[0].system = $nclp
* code.coding[0].code = #05272
* code.coding[0].display = "Na (S; látková konc. [mmol/l] ISE s dilucí)"
* code.text = "S_Sodík"

* subject = Reference(urn:uuid:c60b7c0e-0d8c-4e43-9f52-86d1dcf1a43c)
* performer[+] = Reference(urn:uuid:fab321ab-7777-4444-cccc-abcdefabcdef)
* specimen = Reference(urn:uuid:6e2c1f9a-54b7-4d3e-82a1-7c4f9e2b0d85)

* effectiveDateTime = "2025-04-24T08:45:00+02:00"
* issued = "2025-04-24T09:30:00+02:00"

* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-performed "Not Performed"

* note.text = "Vzorek byl poškozen při transportu, výsledek nebylo možné změřit."
