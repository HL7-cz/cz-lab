Instance: CZ-LabResult-Observation-Example-Glucose
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Title: "Serum glucose"
Description: "Example of a lab result – numeric, scale-based evaluation, preliminary (unreleased), accredited, urgent priority"

* id = "8d6e1f2b-3a84-4c9d-bc2e-5f71a9d4e6c3"

* status = #preliminary

* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[studyType] = $loinc#26436-6 //"Laboratory studies (set)" 
//* category[specialty] = 

* code.coding[0].system = $nclp
* code.coding[0].code = #12355
* code.coding[0].display = "Glukóza (S; látková konc. [mmol/l] Absorpční spektrofotometrie)"
* code.text = "S_Glukóza"

* subject = Reference(urn:uuid:c60b7c0e-0d8c-4e43-9f52-86d1dcf1a43c)
* performer[+] = Reference(urn:uuid:fab321ab-7777-4444-cccc-abcdefabcdef)
* specimen = Reference(urn:uuid:fa3d8c2e-71b4-4e9c-9d2f-85b0a1f7c934)

* basedOn = Reference(urn:uuid:5f9c2e8d-0b74-4dbb-8af3-3e6d2c1191a7)

* effectiveDateTime = "2025-04-24T08:45:00+02:00"
* issued = "2025-04-24T09:30:00+02:00"

* valueQuantity.value = 5.2
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = $ucum
* valueQuantity.code = #mmol/L

* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"

* referenceRange[0].low.value = 3.9
* referenceRange[0].low.unit = "mmol/L"
* referenceRange[0].low.system = $ucum
* referenceRange[0].low.code = #mmol/L

* referenceRange[0].high.value = 5.8
* referenceRange[0].high.unit = "mmol/L"
* referenceRange[0].high.system = $ucum
* referenceRange[0].high.code = #mmol/L

* extension[accreditation].valueBoolean = true