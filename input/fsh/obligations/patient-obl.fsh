Profile: CZ_PatientObligationsLab
Parent: CZ_PatientCore
Id: cz-patient-obl-lab
Title:    "Patient: Obligations"
Description: "This profile defines obligations for an human Patient in FHIR for the purpose of this guide."

* insert SetFmmandStatusRule ( 0, informative)

// Creator Obligations L1 ============>
* identifier[RID] insert OblCreator(#SHALL:able-to-populate,L1)
* name.given insert OblCreator(#SHALL:able-to-populate,L1)
* name.family insert OblCreator(#SHALL:able-to-populate,L1)
* name.text insert OblCreator(#SHALL:able-to-populate,L1) //can-send
* birthDate insert OblCreator(#SHALL:able-to-populate,L1)
* gender insert OblCreator(#SHOULD:able-to-populate,L1)
* address insert OblCreator(#SHOULD:able-to-populate,L1) //can-send
* telecom insert OblCreator(#SHOULD:able-to-populate,L1) //can-send
* active insert OblCreator(#SHOULD:able-to-populate,L1)
* generalPractitioner insert OblCreator(#SHOULD:able-to-populate,L1) //can-send


// Consumer obligations L1
* identifier[RID] insert OblConsumer(#SHALL:process,L1)
* name.given insert OblConsumer(#SHALL:display,L1)
* name.family insert OblConsumer(#SHALL:display,L1)
* name.text insert OblConsumer(#SHALL:display,L1) //can-send
* birthDate insert OblConsumer(#SHALL:display,L1)
* gender insert OblConsumer(#SHOULD:display,L1)
* address insert OblConsumer(#SHOULD:display,L1) //can-send
* telecom insert OblConsumer(#SHOULD:display,L1) //can-send
* active insert OblConsumer(#SHOULD:display,L1)
* generalPractitioner insert OblConsumer(#SHALL:display,L1) //can-send



// Creator Obligations L2 ============>
* identifier[RID] insert OblCreator(#SHALL:able-to-populate,L2)
* name.given insert OblCreator(#SHALL:able-to-populate,L2)
* name.family insert OblCreator(#SHALL:able-to-populate,L2)
* name.text insert OblCreator(#SHALL:able-to-populate,L2) //can-send
* telecom insert OblCreator(#SHOULD:able-to-populate,L2) //can-send
* gender insert OblCreator(#SHALL:able-to-populate,L2)
* birthDate insert OblCreator(#SHALL:able-to-populate,L2)
* generalPractitioner insert OblCreator(#SHOULD:able-to-populate,L2) //can-send
* address insert OblCreator(#SHALL:able-to-populate,L2) //can-send
* extension[patient-nationality] insert OblCreator(#SHALL:populate-if-known,L2)
* communication.language insert OblCreator(#SHOULD:populate-if-known,L2)
* contact insert OblCreator(#SHOULD:able-to-populate,L2)   

// Consumer obligations L2
* identifier[RID] insert OblConsumer(#SHALL:process,L2)
* name.given insert OblConsumer(#SHALL:display,L2)
* name.family insert OblConsumer(#SHALL:display,L2)
* name.text insert OblConsumer(#SHOULD:display,L2)
* telecom insert OblConsumer(#SHALL:display,L2)
* gender insert OblConsumer(#SHALL:display,L2)
* birthDate insert OblConsumer(#SHALL:display,L2)
* generalPractitioner insert OblConsumer(#SHOULD:display,L2)
* address insert OblConsumer(#SHALL:display,L2)
* contact insert OblConsumer(#SHOULD:display,L2)

// Creator Obligations L3 ============>
* identifier[RID] insert OblCreator(#SHALL:able-to-populate,L3)
* name.given insert OblCreator(#SHALL:able-to-populate,L3)
* name.family insert OblCreator(#SHALL:able-to-populate,L3)
* name.text insert OblCreator(#SHALL:able-to-populate,L3) //can-send
* telecom insert OblCreator(#SHOULD:able-to-populate,L3) //can-send
* gender insert OblCreator(#SHALL:able-to-populate,L3)
* birthDate insert OblCreator(#SHALL:able-to-populate,L3)
* generalPractitioner insert OblCreator(#SHOULD:able-to-populate,L3) //can-send
* address insert OblCreator(#SHALL:able-to-populate,L3) //can-send
* extension[patient-nationality] insert OblCreator(#SHALL:populate-if-known,L3)
* communication.language insert OblCreator(#SHOULD:populate-if-known,L3)
* contact insert OblCreator(#SHOULD:able-to-populate,L3)

// Consumer obligations L3
* identifier[RID] insert OblConsumer(#SHALL:process,L3)
* name.given insert OblConsumer(#SHALL:display,L3)
* name.family insert OblConsumer(#SHALL:display,L3)
* name.text insert OblConsumer(#SHOULD:display,L3)
* telecom insert OblConsumer(#SHALL:display,L3)
* gender insert OblConsumer(#SHALL:display,L3)
* birthDate insert OblConsumer(#SHALL:display,L3)
* generalPractitioner insert OblConsumer(#SHOULD:display,L3)
* address insert OblConsumer(#SHALL:display,L3)
* contact insert OblConsumer(#SHOULD:display,L3)
