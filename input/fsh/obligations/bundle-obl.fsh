Profile: CZ_BundleObligationsLab
Parent: CZ_BundleLab
Id: cz-bundle-obl-lab
Title:    "Bundle: Obligations"
Description: "This profile defines obligations for a bundle in FHIR for the purpose of this guide."

* insert SetFmmandStatusRule ( 0, informative)

* identifier insert OblCreator(#SHALL:able-to-populate,L1)
* timestamp insert OblCreator(#SHALL:able-to-populate,L1)
* signature insert OblCreator(#SHALL:able-to-populate,L1)

* identifier insert OblConsumer(#SHALL:display,L1)
* timestamp insert OblConsumer(#SHALL:display,L1)
* signature insert OblConsumer(#SHALL:display,L1)

/*
* identifier insert OblCreator(#SHALL:able-to-populate,L2)
* timestamp insert OblCreator(#SHALL:able-to-populate,L2)
* signature insert OblCreator(#SHALL:able-to-populate,L2)

* identifier insert OblCreator(#SHALL:able-to-populate,L3)
* timestamp insert OblCreator(#SHALL:able-to-populate,L3)
* signature insert OblCreator(#SHALL:able-to-populate,L3)
*/

/*
* identifier insert OblConsumer(#SHALL:display,L2)
* timestamp insert OblConsumer(#SHALL:display,L2)
* signature insert OblConsumer(#SHALL:display,L2)

* identifier insert OblConsumer(#SHALL:display,L3)
* timestamp insert OblConsumer(#SHALL:display,L3)
* signature insert OblConsumer(#SHALL:display,L3)
*/