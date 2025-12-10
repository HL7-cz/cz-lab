Instance: CZ-LabResult-ServiceRequest-Example
InstanceOf: CZ_ServiceRequestLab
Title: "Example Laboratory Order"
Description: "Example instance of CZ_ServiceRequestLab for a serum glucose test with urgent priority"
Usage: #example

* id = "5f9c2e8d-0b74-4dbb-8af3-3e6d2c1191a7"

* status = #active
* intent = #order
* identifier.system = "https://example.org/lab-orders"
* identifier.value = "ORD-20250623-1234"
* category[0] = $sct#108252007 "Laboratory procedure" 
* code = $nclp#01898 //"glucose" 
* subject = Reference(urn:uuid:c60b7c0e-0d8c-4e43-9f52-86d1dcf1a43c)
* specimen[0] = Reference(urn:uuid:6e2c1f9a-54b7-4d3e-82a1-7c4f9e2b0d85)
* insurance[0] = Reference(urn:uuid:b4e1a7f0-93f3-4d86-a3b1-7d15e42b12f8)
* requisition.system = "https://example.org/composite-id"
* requisition.value = "REQ-20250623-4567"
* authoredOn = "2025-04-24"
* requester = Reference(urn:uuid:c2a7b9de-3b44-4e6f-9e51-9a1b8f1c82f4)
* priority = #urgent


Instance: CZ-LabResult-Coverage-Example
InstanceOf: CZ_Coverage
Title: "Coverage example"
Usage: #example
Description: "Example of insurance by a health insurance company"

* id = "b4e1a7f0-93f3-4d86-a3b1-7d15e42b12f8"
* status = #active
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/rc"
* identifier[=].value = "8203171234"
* identifier[=].use = #official

* beneficiary = Reference(urn:uuid:c60b7c0e-0d8c-4e43-9f52-86d1dcf1a43c)
* payor = Reference(urn:uuid:d7a9324a-6d45-420a-bd8d-0a2c66e8e40c)

Instance: CZ-LabResult-Payor-Example
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "Example of insurance organisation"
Title: "Organization - Healthcare insurance company"

* id = "d7a9324a-6d45-420a-bd8d-0a2c66e8e40c"
* name = "Všeobecná zdravotní pojišťovna ČR"
* identifier[KP].system =  "https://ncez.mzcr.cz/fhir/sid/kp"
* identifier[KP].value = "111"