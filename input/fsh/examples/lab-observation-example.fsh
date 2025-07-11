Instance: CZ-LabResult-Observation-Example
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Title: "Glukóza v plazmě"
Description: "Příklad laboratorního výsledku pro glukózu v plazmě s využitím NČLP kódu"

* status = #final

* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[studyType] = http://ncez.mzcr.cz/fhir/CodeSystem/cz-lab-study-types#BIO "Biochemie"
* category[specialty] = http://ncez.mzcr.cz/fhir/CodeSystem/cz-lab-specialties#BCH "Klinická biochemie"

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
* valueQuantity.code = $ucum#mmol/L

* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"

* referenceRange[0].low.value = 3.9
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#mmol/L
* referenceRange[0].high.value = 5.8
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#mmol/L