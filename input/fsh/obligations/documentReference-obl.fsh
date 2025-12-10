Profile: CZ_DocumentReferenceObligationsLab
Parent: DocumentReference
Id: cz-documentReference-obl-lab
Title:    "DocumentReference: Obligations"
Description: "This profile defines obligations for a bundle in FHIR for the purpose of this guide."


* insert SetFmmandStatusRule ( 0, informative)

* status insert OblCreator(#SHALL:able-to-populate,L1)
* subject insert OblCreator(#SHALL:able-to-populate,L1)
* content insert OblCreator(#SHALL:able-to-populate,L1)
* content.attachment.contentType insert OblCreator(#SHALL:able-to-populate,L1)
* content.attachment.language insert OblCreator(#SHALL:able-to-populate,L1)
* content.attachment.data insert OblCreator(#SHALL:able-to-populate,L1)
* content.attachment.title insert OblCreator(#SHOULD:able-to-populate,L1)

* status insert OblConsumer(#SHALL:display,L1)

* status insert OblCreator(#SHALL:able-to-populate,L2)
* subject insert OblCreator(#SHALL:able-to-populate,L2)
* content insert OblCreator(#SHALL:able-to-populate,L2)
* content.attachment.contentType insert OblCreator(#SHALL:able-to-populate,L2)
* content.attachment.language insert OblCreator(#SHALL:able-to-populate,L2)
* content.attachment.data insert OblCreator(#SHALL:able-to-populate,L2)
* content.attachment.title insert OblCreator(#SHOULD:able-to-populate,L2)

* status insert OblConsumer(#SHALL:display,L2)

* status insert OblCreator(#SHALL:able-to-populate,L3)
* subject insert OblCreator(#SHALL:able-to-populate,L3)
* content insert OblCreator(#SHALL:able-to-populate,L3)
* content.attachment.contentType insert OblCreator(#SHALL:able-to-populate,L3)
* content.attachment.language insert OblCreator(#SHALL:able-to-populate,L3)
* content.attachment.data insert OblCreator(#SHALL:able-to-populate,L3)
* content.attachment.title insert OblCreator(#SHOULD:able-to-populate,L3)

* status insert OblConsumer(#SHALL:display,L1)