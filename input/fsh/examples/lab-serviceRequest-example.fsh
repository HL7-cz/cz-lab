/*
Instance: ServiceRequestLabExample
InstanceOf: CZ_ServiceRequestLab
Title: "Example Laboratory Order"
Description: "Example instance of CZ_ServiceRequestLab for a blood test"
Usage: #example

* id = ""
* status = #active
* intent = #order
* identifier.system = "https://example.org/lab-orders"
* identifier.value = "ORD-20250623-1234"
* category[0] = $sct#108252007 "Laboratory procedure" 
* code = $nclp#B0001 "Blood count" 
* subject = Reference()
* specimen[0] = Reference()
* insurance[0] = Reference()
* requisition.system = "https://example.org/composite-id"
* requisition.value = "REQ-20250623-4567"
* authoredOn = "2025-06-23"
* requester = Reference()
*/