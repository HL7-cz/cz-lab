Profile: CZ_ServiceRequestObligationsLab
Parent: CZ_ServiceRequestLab
Id: cz-serviceRequest-obl-lab
Title:    "Service Request: Obligations"
Description: "This profile defines obligations for an order information in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

* identifier insert OblCreator(#SHOULD:able-to-populate,L2)
* authoredOn insert OblCreator(#SHOULD:able-to-populate,L2)   
* occurrenceDateTime insert OblCreator(#SHOULD:able-to-populate,L2)
* reasonReference insert OblCreator(#SHOULD:able-to-populate,L2)

* identifier insert OblCreator(#SHALL:able-to-populate,L2)
* authoredOn insert OblCreator(#SHALL:able-to-populate,L2)   
* occurrenceDateTime insert OblCreator(#SHALL:able-to-populate,L2)
* reasonReference insert OblCreator(#SHALL:able-to-populate,L2)

* identifier insert OblConsumer(#SHOULD:display,L2)
* authoredOn insert OblConsumer(#SHOULD:display,L2)   
* occurrenceDateTime insert OblConsumer(#SHOULD:display,L2)
* reasonReference insert OblConsumer(#SHOULD:display,L2)

* identifier insert OblConsumer(#SHALL:display,L2)
* authoredOn insert OblConsumer(#SHALL:display,L2)   
* occurrenceDateTime insert OblConsumer(#SHALL:display,L2)
* reasonReference insert OblConsumer(#SHALL:display,L2)


