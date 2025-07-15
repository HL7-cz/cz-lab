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

* obeys one-comp
* obeys one-dr
* obeys dr-comp-identifier
* obeys dr-comp-type
* obeys dr-comp-category
* obeys dr-comp-subj
* obeys dr-comp-enc

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

* entry contains patient 1..1
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

* entry contains bodyStructure 0..*
* entry[bodyStructure].resource only BodyStructureCz

* entry contains encounter 0..*
* entry[encounter].resource only Encounter

* entry contains location 0..*
* entry[location].resource only CZ_LocationCore

* entry contains provenance 0..*
* entry[provenance].resource only CZ_Provenance

* entry contains coverage 0..*
* entry[coverage].resource only CZ_Coverage

* entry contains device 0..*
* entry[device].resource only CZ_DeviceObserver

* entry contains attachment 0..*
* entry[attachment].resource only CZ_Attachment

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



//===================================
/// INVARIANTS
//===================================

Invariant: dr-comp-enc
Description: "DiagnosticReport and Composition SHALL have the same encounter"
/* Expression: "( (entry:composition.resource.encounter.empty() and entry:diagnosticReport.resource.encounter.empty() ) or entry:composition.resource.encounter = entry:diagnosticReport.resource.encounter )" */
Expression: "( (entry.resource.ofType(Composition).encounter.empty() and entry.resource.ofType(DiagnosticReport).encounter.empty() ) or entry.resource.ofType(Composition).encounter = entry.resource.ofType(DiagnosticReport).encounter )"
Severity:    #error

Invariant: dr-comp-subj
Description: "DiagnosticReport and Composition SHALL have the same subject"
Expression: "( (entry.resource.ofType(Composition).subject.empty() and entry.resource.ofType(DiagnosticReport).subject.empty() ) or entry.resource.ofType(Composition).subject = entry.resource.ofType(DiagnosticReport).subject )"
Severity:    #error

Invariant: dr-comp-type
Description: "At least one DiagnosticReport.code.coding and Composition.type.coding SHALL be equal"
Expression: "entry.resource.ofType(Composition).type.coding.intersect(entry.resource.ofType(DiagnosticReport).code.coding).exists()"
Severity:    #error

Invariant: dr-comp-category
Description: "At least one DiagnosticReport.category.coding and Composition.category.coding SHALL be equal"
Expression: "(entry.resource.ofType(Composition).category.exists() or entry.resource.ofType(DiagnosticReport).category.exists()) implies entry.resource.ofType(Composition).category.coding.intersect(entry.resource.ofType(DiagnosticReport).category.coding).exists()"
Severity:    #error

Invariant: dr-comp-identifier
Description: "If one or more DiagnosticReport.identifiers are given, at least one of them SHALL be equal to the Composition.identifier"
/* "Composition.identifier SHALL be equal to one of DiagnosticReport.identifier, if at least one exists" */
Expression: "(entry.resource.ofType(Composition).identifier.exists() or entry.resource.ofType(DiagnosticReport).identifier.exists()) implies entry.resource.ofType(Composition).identifier.intersect(entry.resource.ofType(DiagnosticReport).identifier).exists()"
Severity:    #error

Invariant: one-comp
Description: "A laboratory report bundle SHALL include one and only one Composition"
Expression: "entry.resource.ofType(Composition).count() = 1"
Severity:    #error

Invariant: one-dr
Description: "A laboratory report SHALL include one and only one DiagnosticReport"
Expression: "entry.resource.ofType(DiagnosticReport).count() = 1"
Severity:    #error

