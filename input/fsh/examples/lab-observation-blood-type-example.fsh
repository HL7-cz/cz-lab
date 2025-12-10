Instance: CZ-LabResult-Observation-Example-Blood-Type
InstanceOf: CZ_ObservationResultLaboratory
Usage: #example
Title: "Blood Type"
Description: "Example of a lab result – coded"

* id = "5f3b0d47-2c3c-4c54-97f1-0bb8cc3e4e4f"

* status = #final

* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[studyType] = $loinc#26436-6 //"Laboratory studies (set)" 
//* category[specialty] = 

* code.coding[0].system = $nclp
* code.coding[0].code = #05162
* code.coding[0].display = "Krevní skupina AB0 RhD kompletní (B; přítomnost [-] Aglutinace (gel))"
* code.text = "Krevní skupina AB0 RhD"

* subject = Reference(urn:uuid:c60b7c0e-0d8c-4e43-9f52-86d1dcf1a43c)
* performer[+] = Reference(urn:uuid:fab321ab-7777-4444-cccc-abcdefabcdef)

* effectiveDateTime = "2025-04-24T09:00:00+02:00"
* issued = "2025-04-24T10:00:00+02:00"

* valueCodeableConcept = $sct#278151004 // Blood group AB Rh(D) positive
