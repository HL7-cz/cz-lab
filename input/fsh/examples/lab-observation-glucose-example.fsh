Instance: CZ-LabResult-Observation-Example-Glucose
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Title: "Glukóza v plazmě"
Description: "Příklad lab. výsledku numerický, hodnocení pomocí škály, předběžný (neuvolněný)"

* status = #preliminary

* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[studyType] = $loinc#26436-6 "Laboratory studies (set)" 
//* category[specialty] = 

* code.coding[0].system = $nclp
* code.coding[0].code = #21102
* code.coding[0].display = "Glukóza; látková koncentrace; plazma"
* code.text = "Glukóza v plazmě"

* subject = Reference(Zyrgana)
* performer[+] = Reference(practitionerRoleSejdlova)
* specimen = Reference(CZ-LabResult-Specimen-Example)

* effectiveDateTime = "2025-04-24T08:45:00+01:00"
* issued = "2025-04-24T09:30:00+01:00"

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