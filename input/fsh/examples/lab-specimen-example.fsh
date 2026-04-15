Instance: CZ-LabResult-Specimen-Example
InstanceOf: CZ_SpecimenLab
Usage: #example
Title: "CZ Lab Order Specimen Example - Whole Blood"
Description: "Czech Lab Order - example of a specimen"

* id = "fa3d8c2e-71b4-4e9c-9d2f-85b0a1f7c934"

//* type = http://terminology.hl7.org/CodeSystem/v2-0487#BLD "Whole blood"
* type = $sct#258580003	"Whole blood specimen"
* subject = Reference(urn:uuid:c60b7c0e-0d8c-4e43-9f52-86d1dcf1a43c)
* receivedTime = "2025-04-24T07:30:00+02:00"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">-</div>"
* collection.collectedDateTime = "2025-04-24T06:30:00+02:00"
* container.type = $sct#706052002 "Evacuated blood collection tube" //"Blood collection tube"



Instance: CZ-LabResult-Specimen-Urine-Example
InstanceOf: CZ_SpecimenLab
Usage: #example
Title: "CZ Lab Order Specimen Example - Urine"
Description: "Czech Lab Order - example of a urine specimen"

* id = "4c7a1d2f-89b3-41e5-a6f2-3b9d7c5e0a21"

//* type = http://terminology.hl7.org/CodeSystem/v2-0487#UR "Urine"
* type = $sct#122575003 "Urine specimen"
* subject = Reference(urn:uuid:c60b7c0e-0d8c-4e43-9f52-86d1dcf1a43c)
* receivedTime = "2025-04-24T07:31:00+02:00"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vzorek moči – ranní moč</div>"
* collection.collectedDateTime = "2025-04-24T06:33:00+02:00"
* collection.method = $sct#698007008 "Collection of early morning mid stream specimen of urine by clean catch " //"Midstream urine specimen collection"
* container.type = $sct#702244006 "Sterile urine specimen container" //"Urine specimen container"
* container.description = "Sterilní plastová nádobka na moč, 50 ml"



Instance: CZ-LabResult-Specimen-Example-2
InstanceOf: CZ_SpecimenLab
Usage: #example
Title: "CZ Lab Order Specimen Example - Whole Blood 2"
Description: "Czech Lab Order - example of a specimen"

* id = "92f1c7b5-3a4e-4d8f-97c2-1b6e0f8d2a43"

//* type = http://terminology.hl7.org/CodeSystem/v2-0487#BLD "Whole blood"
* type = $sct#258580003	"Whole blood specimen"
* subject = Reference(urn:uuid:c60b7c0e-0d8c-4e43-9f52-86d1dcf1a43c)
* receivedTime = "2025-04-24T07:32:00+02:00"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">-</div>"
* collection.collectedDateTime = "2025-04-24T06:31:00+02:00"
//* container.type = $sct# //"Blood collection tube"


Instance: CZ-LabResult-Specimen-Damaged-Example
InstanceOf: CZ_SpecimenLab
Usage: #example
Title: "CZ Lab Order Specimen Example - Whole Blood 3"
Description: "Czech Lab Order - example of a specimen"

* id = "6e2c1f9a-54b7-4d3e-82a1-7c4f9e2b0d85"

* type = $sct#258580003	"Whole blood specimen"
//* type = http://terminology.hl7.org/CodeSystem/v2-0487#BLD "Whole blood"
* subject = Reference(urn:uuid:c60b7c0e-0d8c-4e43-9f52-86d1dcf1a43c)
* receivedTime = "2025-04-24T07:30:00+02:00"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">-</div>"
* collection.collectedDateTime = "2025-04-24T06:32:00+02:00"
//* container.type = $sct# //"Blood collection tube"
