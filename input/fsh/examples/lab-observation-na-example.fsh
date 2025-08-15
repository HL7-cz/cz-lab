Instance: CZ-LabResult-Observation-Example-Sodium-Failed
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Title: "Sodík v séru"
Description: "Příklad lab. výsledku, který nebyl dodán z důvodu rozbité zkumavky, komentář k výsledku"

* status = #final

* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[studyType] = $loinc#26436-6 "Laboratory studies (set)" 
//* category[specialty] = 

* code.coding[0].system = $nclp
* code.coding[0].code = #05272
* code.coding[0].display = "Sodík; látková koncentrace; sérum/plazma"
* code.text = "Sodík v séru"

* subject = Reference(Zyrgana)
* performer[+] = Reference(practitionerRoleSejdlova)
* specimen = Reference(CZ-LabResult-Specimen-Damaged-Example)

* effectiveDateTime = "2025-04-24T08:45:00+01:00"
* issued = "2025-04-24T09:30:00+01:00"

* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-performed "Not Performed"

* note.text = "Vzorek byl poškozen při transportu, výsledek nebylo možné změřit."
