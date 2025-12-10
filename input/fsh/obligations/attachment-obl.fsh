Profile: CZ_AttachmentObligationsLab
Parent: CZ_Attachment
Id: cz-attachment-obl-lab
Title:    "Attachment: Obligations"
Description: "This profile defines obligations for an attachment in FHIR for the purpose of this guide."

* content.contentType insert OblCreator(#SHOULD:able-to-populate,L2)
* content.language insert OblCreator(#SHOULD:able-to-populate,L2)
* content.data insert OblCreator(#SHOULD:able-to-populate,L2)
* content.url insert OblCreator(#SHOULD:able-to-populate,L2)
* content.title insert OblCreator(#SHOULD:able-to-populate,L2)
* content.creation insert OblCreator(#SHOULD:populate-if-known,L2)
* content.hash insert OblCreator(#SHOULD:populate-if-known,L2)
* content.size insert OblCreator(#SHOULD:populate-if-known,L2)

* content.contentType insert OblCreator(#SHALL:able-to-populate,L3)
* content.language insert OblCreator(#SHALL:able-to-populate,L3)
* content.data insert OblCreator(#SHALL:able-to-populate,L3)
* content.url insert OblCreator(#SHALL:able-to-populate,L3)
* content.title insert OblCreator(#SHALL:able-to-populate,L3)
* content.creation insert OblCreator(#SHALL:populate-if-known,L3)
* content.hash insert OblCreator(#SHALL:populate-if-known,L3)
* content.size insert OblCreator(#SHALL:populate-if-known,L3)

* content.contentType insert OblConsumer(#SHOULD:display,L2)
* content.language insert OblConsumer(#SHOULD:display,L2)
* content.data insert OblConsumer(#SHOULD:display,L2)
* content.url insert OblConsumer(#SHOULD:display,L2)
* content.title insert OblConsumer(#SHOULD:display,L2)
* content.creation insert OblConsumer(#SHOULD:display,L2)
* content.hash insert OblConsumer(#SHOULD:display,L2)
* content.size insert OblConsumer(#SHOULD:display,L2)

* content.contentType insert OblConsumer(#SHALL:display,L3)
* content.language insert OblConsumer(#SHALL:display,L3)
* content.data insert OblConsumer(#SHALL:display,L3)
* content.url insert OblConsumer(#SHALL:display,L3)
* content.title insert OblConsumer(#SHALL:display,L3)
* content.creation insert OblConsumer(#SHALL:display,L3)
* content.hash insert OblConsumer(#SHALL:display,L3)
* content.size insert OblConsumer(#SHALL:display,L3)
