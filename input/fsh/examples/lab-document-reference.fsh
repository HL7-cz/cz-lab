/*
Instance: CZ-LabReport-Document-Reference-Example
InstanceOf: DocumentReference
Usage: #example
Title: "Document Reference to CZ Lab Report Bundle Example"
Description: "Document Reference Lab Report - example of a document reference to lab bundle"

* masterIdentifier.system = "http://hospital.example.org/lab-results"
* masterIdentifier.value = "LR2345678"
* status = #current
* type = $loinc#11502-2 "Laboratory report"
* category = $loinc#LP29684-5 "Laboratory studies (set)"
* subject = Reference(Radim-Podmorsky)
* date = "2025-10-17T09:53:00+01:00"
 */