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
* code = $nclp#02505 //"Na" 
* subject = Reference(urn:uuid:c60b7c0e-0d8c-4e43-9f52-86d1dcf1a43c)
* specimen[0] = Reference(urn:uuid:fa3d8c2e-71b4-4e9c-9d2f-85b0a1f7c934)
* insurance[0] = Reference(CZ-LabResult-Coverage-Example)
* requisition.system = "https://example.org/composite-id"
* requisition.value = "REQ-20250623-4567"
* authoredOn = "2025-06-23"
* requester = Reference(urn:uuid:99988877-aaaa-4000-bbbb-cceeddccbbaa)


Instance: CZ-LabResult-Coverage-Example
InstanceOf: CZ_Coverage
Title: "Coverage example"
Usage: #example
Description: "Example of insurance by a health insurance company"

* status = #active
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/rc"
* identifier[=].value = "8203171234"
* identifier[=].use = #official

* beneficiary = Reference(urn:uuid:c60b7c0e-0d8c-4e43-9f52-86d1dcf1a43c)
* payor = Reference(CZ-LabResult-Payor-Example)

Instance: CZ-LabResult-Payor-Example
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "Example of insurance organisation"
Title: "Organization - Healthcare insurance company"

* name = "Všeobecná zdravotní pojišťovna ČR"
* identifier[KP].system =  "https://ncez.mzcr.cz/fhir/sid/kp"
* identifier[KP].value = "111"