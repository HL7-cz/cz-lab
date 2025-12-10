Profile: CZ_SpecimenObligationsLab
Parent: CZ_SpecimenLab
Id: cz-specimen-obl-lab
Title:    "Specimen: Obligations"
Description: "This profile defines obligations for a specimen in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

* identifier insert OblCreator(#SHOULD:able-to-populate,L1)
* type insert OblCreator(#SHOULD:able-to-populate,L1)
* subject insert OblCreator(#SHOULD:able-to-populate,L1)
* collection.collectedDateTime insert OblCreator(#SHOULD:able-to-populate,L1)

* identifier insert OblConsumer(#SHOULD:display,L1)
* type insert OblConsumer(#SHOULD:display,L1)
* subject insert OblConsumer(#SHOULD:display,L1)
* collection.collectedDateTime insert OblConsumer(#SHOULD:display,L1)


* identifier insert OblCreator(#SHOULD:able-to-populate,L2)
* subject insert OblCreator(#SHOULD:able-to-populate,L2)
* type insert OblCreator(#SHOULD:able-to-populate,L2)
* collection.collectedDateTime insert OblCreator(#SHOULD:able-to-populate,L2)
* collection.bodySite insert OblCreator(#SHOULD:able-to-populate,L2)
* collection.method insert OblCreator(#SHOULD:able-to-populate,L2)
* receivedTime insert OblCreator(#SHOULD:able-to-populate,L2)

* identifier insert OblCreator(#SHALL:able-to-populate,L3)
* subject insert OblCreator(#SHALL:able-to-populate,L3)
* type insert OblCreator(#SHALL:able-to-populate,L3)
* collection.collectedDateTime insert OblCreator(#SHALL:able-to-populate,L3)
* collection.bodySite insert OblCreator(#SHALL:able-to-populate,L3)
* collection.method insert OblCreator(#SHALL:able-to-populate,L3)  
* receivedTime insert OblCreator(#SHALL:able-to-populate,L3)

* identifier insert OblConsumer(#SHOULD:display,L2)
* subject insert OblConsumer(#SHOULD:display,L2)
* type insert OblConsumer(#SHOULD:display,L2)
* collection.collectedDateTime insert OblConsumer(#SHOULD:display,L2)
* collection.bodySite insert OblConsumer(#SHOULD:display,L2)
* collection.method insert OblConsumer(#SHOULD:display,L2)
* receivedTime insert OblConsumer(#SHOULD:display,L2)

* identifier insert OblConsumer(#SHALL:display,L3)
* subject insert OblConsumer(#SHALL:display,L3)
* type insert OblConsumer(#SHALL:display,L3)
* collection.collectedDateTime insert OblConsumer(#SHALL:display,L3)
* collection.bodySite insert OblConsumer(#SHALL:display,L3)
* collection.method insert OblConsumer(#SHALL:display,L3)
* receivedTime insert OblConsumer(#SHALL:display,L3)
