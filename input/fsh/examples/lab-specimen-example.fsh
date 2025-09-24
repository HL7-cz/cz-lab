Instance: CZ-LabResult-Specimen-Example
InstanceOf: CZ_SpecimenLab
Usage: #example
Title: "CZ Lab Order Specimen Example"
Description: "Czech Lab Order - example of a specimen"

* id = "fa3d8c2e-71b4-4e9c-9d2f-85b0a1f7c934"

* type = http://terminology.hl7.org/CodeSystem/v2-0487#BLD "Whole blood"
* subject = Reference(Zyrgana)
* receivedTime = "2025-04-24T07:30:00+02:00"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">-</div>"
* collection.collectedDateTime = "2025-04-24T06:30:00+02:00"
* container.type = $sct#706049000 "Blood collection tube"



Instance: CZ-LabResult-Specimen-Urine-Example
InstanceOf: CZ_SpecimenLab
Usage: #example
Title: "CZ Lab Order Specimen Example - Urine"
Description: "Czech Lab Order - example of a urine specimen"

* id = "4c7a1d2f-89b3-41e5-a6f2-3b9d7c5e0a21"

* type = http://terminology.hl7.org/CodeSystem/v2-0487#UR "Urine"
* subject = Reference(Zyrgana)
* receivedTime = "2025-04-24T07:31:00+02:00"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vzorek moči – ranní moč</div>"
* collection.collectedDateTime = "2025-04-24T06:33:00+02:00"
* collection.method = $sct#429536007 "Midstream urine specimen collection"
* container.type = $sct#706050000 "Urine specimen container"
* container.description = "Sterilní plastová nádobka na moč, 50 ml"



Instance: CZ-LabResult-Specimen-Example-2
InstanceOf: CZ_SpecimenLab
Usage: #example
Title: "CZ Lab Order Specimen Example"
Description: "Czech Lab Order - example of a specimen"

* id = "92f1c7b5-3a4e-4d8f-97c2-1b6e0f8d2a43"

* type = http://terminology.hl7.org/CodeSystem/v2-0487#BLD "Whole blood"
* subject = Reference(Zyrgana)
* receivedTime = "2025-04-24T07:32:00+02:00"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">-</div>"
* collection.collectedDateTime = "2025-04-24T06:31:00+02:00"
* container.type = $sct#706049000 "Blood collection tube"


Instance: CZ-LabResult-Specimen-Damaged-Example
InstanceOf: CZ_SpecimenLab
Usage: #example
Title: "CZ Lab Order Specimen Example"
Description: "Czech Lab Order - example of a specimen"

* id = "6e2c1f9a-54b7-4d3e-82a1-7c4f9e2b0d85"

* type = http://terminology.hl7.org/CodeSystem/v2-0487#BLD "Whole blood"
* subject = Reference(Zyrgana)
* receivedTime = "2025-04-24T07:30:00+02:00"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">-</div>"
* collection.collectedDateTime = "2025-04-24T06:32:00+02:00"
* container.type = $sct#706049000 "Blood collection tube"
