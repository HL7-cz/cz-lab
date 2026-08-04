Profile: CZ_CompositionLabReport
Parent: CompositionLabReportEu
Id: cz-composition-lab-report
Title: "Composition: Laboratory Report"
Description: "Clinical document used to represent a Laboratory Report in the scope of the Czech national interoperability project."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://ncez.mczr.cz"
* . ^short = "Laboratory Report composition"
* . ^definition = "Laboratory Report composition.\r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

* insert SetFmmandStatusRule ( 0, draft )


// what to do with the composition text ?
// should we make it 0.. ?
// or have text repeated here and in the sections ?


* extension contains $compositionBasedOnOrderOrRequisition named basedOn-order-or-requisition 0..*
* extension[basedOn-order-or-requisition].valueReference only Reference(CZ_ServiceRequestLab)

* text ^short = "Narrative text"

* insert ReportIdentifierRule
* insert ReportStatusRule

* category[studyType] from http://hl7.eu/fhir/laboratory/ValueSet/lab-studyType-eu-lab (required)
* category[studyType] ^binding.extension[0].extension[0].url = "key"
* category[studyType] ^binding.extension[=].extension[=].valueId = lab-document-types
* category[studyType] ^binding.extension[=].extension[+].url = "purpose"
* category[studyType] ^binding.extension[=].extension[=].valueCode = #candidate 
* category[studyType] ^binding.extension[=].extension[+].url = "valueSet"
* category[studyType] ^binding.extension[=].extension[=].valueCanonical = "https://ncez.mzcr.cz/terminology/ValueSet/lab-document-types"
* category[studyType] ^binding.extension[=].extension[+].url = "documentation"
* category[studyType] ^binding.extension[=].extension[=].valueMarkdown = "V českém národním kontextu je výčet pro study type širší než evropská varianta."
* category[studyType] ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"


* category contains documentCategory 1..*
* category[documentCategory] from $documentCategory
* category[documentCategory] = $loinc#11502-2

* category[specialty] from CZ_LabSpecialityTypesVS
* category[specialty]
  * ^short = "The clinical domain of the laboratory performing the observation (e.g. microbiology, toxicology, chemistry)"
  * ^definition = "Laboratory specialty is an attribute of any laboratory setting representing professional qualification of the laboratory to execute certain kind of laboratory tests."
  * ^comment = "Specialty could be used as parameter for searching/querying of laboratory test results."


* insert ReportTypeRule ( type ) // fixed LOINC code for all types of reports but allow also lab specialty to be present

  // slice the subject tp cover the three cases of human ; non-human and mixed
* insert ReportSubjectRule
* subject only Reference(CZ_PatientCore or Group or CZ_LocationCore or Device or CZ_MedicalDevice)
* insert ReportEncounterRule

* language 1..1


* author 1..*
  * ^short = "Who and/or what authored the Laboratory Report"
  * ^definition = "Identifies who is responsible for the information in the Laboratory Report, not necessarily who typed it in."
  * insert ReportAuthorRule
  /* * obeys labRpt-author */
* author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)

* attester 0.. // RH - should attester be 1.. or 0..? - since author is also required?
  * party only Reference(CZ_PractitionerRoleCore)
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



