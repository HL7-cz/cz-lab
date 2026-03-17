Profile: CZ_DASTA_DocumentReference
Parent: DocumentReference
Id: cz-dasta-document-reference
Title: "Document Reference: DASTA Lab Report (CZ)"
Description: "Czech profile for document reference containing DASTA lab structured report."

* . ^short = "DASTA Lab Report Document Reference"
* . ^definition = "Document reference containing DASTA structure lab Report."
* insert SetFmmandStatusRule ( 0, draft )
* insert ReportTypeRule ( type ) // fixed LOINC code for all types of reports but allow also lab specialty to be present
//* insert ReportSubjectRule
* insert ReportIdentifierRule
* insert ReportCategoryRule
* subject 1..
//* subject /* obeys labRpt-subject */
* subject only Reference(CZ_PatientCore or Group or Device or CZ_MedicalDevice)
  * ^short = "Who and/or what this report is about"
  * ^definition = "Who or what this report is about. The report can be about a human patient, a living subject, a device (e.g. a machine), a location or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure)."
  * ^comment = "DiagnosticReport and Composition SHALL have the same subject"

* author 1..*
  * ^short = "Who and/or what authored the Laboratory Report"
  * ^definition = "Identifies who is responsible for the information in the Laboratory Report, not necessarily who typed it in."
  * insert ReportAuthorRule
* author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
// TODO: add all other elements from Composition-lab-cz as needed