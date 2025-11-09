Profile: CZ_DiagnosticReportObligationsLab
Parent: CZ_DiagnosticReportLab
Id: cz-diagnosticReport-obl-lab
Title:    "Diagnostic Report: Obligations"
Description: "This profile defines obligations for a diagnostic report in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

* status insert OblCreator(#SHALL:able-to-populate,L1)
* category insert OblCreator(#SHALL:able-to-populate,L1)
* code insert OblCreator(#SHALL:able-to-populate,L1)
* subject insert OblCreator(#SHALL:able-to-populate,L1)
* effective[x] insert OblCreator(#SHOULD:able-to-populate,L1)
* issued insert OblCreator(#SHALL:able-to-populate,L1)
* performer insert OblCreator(#SHOULD:able-to-populate,L1)
* specimen insert OblCreator(#SHOULD:able-to-populate,L1)

* status insert OblConsumer(#SHALL:display,L1)
* category insert OblConsumer(#SHALL:display,L1)
* code insert OblConsumer(#SHALL:display,L1)
* subject insert OblConsumer(#SHALL:display,L1)
* effective[x] insert OblConsumer(#SHOULD:display,L1)
* issued insert OblConsumer(#SHALL:display,L1)
* performer insert OblConsumer(#SHOULD:display,L1)
* specimen insert OblConsumer(#SHOULD:display,L1)

* text insert OblCreator(#SHALL:able-to-populate,L2)
* effectiveDateTime insert OblCreator(#SHALL:populate-if-known,L2)
* performer insert OblCreator(#SHALL:able-to-populate,L2)
* conclusion insert OblCreator(#SHALL:able-to-populate,L2)
* conclusionCode insert OblCreator(#SHOULD:able-to-populate,L2)
* result insert OblCreator(#SHOULD:able-to-populate,L2)
* presentedForm insert OblCreator(#SHALL:able-to-populate,L2)
* media insert OblCreator(#SHOULD:able-to-populate,L2)
/*
* text insert OblCreator(#SHALL:able-to-populate,L3)
* effectiveDateTime insert OblCreator(#SHALL:populate-if-known,L3)
* performer insert OblCreator(#SHALL:able-to-populate,L3)
* conclusion insert OblCreator(#SHALL:able-to-populate,L3)
* conclusionCode insert OblCreator(#SHALL:able-to-populate,L3)
* result insert OblCreator(#SHALL:able-to-populate,L3)
* presentedForm insert OblCreator(#SHALL:able-to-populate,L3)
* media insert OblCreator(#SHALL:able-to-populate,L3)
*/

* text insert OblCreator(#SHALL:display,L2)
* effectiveDateTime insert OblCreator(#SHALL:display,L2)
* performer insert OblCreator(#SHALL:display,L2)
* conclusion insert OblCreator(#SHALL:display,L2)
* conclusionCode insert OblCreator(#SHOULD:display,L2)
* result insert OblCreator(#SHOULD:display,L2)
* presentedForm insert OblConsumer(#SHALL:display,L2)
* media insert OblConsumer(#SHOULD:display,L2)
/*
* text insert OblCreator(#SHALL:display,L3)
* effectiveDateTime insert OblCreator(#SHALL:display,L3)
* performer insert OblCreator(#SHALL:display,L3)
* conclusion insert OblCreator(#SHALL:display,L3)
* conclusionCode insert OblCreator(#SHALL:display,L3)
* result insert OblCreator(#SHALL:display,L3)
* presentedForm insert OblConsumer(#SHALL:display,L3)
* media insert OblConsumer(#SHALL:display,L3)
*/