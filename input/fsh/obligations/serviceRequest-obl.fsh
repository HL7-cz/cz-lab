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
* priority insert OblCreator(#SHOULD:able-to-populate,L2)
* doNotPerform insert OblCreator(#SHOULD:able-to-populate,L2)
* orderDetail insert OblCreator(#SHOULD:able-to-populate,L2)
* reasonReference insert OblCreator(#SHOULD:able-to-populate,L2)

* identifier insert OblCreator(#SHALL:able-to-populate,L3)
* authoredOn insert OblCreator(#SHALL:able-to-populate,L3)   
* priority insert OblCreator(#SHALL:able-to-populate,L3)
* doNotPerform insert OblCreator(#SHALL:able-to-populate,L3)
* occurrenceDateTime insert OblCreator(#SHALL:able-to-populate,L3)
* orderDetail insert OblCreator(#SHALL:able-to-populate,L3)
* reasonReference insert OblCreator(#SHALL:able-to-populate,L3)

* identifier insert OblConsumer(#SHOULD:display,L2)
* authoredOn insert OblConsumer(#SHOULD:display,L2)   
* priority insert OblConsumer(#SHOULD:display,L2)
* doNotPerform insert OblConsumer(#SHOULD:display,L2)
* occurrenceDateTime insert OblConsumer(#SHOULD:display,L2)
* orderDetail insert OblConsumer(#SHOULD:display,L2)
* code.text insert OblConsumer(#SHOULD:display,L2)
* reasonReference insert OblConsumer(#SHOULD:display,L2)

* identifier insert OblConsumer(#SHALL:display,L3)
* authoredOn insert OblConsumer(#SHALL:display,L3)   
* priority insert OblConsumer(#SHALL:display,L3)
* doNotPerform insert OblConsumer(#SHALL:display,L3)
* occurrenceDateTime insert OblConsumer(#SHALL:display,L3)
* orderDetail insert OblConsumer(#SHALL:display,L3)
* code.text insert OblConsumer(#SHALL:display,L3)
* reasonReference insert OblConsumer(#SHALL:display,L3)


