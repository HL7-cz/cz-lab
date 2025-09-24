Instance: CZ-LabResult-Observation-Example-Glucose
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Title: "Serum glucose"
Description: "Example of a lab result – numeric, scale-based evaluation, preliminary (unreleased)"

* id = "8d6e1f2b-3a84-4c9d-bc2e-5f71a9d4e6c3"

* status = #preliminary

* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[studyType] = $loinc#26436-6 "Laboratory studies (set)" 
//* category[specialty] = 

* code.coding[0].system = $nclp
* code.coding[0].code = #12355
* code.coding[0].display = "s_Glukóza"
* code.text = "Glukóza v séru"

* subject = Reference(Zyrgana)
* performer[+] = Reference(practitionerRoleSejdlova)
* specimen = Reference(CZ-LabResult-Specimen-Example)

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