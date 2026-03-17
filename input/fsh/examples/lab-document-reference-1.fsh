Instance: GeneratedDocumentReference
InstanceOf: DocumentReference
Usage: #example
Title: "Document Reference to CZ Lab Report Bundle Example"
Description: "Document Reference Lab Report - example of a document reference to the lab bundle"

* masterIdentifier.system = "http://hospital.example.org/lab-results"
* masterIdentifier.value = "LR2345678"
* status = #current
* docStatus = #final
* type = $loinc#11502-2 "Laboratory report"
* category = $loinc#26436-6 "Laboratory studies (set)"
* subject.reference = "Patient/Radim-Podmorsky"
* author[0].reference = "Organization/4ee94491-4a3a-402c-a110-74ac3adb0012"
* custodian.reference = "Organization/4ee94491-4a3a-402c-a110-74ac3adb0012"
* context.period.start = "2019-10-17T09:53:00+01:00"
* content[0].attachment.contentType = #application/fhir+json
* content[0].attachment.url = "https://example.org.org/fhir/Bundle/lab-report-bundle-example"
* description = "Laboratorní nález"
* date = "2025-10-17T09:53:00+01:00"
