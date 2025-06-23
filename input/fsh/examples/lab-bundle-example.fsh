Instance: CZ-LabResult-Bundle-Example
InstanceOf: CZ_BundleLab
Usage: #example
Title: "CZ Lab Result Bundle Example"
Description: "Czech Lab Result - example of a bundle containing lab observation(s)"

* identifier.system = "http://hospital.example.org/lab-results"
* identifier.value = "LR123456"
* type = #document
* timestamp = "2025-04-25T10:30:00+01:00"
//composition
* entry[composition].fullUrl = "urn:uuid:composition1"
* entry[composition].resource = CZ-LabResult-Composition-Example
//patient
* entry[patient].fullUrl = "urn:uuid:patient1"
* entry[patient].resource = Mracena
//specimen
//* entry[specimen].fullUrl = "urn:uuid:specimen1"
//* entry[specimen].resource = CZ-LabResult-Specimen-Example
//coverage
//* entry[coverage].fullUrl = "urn:uuid:coverage1"
//* entry[coverage].resource = CZ-Coverage-SelfPay
//practitioner
* entry[practitioner].fullUrl = "urn:uuid:practitioner1"
* entry[practitioner].resource = Practitioner

* entry[diagnosticReport].fullUrl = "urn:uuid:diagnosticReport1"
* entry[diagnosticReport].resource = CZ-LabResult-DiagnosticReport-Example

* entry[observation].fullUrl = "urn:uuid:observation1"
* entry[observation].resource = CZ-LabResult-Observation-Example
