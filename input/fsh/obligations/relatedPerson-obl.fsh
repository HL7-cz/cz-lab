Profile: CZ_RelatedPersonObligationsImg
Parent: CZ_RelatedPersonCore
Id: cz-relatedPerson-obl-img
Title:    "Related Person: Obligations"
Description: "This profile defines obligations for a related person in FHIR for the purpose of this guide."

* insert SetFmmandStatusRule ( 0, informative)

// L2
* identifier insert OblCreator(#SHALL:populate-if-known,L2)
* relationship insert OblCreator(#SHALL:able-to-populate,L2)
* name.given insert OblCreator(#SHALL:able-to-populate,L2)
* name.family insert OblCreator(#SHALL:able-to-populate,L2)
* address insert OblCreator(#SHALL:able-to-populate,L2)
* telecom insert OblCreator(#SHALL:able-to-populate,L2)

// L2
* identifier insert OblConsumer(#SHALL:display,L2)
* relationship insert OblConsumer(#SHALL:display,L2)
* name.given insert OblConsumer(#SHALL:display,L2)
* name.family insert OblConsumer(#SHALL:display,L2)
* address insert OblConsumer(#SHALL:display,L2)
* telecom insert OblConsumer(#SHALL:display,L2)

// L3
* identifier insert OblCreator(#SHALL:populate-if-known,L3)
* relationship insert OblCreator(#SHALL:able-to-populate,L3)
* name.given insert OblCreator(#SHALL:able-to-populate,L3)
* name.family insert OblCreator(#SHALL:able-to-populate,L3)
* address insert OblCreator(#SHALL:able-to-populate,L3)
* telecom insert OblCreator(#SHALL:able-to-populate,L3)

// L3
* identifier insert OblConsumer(#SHALL:display,L3)
* relationship insert OblConsumer(#SHALL:display,L3)
* name.given insert OblConsumer(#SHALL:display,L3)
* name.family insert OblConsumer(#SHALL:display,L3)
* address insert OblConsumer(#SHALL:display,L3)
* telecom insert OblConsumer(#SHALL:display,L3)
