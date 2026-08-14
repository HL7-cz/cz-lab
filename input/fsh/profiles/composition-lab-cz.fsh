Invariant: sec-1
Description: "Sekce může obsahovat položky (entry) nebo podsekce (section), nikdy však obojí současně; přítomnost ani jednoho z těchto prvků není povinná."
Severity: #error
Expression: "entry.empty() or section.empty()"

Invariant: sec-2
Description: "Listová podsekce musí obsahovat narativní text (text) nebo alespoň jednu položku (entry); oba prvky mohou být přítomny současně."
Severity: #error
Expression: "text.exists() or entry.exists()"

Invariant: sec-entry
Description: "Každá položka laboratorní sekce musí odkazovat na výsledek laboratorního pozorování podle profilu CZ Observation Result Laboratory."
Severity: #error
Expression: "entry.all(resolve().exists() and resolve().conformsTo('https://hl7.cz/fhir/lab/StructureDefinition/observation-resultlab-cz-lab'))"

Profile: CZ_CompositionLabReport
Parent: CompositionLabReportEu
Id: composition-cz-lab
Title: "Composition: Laboratory Report"
Description: "Clinical document used to represent a Laboratory Report in the scope of the Czech national interoperability project."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://ncez.mczr.cz"
* . ^short = "Laboratory Report composition"
* . ^definition = "Laboratory Report composition.\r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

* insert SetFmmandStatusRule ( 2, trial-use )


// what to do with the composition text ?
// should we make it 0.. ?
// or have text repeated here and in the sections ?

// removed as not present in HL7 EU lab IG, resolution of the Jira issue FHIR-51567
//* extension contains $compositionBasedOnOrderOrRequisition named basedOn-order-or-requisition 0..*
//* extension[basedOn-order-or-requisition].valueReference only Reference(CZ_ServiceRequestLab)
* extension[informationRecipient].value[x] only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or Device or CZ_PatientCore or CZ_RelatedPersonCore)
* extension[diagnosticReport].value[x] only Reference(CZ_DiagnosticReportLab)

* text ^short = "Narrative text"

* insert ReportIdentifierRule
* insert ReportStatusRule

* category[studyType] from $CZ_LabStudyType (required) // http://hl7.eu/fhir/laboratory/ValueSet/lab-studyType-eu-lab (required)
// * category[studyType] ^binding.extension[0].extension[0].url = "key"
// * category[studyType] ^binding.extension[=].extension[=].valueId = lab-document-types
// * category[studyType] ^binding.extension[=].extension[+].url = "purpose"
// * category[studyType] ^binding.extension[=].extension[=].valueCode = #candidate
// * category[studyType] ^binding.extension[=].extension[+].url = "valueSet"
// * category[studyType] ^binding.extension[=].extension[=].valueCanonical = "https://ncez.mzcr.cz/terminology/ValueSet/lab-document-types"
// * category[studyType] ^binding.extension[=].extension[+].url = "documentation"
// * category[studyType] ^binding.extension[=].extension[=].valueMarkdown = "V českém národním kontextu je výčet pro study type širší než evropská varianta."
// * category[studyType] ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"


* category contains documentCategory 1..1
* category[documentCategory] from $documentCategory
* category[documentCategory] = $loinc#11502-2

* category[specialty] from CZ_LabSpecialty
* category[specialty]
  * ^short = "The clinical domain of the laboratory performing the observation (e.g. microbiology, toxicology, chemistry)"
  * ^definition = "Laboratory specialty is an attribute of any laboratory setting representing professional qualification of the laboratory to execute certain kind of laboratory tests."
  * ^comment = "Specialty could be used as parameter for searching/querying of laboratory test results."


* insert ReportTypeRule ( type ) // fixed LOINC code for all types of reports but allow also lab specialty to be present

  // slice the subject tp cover the three cases of human ; non-human and mixed
* insert ReportSubjectRule
* insert ReportEncounterRule

//* language 1..1

* author 1..*
  * ^short = "Who and/or what authored the Laboratory Report"
  * ^definition = "Identifies who is responsible for the information in the Laboratory Report, not necessarily who typed it in."
  * insert ReportAuthorRule
  /* * obeys labRpt-author */
* author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)

* attester //0.. // RH - should attester be 1.. or 0..? - since author is also required?
  * ^short = "Attests the report accuracy"
  * mode ^short = "The type of attestation"
  * time ^short = "When the report was attested by the party"
  * party only Reference(CZ_PractitionerRoleCore or CZ_PractitionerCore)
  * party
    * ^short = "Who attested the report"
    * ^comment = "For a Laboratory Report it is usually not expected that the attester would be a Patient or a RealtedPerson"
// * attester[legalAuthenticator].party only Reference(CZ_PractitionerRoleCore or CZ_PractitionerCore)
// * attester[validator].party only Reference(CZ_PractitionerRoleCore or CZ_PractitionerCore)

//* custodian 1..1
* custodian only Reference(CZ_OrganizationCore)

* event
  * ^short = "The laboratory service(s) being documented"
  * code ^short =	"Code(s) that apply to the laboratory service(s) being documented"
  * period ^short = "Period of time covered by the documentation"
  * detail ^short = "The laboratory service(s) being documented"

* title 1..
  * ^short = "Laboratory Report"
  * ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Laboratory Report\" or any equivalent translation"

//* confidentiality 1..1
* section
  * ^definition = """The \"body\" of the report is organized as a tree of up to two levels of sections:
  Top level sections represent laboratory specialty or type of the study. A top level section MAY contain Laboratory Data Entries or a set of Laboratory Report Item Sections, but not both; neither is required.
  In the latter case, each (second level) leaf section contained in the (top level) section represents a Report Item: i.e., a battery, a study, or a group of test.
  Any leaf section SHALL contain human-readable narrative text or one or more Laboratory Data Entries with the observations of that section in a machine-readable format; both may be present."""
* section obeys sec-1 and sec-entry
* section
  * ^short = "Laboratory Report section with zero to many subsections Laboratory Report Item"
  * ^definition = """If this Laboratory Result Section contains subsections, it SHALL contain mandatory human-readable narrative text but SHALL NOT contain entry elements at the top level. Each Report Item is represented by a corresponding leaf subsection containing human-readable narrative text or one or more Laboratory Data Entries; both may be present."""
  //* code only CZ_CodeableConcept
  * code 1..1
  * code from CZ_LabSectionCodes (preferred)
  * section
    * code 1..
    // * code only CZ_CodeableConcept
    // * code from CZ_LabStudyTypesVS (preferred)
    * text 0..1
    * text ^short = "Optional text summary of the section, for human interpretation."
    * entry 0..
    * section 0..0
* section.section obeys sec-2 and sec-entry


* section.author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
* section[annotations] 0..0  // This section will be removed in next version of the EU Lab IG. DiagnosticReport.extenssion[note] shall be used instead.
* section[attachment] 0..0  // This section will be removed in next version of the EU Lab IG. DiagnosticReport.media.link.extensio[link] shall be used instead.
