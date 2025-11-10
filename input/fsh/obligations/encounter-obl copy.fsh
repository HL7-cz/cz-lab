Profile: CZ_EncounterObligationsImg
Parent: CZ_Encounter
Id: cz-encounter-obl-img
Title:    "Encounter: Obligations"
Description: "This profile defines obligations for an encounter in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule (0, informative)

* serviceProvider insert OblCreator(#SHALL:able-to-populate,L1)

* serviceProvider insert OblCreator(#SHALL:able-to-populate,L2)

//* serviceProvider insert OblCreator(#SHALL:able-to-populate,L3)

* serviceProvider insert OblConsumer(#SHALL:display,L1)
* serviceProvider insert OblConsumer(#SHALL:display,L2)
//* serviceProvider insert OblConsumer(#SHALL:display,L3)