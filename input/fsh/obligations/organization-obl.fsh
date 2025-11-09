Profile: CZ_OrganizationObligationsLab
Parent: CZ_OrganizationCore
Id: cz-organization-obl-lab
Title:    "Organization: Obligations"
Description: "This profile defines obligations for an organization in FHIR for the purpose of this guide."

* insert SetFmmandStatusRule ( 0, informative)

// L1 Creator Obligations ============>
* identifier[KRPZS] insert OblCreator(#SHALL:populate-if-known,L1)
* identifier[KP] insert OblCreator(#SHALL:populate-if-known,L1)
* name insert OblCreator(#SHALL:able-to-populate,L1) 
//* address insert OblCreator(#SHALL:able-to-populate,L1)
//* extension[logo] insert OblCreator(#SHALL:populate-if-known,L1)

// L1 Consumer Obligations ============>
* identifier[KRPZS] insert OblConsumer(#SHALL:process,L1)
* identifier[KP] insert OblConsumer(#SHALL:display,L1)
* name insert OblConsumer(#SHALL:display,L1) 
//* address insert OblConsumer(#SHALL:display,L1)
//* extension[logo] insert OblConsumer(#SHALL:display,L1)


// L2 Creator Obligations ============>
* identifier[KRPZS] insert OblCreator(#SHALL:populate-if-known,L2)
* identifier[KP] insert OblCreator(#SHALL:populate-if-known,L2)
* name insert OblCreator(#SHALL:able-to-populate,L2) 
* address insert OblCreator(#SHALL:able-to-populate,L2)
* extension[logo] insert OblCreator(#SHALL:populate-if-known,L2)

// L2 Consumer Obligations ============>
* identifier[KRPZS] insert OblConsumer(#SHALL:process,L2)
* identifier[KP] insert OblConsumer(#SHALL:display,L2)
* name insert OblConsumer(#SHALL:display,L2) 
* address insert OblConsumer(#SHALL:display,L2)
* extension[logo] insert OblConsumer(#SHALL:display,L2)
/*
// L3 Creator Obligations ============>
* identifier[KRPZS] insert OblCreator(#SHALL:populate-if-known,L3)
* identifier[KP] insert OblCreator(#SHALL:populate-if-known,L2)
* name insert OblCreator(#SHALL:able-to-populate,L3) 
* address insert OblCreator(#SHALL:able-to-populate,L3)
* extension[logo] insert OblCreator(#SHALL:populate-if-known,L3)

// L3 Consumer Obligations ============>
* identifier[KRPZS] insert OblConsumer(#SHALL:process,L3)
* identifier[KP] insert OblConsumer(#SHALL:display,L3)
* name insert OblConsumer(#SHALL:display,L3) 
* address insert OblConsumer(#SHALL:display,L3)
* extension[logo] insert OblConsumer(#SHALL:display,L3)
*/