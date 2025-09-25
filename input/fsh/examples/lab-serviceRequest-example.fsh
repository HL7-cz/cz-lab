Instance: CZ-LabResult-ServiceRequest-Example
InstanceOf: CZ_ServiceRequestLab
Title: "Example Laboratory Order"
Description: "Example instance of CZ_ServiceRequestLab for a blood test"
Usage: #example

* status = #active
* intent = #order
* identifier.system = "https://example.org/lab-orders"
* identifier.value = "ORD-20250623-1234"
* category[0] = $sct#108252007 "Laboratory procedure" 
* code = $nclp#02505 "Na" 
* subject = Reference(Zyrgana)
* specimen[0] = Reference(CZ-LabResult-Specimen-Example)
* insurance[0] = Reference(CZ-LabResult-Coverage-Example)
* requisition.system = "https://example.org/composite-id"
* requisition.value = "REQ-20250623-4567"
* authoredOn = "2025-06-23"
* requester = Reference(practitionerRoleVycichlo)


Instance: CZ-LabResult-Coverage-Example
InstanceOf: CZ_Coverage
Title: "Coverage example"
Usage: #example
Description: "Example of insurance by a health insurance company"

* status = #active
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/rc"
* identifier[=].value = "8203171234"
* identifier[=].use = #official

* beneficiary = Reference(Zyrgana)
* payor = Reference(CZ-LabResult-Payor-Example)

Instance: CZ-LabResult-Payor-Example
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "Example of insurance organisation"
Title: "Organization - Healthcare insurance company"

* name = "Všeobecná zdravotní pojišťovna ČR"
* identifier[KP].system =  "https://ncez.mzcr.cz/fhir/sid/kp"
* identifier[KP].value = "111"