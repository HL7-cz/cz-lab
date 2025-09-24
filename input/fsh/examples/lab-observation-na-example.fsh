Instance: CZ-LabResult-Observation-Example-Sodium-Failed
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Title: "Sodík v séru"
Description: "Example of a lab result not delivered due to a broken tube, with a comment on the result"

* id = "2fb0c9d4-7e12-47a6-9a3b-1c5e8d2f4a76"

* status = #final

* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[studyType] = $loinc#26436-6 "Laboratory studies (set)"
//* category[specialty] =

* code.coding[0].system = $nclp
* code.coding[0].code = #05272
* code.coding[0].display = "s_Sodík"
* code.text = "Sodík v séru"

* subject = Reference(Zyrgana)
* performer[+] = Reference(practitionerRoleSejdlova)
//* specimen = Reference(CZ-LabResult-Specimen-Damaged-Example)

* effectiveDateTime = "2025-04-24T08:45:00+02:00"
* issued = "2025-04-24T09:30:00+02:00"

* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-performed "Not Performed"

* note.text = "Vzorek byl poškozen při transportu, výsledek nebylo možné změřit."
