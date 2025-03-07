Extension: InformationRecipient
Id:   information-recipient
Title: "Information recipient"
Description: "This extension applies to the Composition resource and is used to represent an intended recipient of the composition."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Composition"
* ^url = "http://hl7.eu/fhir/StructureDefinition/information-recipient"
* value[x] only Reference(CZ_PractitionerCore or Device or CZ_PatientCore or RelatedPerson or CZ_PractitionerRoleCore or CZ_OrganizationCore)
