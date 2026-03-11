Instance: GeneratedDocumentReference
InstanceOf: DocumentReference
Usage: #example
Title: "Document Reference to CZ Lab Report Bundle Example"
Description: "Document Reference Lab Report - example of a document reference to the lab bundle"


* status = #current
* docStatus = #final
* type.coding[0].system = "http://loinc.org"
* type.coding[0].code = #11502-2
* type.coding[0].display = "Laboratory report"
* category[0].coding[0].system = "http://loinc.org"
* category[0].coding[0].code = #26436-6
* category[0].coding[0].display = "Laboratory studies (set)"
* subject.reference = "Patient/Radim-Podmorsky"
* author[0].reference = "Organization/b8ad152c-2c7d-54cb-a80f-5eff76fa6b32"
* custodian.reference = "Organization/b8ad152c-2c7d-54cb-a80f-5eff76fa6b32"
* context.period.start = "2019-10-17T09:53:00+01:00"
* content[0].attachment.contentType = #application/fhir+json
* content[0].attachment.url = "https://example.org.org/fhir/Bundle/lab-report-bundle-example"
* description = "Laboratorní nález"