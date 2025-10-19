Profile: CZ_CompositionLabReport
Parent: http://hl7.org/fhir/StructureDefinition/clinicaldocument
Id: cz-composition-lab-report
Title: "Composition: Laboratory Report"
Description: "Clinical document used to represent a Laboratory Report in the scope of the Czech national interoperability project."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://ncez.mczr.cz"
* . ^short = "Laboratory Report composition"
* . ^definition = "Laboratory Report composition.\r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

* insert ImposeProfile($Composition-eu-lab)

* insert SetFmmandStatusRule ( 0, draft )


// what to do with the composition text ?
// should we make it 0.. ?
// or have text repeated here and in the sections ?


// TODO
* extension contains CompositionBasedOnOrderOrRequisition named basedOn-order-or-requisition 0..*
* extension[basedOn-order-or-requisition].valueReference only Reference(CZ_ServiceRequestLab)

* extension contains $information-recipient named information-recipient 0..*
* extension[information-recipient].valueReference only Reference(CZ_PractitionerCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_PractitionerRoleCore or CZ_OrganizationCore)

* extension contains DiagnosticReportReference named diagnosticReport-reference 0..1
* extension[diagnosticReport-reference].valueReference only Reference(CZ_DiagnosticReportLab)
* extension[diagnosticReport-reference].valueReference 1..1
* extension[diagnosticReport-reference].valueReference.reference 1..

  * ^comment = """Added to the FHIR R4 guide to strictly conform with the R4 rules for document bundle resources inclusion.
  Using this extension implies to accept a circular reference Composition to/from  DiagnosticReport"""

* text ^short = "Narrative text"

* insert ReportIdentifierRule
* insert ReportStatusRule
* insert ReportCategoryRule // HK: composition category seems to be related to the CDA Document Class.
                            // In case of lab report, only one value is relevant for this purpose, LOINC 26436-6 	Laboratory Studies (set)
                            // We might discuss if other categorization purposes would be useful or not.
/* * category = $loinc#26436-6 "Laboratory Studies (set)" */

* insert ReportTypeRule ( type ) // fixed LOINC code for all types of reports but allow also lab specialty to be present

  // slice the subject tp cover the three cases of human ; non-human and mixed
* insert ReportSubjectRule
* insert ReportEncounterRule

* language 1..1


* author 1..*
  * ^short = "Who and/or what authored the Laboratory Report"
  * ^definition = "Identifies who is responsible for the information in the Laboratory Report, not necessarily who typed it in."
  * insert ReportAuthorRule
  /* * obeys labRpt-author */
* author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)

* attester 0.. // RH - should attester be 1.. or 0..? - since author is also required?
  * party only Reference(CZ_PatientCore or CZ_RelatedPersonCore or CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore)
  * ^short = "Attests the report accuracy"
  * mode ^short = "The type of attestation"
  * time ^short = "When the report was attested by the party"
  * party
    * ^short = "Who attested the report"
    * ^comment = "For a Laboratory Report it is usually non expected that the attester would be a Patient or a RealtedPerson"

* custodian 1..1
* custodian only Reference(CZ_OrganizationCore)

* event
  * ^short = "The laboratory service(s) being documented"
  * code ^short =	"Code(s) that apply to the laboratory service(s) being documented"
  * period ^short = "Period of time covered by the documentation"
  * detail ^short = "The laboratory service(s) being documented"

* title 1..
  * ^short = "Laboratory Report"
  * ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Laboratory Report\" or any equivalent translation"

* confidentiality 1..1

// ServiceRequest and/or RequestGroup

/*  IS THE SLICE NEEDED IN THIS CASE ?
// check with the XDlab structure */

* section 1..
  * ^slicing.discriminator[+].type = #exists
  * ^slicing.discriminator[=].path = "$this.section"
  * ^slicing.discriminator[+].type = #exists
  * ^slicing.discriminator[=].path = "$this.entry"
/*   * ^slicing.discriminator[+].type = #type
  * ^slicing.discriminator[=].path = "$this.entry.resolve()" */
  // GC $this.code has a preferred binding, how can work ?
/*   * ^slicing.discriminator[+].type = #pattern
  * ^slicing.discriminator[=].path = "$this.code" */
  * ^slicing.ordered = false
  * ^slicing.rules = #open
  * ^definition = """The \"body\" of the report is organized as a tree of up to two levels of sections: top level sections represent laboratory specialties. A top level section SHALL contain either one text block carrying all the text results produced for this specialty along with Laboratory Data Entries or a set of Laboratory Report Item Sections. In the first case the specialty section happens to also be a leaf section. In the latter case, each (second level) leaf section contained in the (top level) specialty section represents a Report Item: i.e., a battery, a specimen study (especially in microbiology), or an individual test. In addition, any leaf section SHALL contain a Laboratory Data Entries containing the observations of that section in a machine-readable format."""
* section.author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
/*
Variant 2: Text and Entry - With this option, the Laboratory Specialty Section text SHALL be present and not blank. This narrative block SHALL present to the human reader, all the observations produced for this Specialty, using the various structures available in the CDA Narrative Block schema (NarrativeBlock.xsd): tables, lists, paragraphs, hyperlinks, footnotes, references to attached or embedded multimedia objects. The narrative block is fully derived from the entry containing the machine-readable result data. Additionally, a single Laboratory Report Data Processing Entry SHALL be present with attribute typeCode=\"DRIV\". This entry contains the machine-readable result data from which the narrative block of this section is derived.""" */


// --------------------------------------
// Common rules for all the sections
// ---------------------------------

* insert SectionCommonRules
/* * section.title 1..
* section.code 1..
* section.code only $CodeableConcept-uv-ips */

// -------------------------------------
// Single section  0 .. 1
// -------------------------------------
* section contains lab-no-subsections ..* // check if ..1 or ..*
* section[lab-no-subsections]
  * ^short = "Variant 1: CZ Laboratory Report section with entries and no sub-sections"
  * ^definition = """Variant 1: With this option, all laboratory report data entries are provided in the top level sections and no sub-sections are allowed."""
  * insert SectionElementsRules
* section[lab-no-subsections].author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
/*   * code from LabStudyTypesEuVs (preferred)
  * text ^short = "Text summary of the section, for human interpretation."
  * entry only Reference (ObservationResultsLaboratoryEu or DiagnosticReport)
  * entry 1..
  * section ..0 */


// -------------------------------------
// Structured sections  0 .. 1
// -------------------------------------
* section contains lab-subsections ..* // check if ..1 or ..*
* section[lab-subsections]
  * ^short = "Variant 2: CZ Laboratory Report section with one to many subsections Laboratory Report Item"
  * ^definition = """Variant 2: With this option, this top level section doesn't include NEITHER a top level text NOR entry elements. Each Report Item is contained in a corresponding sub-sections which contains the Lab Report Data Entry."""
  * code only $CodeableConcept-uv-ips
  * code from CZ_LabStudyTypesVS (preferred)
  * text 0..0
  * entry 0..0
  * insert SectionCommonRules
  * section 1..
/*     * code 1..
    * code only $CodeableConcept-uv-ips */
    * insert SectionElementsRules
    * code from CZ_LabStudyTypesVS (preferred)
/*        * text ^short = "Text summary of the section, for human interpretation."
    * entry 1..
    * entry only Reference (ObservationResultsLaboratoryEu)
    * section 0..0 */
  * section.author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
* section[lab-subsections].author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)

// -------------------------------------
// Annotation section  0 .. 1
// -------------------------------------

* section contains annotations ..* // check if ..1 or ..*
* section[annotations]
  * ^short = "Annotation comment"
  * ^definition = """Narrative expression of comments accompanying the report, such as suggestions for evaluation, technical notes from the laboratory, etc.

Examples:
Suggestion: This result should be evaluated in relation to the patient's medical history and clinical condition.
Technical note: A list of accredited examination(s) is available at www.laboratory.com. """

  * code = http://loinc.org#48767-8
  * text 1..
  * entry 0..0
  * section 0..0
* section[annotations].author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)



/*  TO DO Header
- add optional data enterer
- defiend rules for attester to distiguish Authenticators and Legal Auth
- ordering provider mapped into the order details
- add Lab DocumentationOf.serviceEvent details
- ComponentOf.encounter define details in Encounter profile
*/