/*
Instance: CZ-LabResult-DiagnosticReport-Example2
InstanceOf: CZ_DiagnosticReportLab
Usage: #example
Title: "Lab Result DiagnosticReport"
Description: "Example of DiagnosticReport for lab result"

* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/v2-0074#CH "Chemistry"
* code = http://loinc.org#18719-5 "Chemistry studies (set)"
* subject = Reference(urn:uuid:patient1)
* performer[0] = Reference(urn:uuid:practitioner1)
* effectiveDateTime = "2025-04-24T08:45:00+01:00"
* issued = "2025-04-24T09:30:00+01:00"
* result[0] = Reference(urn:uuid:observation1)
* specimen[0] = Reference(urn:uuid:specimen1)
* extension[DiagnosticReportCompositionR5].valueReference = Reference(urn:uuid:composition1)
*/