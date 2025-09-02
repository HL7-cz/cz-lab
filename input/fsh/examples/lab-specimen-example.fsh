Instance: CZ-LabResult-Specimen-Example
InstanceOf: CZ_SpecimenLab
Usage: #example
Title: "CZ Lab Order Specimen Example"
Description: "Czech Lab Order - example of a specimen"


* type = http://terminology.hl7.org/CodeSystem/v2-0487#BLD "Whole blood"
* subject = Reference(Zyrgana)
* receivedTime = "2025-04-24T09:30:00+01:00"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">-</div>"
* collection.collectedDateTime = "2025-04-24T08:45:00+02:00"
* container.type = $sct#706049000 "Blood collection tube"



Instance: CZ-LabResult-Specimen-Urine-Example
InstanceOf: CZ_SpecimenLab
Usage: #example
Title: "CZ Lab Order Specimen Example - Urine"
Description: "Czech Lab Order - example of a urine specimen"

* type = http://terminology.hl7.org/CodeSystem/v2-0487#UR "Urine"
* subject = Reference(Zyrgana)
* receivedTime = "2025-04-24T08:40:00+01:00"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vzorek moči – ranní moč</div>"
* collection.collectedDateTime = "2025-04-24T07:30:00+02:00"
* collection.method = $sct#429536007 "Midstream urine specimen collection"
* container.type = $sct#706050000 "Urine specimen container"
* container.description = "Sterilní plastová nádobka na moč, 50 ml"



Instance: CZ-LabResult-Specimen-Example-2
InstanceOf: CZ_SpecimenLab
Usage: #example
Title: "CZ Lab Order Specimen Example"
Description: "Czech Lab Order - example of a specimen"


* type = http://terminology.hl7.org/CodeSystem/v2-0487#BLD "Whole blood"
* subject = Reference(Zyrgana)
* receivedTime = "2025-04-24T08:32:00+01:00"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">-</div>"
* collection.collectedDateTime = "2025-04-24T08:00:00+02:00"
* container.type = $sct#706049000 "Blood collection tube"


Instance: CZ-LabResult-Specimen-Damaged-Example
InstanceOf: CZ_SpecimenLab
Usage: #example
Title: "CZ Lab Order Specimen Example"
Description: "Czech Lab Order - example of a specimen"


* type = http://terminology.hl7.org/CodeSystem/v2-0487#BLD "Whole blood"
* subject = Reference(Zyrgana)
* receivedTime = "2025-04-24T09:30:00+01:00"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">-</div>"
* collection.collectedDateTime = "2025-04-24T08:45:00+02:00"
* container.type = $sct#706049000 "Blood collection tube"
