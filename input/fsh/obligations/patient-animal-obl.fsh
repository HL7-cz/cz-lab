
Profile: CZ_PatientAnimalObligationsLab
Parent: CZ_PatientAnimal
Id: cz-patientAnimal-obl-lab
Title:    "Patient Animal: Obligations"
Description: "This profile defines obligations for an animal Patient in FHIR for the purpose of this guide."

* insert SetFmmandStatusRule ( 0, informative)

// TEST OBLIGATIONS  ====>
// Creator Obligations L1 ============>
* identifier insert OblCreator(#SHALL:able-to-populate,L1)
* name.given insert OblCreator(#SHALL:able-to-populate,L1)
* name.family insert OblCreator(#SHALL:able-to-populate,L1)
* name.text insert OblCreator(#SHALL:able-to-populate,L1) //can-send
* gender insert OblCreator(#SHALL:able-to-populate,L1)
* birthDate insert OblCreator(#SHALL:able-to-populate,L1)
* address insert OblCreator(#SHALL:able-to-populate,L1) //can-send
* extension[patient-animal] insert OblCreator(#SHALL:able-to-populate,L1) //can-send

// Consumer obligations L1
* identifier insert OblConsumer(#SHALL:display,L1)
* name.given insert OblConsumer(#SHALL:display,L1)
* name.family insert OblConsumer(#SHALL:display,L1)
* name.text insert OblConsumer(#SHOULD:display,L1)
* gender insert OblConsumer(#SHALL:display,L1)
* birthDate insert OblConsumer(#SHALL:display,L1)
* address insert OblConsumer(#SHALL:display,L1)
* extension[patient-animal] insert OblConsumer(#SHALL:display,L1)


// Creator Obligations L2 ============>
* identifier insert OblCreator(#SHALL:able-to-populate,L2)
* name.given insert OblCreator(#SHALL:able-to-populate,L2)
* name.family insert OblCreator(#SHALL:able-to-populate,L2)
* name.text insert OblCreator(#SHALL:able-to-populate,L2) //can-send
* gender insert OblCreator(#SHALL:able-to-populate,L2)
* birthDate insert OblCreator(#SHALL:able-to-populate,L2)
* address insert OblCreator(#SHALL:able-to-populate,L2) //can-send
* extension[patient-animal] insert OblCreator(#SHALL:able-to-populate,L2)

// Consumer obligations L2
* identifier insert OblConsumer(#SHALL:display,L2)
* name.given insert OblConsumer(#SHALL:display,L2)
* name.family insert OblConsumer(#SHALL:display,L2)
* name.text insert OblConsumer(#SHOULD:display,L2)
* gender insert OblConsumer(#SHALL:display,L2)
* birthDate insert OblConsumer(#SHALL:display,L2)
* address insert OblConsumer(#SHALL:display,L2)
* extension[patient-animal] insert OblConsumer(#SHALL:display,L2)
/*
// Creator Obligations L3 ============>
* identifier insert OblCreator(#SHALL:able-to-populate,L3)
* name.given insert OblCreator(#SHALL:able-to-populate,L3)
* name.family insert OblCreator(#SHALL:able-to-populate,L3)
* name.text insert OblCreator(#SHALL:able-to-populate,L3) //can-send
* gender insert OblCreator(#SHALL:able-to-populate,L3)
* birthDate insert OblCreator(#SHALL:able-to-populate,L3)
* address insert OblCreator(#SHALL:able-to-populate,L3) //can-send
* extension[patient-animal] insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer obligations L3
* identifier insert OblConsumer(#SHALL:display,L3)
* name.given insert OblConsumer(#SHALL:display,L3)
* name.family insert OblConsumer(#SHALL:display,L3)
* name.text insert OblConsumer(#SHOULD:display,L3)
* gender insert OblConsumer(#SHALL:display,L3)
* birthDate insert OblConsumer(#SHALL:display,L3)
* address insert OblConsumer(#SHALL:display,L3)
* extension[patient-animal] insert OblConsumer(#SHALL:display,L3)
*/