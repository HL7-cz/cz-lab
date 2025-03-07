Profile: CZ_BundleLab
Parent: Bundle
Id: cz-bundle-lab
Title: "Bundle - Laboratory Result Report"
Description: "This profile represents the constraints applied to the Bundle resource by the Czech national laboratory report (HDR) FHIR Implementation Guide."
* ^purpose = "Laboratory result report bundle is an electronic health record extract containing results of laboratory testing of specimens from a subject of care, comprising at least the required elements of the lab dataset."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* . ^short = "Laboratory Result Report Bundle"
* . ^definition = "Laboratory Result Report Bundle. \r\nA container for a collection of resources in the laboratory result document."

* insert ImposeProfile($Bundle-eu-lab)

* insert SetFmmandStatusRule ( 0, draft )

// TODO: invariants

* identifier ^short = "Business identifier for this Laboratory Report"
* identifier 1..
* type = #document
* timestamp 1..
* total ..0
* link ..0
* entry 1..
  * link ..0
  * fullUrl 1..1
  * resource 1..
  * search ..0
  * request ..0
  * response ..0
* signature ^short = "Digital Signature of this report"

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
// * entry ^slicing.ordered = true => changed on 2023-07-19  to be checked
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry contains composition 1..1
* entry[composition].resource only CZ_CompositionLabReport

* entry contains diagnosticReport 1..1
* entry[diagnosticReport].resource only CZ_DiagnosticReportLab

* entry contains patient 0..1
* entry[patient].resource only CZ_PatientCore or CZ_PatientAnimal

* entry contains observation 0..*
* entry[observation].resource only CZ_ObservationResultLaboratory

* entry contains specimen 0..*
* entry[specimen].resource only CZ_SpecimenLab

* entry contains serviceRequest 0..*
* entry[serviceRequest].resource only CZ_ServiceRequestLab

* entry contains organization 0..*
* entry[organization].resource only CZ_OrganizationCore

* entry contains practitioner 0..*
* entry[practitioner].resource only CZ_PractitionerCore

* entry contains practitionerRole 0..*
* entry[practitionerRole].resource only CZ_PractitionerRoleCore

//* entry contains bodyStructure 0..*
//* entry[bodyStructure].resource only BodyStructureEuLab

//* entry contains encounter 0..*
//* entry[encounter].resource only Encounter

//* entry contains location 0..*
//* entry[location].resource only Location

//* entry contains provenance 0..*
//* entry[provenance].resource only Provenance

//* entry contains coverage 0..*
//* entry[coverage].resource only Coverage

* entry contains device 0..*
* entry[device].resource only CZ_DeviceObserver

//* entry contains procedure 0..
//* entry[procedure].resource only ProcedureUvIps // CZ 

//* entry contains condition 0..*
//* entry[condition].resource 1..
//* entry[condition].resource only ConditionUvIps // CZ

//* entry contains media 0..*
//* entry[media].resource 1..
//* entry[media].resource only MediaObservationUvIps  // CZ

//* entry contains medication 0..*
//* entry[medication].resource only CZ_Medication  // CZ

//* entry contains medicationstatement 0..*
//* entry[medicationstatement].resource only CZ_MedicationStatement
