Profile: CZ_DiagnosticReportLab
Parent: DiagnosticReport
Id: cz-diagnostic-report-lab
Title: "DiagnosticReport: Laboratory Report"
Description: "Diagnostic Report used to represent an entry of a Laboratory Report, including its context, for the scope of the Czech national interoperability project."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 Czech Republic"
* . ^short = "Laboratory Report DiagnosticReport"
* . ^definition = "Laboratory Report DiagnosticReport"

* insert ImposeProfile($DiagnosticReport-eu-lab)
* insert SetFmmandStatusRule ( 0, draft )

* extension contains $diagnostic-report-composition-r5 named DiagnosticReportCompositionR5 1..1
* extension[DiagnosticReportCompositionR5]
  * ^short = "Associated Lab Report Composition"
  * ^definition = "This extension implements the R5 composition element. It allow to link this DiagnosticReport with the Composition documenting this Laboratory Report."
  *  valueReference 1..1
  *  valueReference only Reference(CZ_CompositionLabReport)

* basedOn only Reference(CZ_ServiceRequestLab)
//* basedOn.extension contains DiagnosticReportBasedOnRequisition named basedOn-requisition 0..*

* insert ReportStatusRule

* insert ReportIdentifierRule
* insert ReportCategoryRule

* insert ReportTypeRule ( code )
* insert ReportSubjectRule
* insert ReportEncounterRule


* effective[x] ^short = "Clinically relevant time/time-period for report."
* performer ^short = "Responsible Diagnostic Service." // add reference to the used profiles
  * insert ReportAuthorRule
* performer only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam)

* resultsInterpreter
  * insert ReportAuthorRule
* resultsInterpreter only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam)

* specimen only Reference(CZ_SpecimenLab)
  * ^short = "Specimens this report is based on." // add reference to the used profile
* result only Reference (CZ_ObservationResultLaboratory)
  * ^short = "results"


* presentedForm 1..*
* obeys presentedform-01
* presentedForm ^short = "Entire report as issued (pdf recommended)"

* media
  * ^short = "Additional data (like images, diagrams or documents) associated with this report"
  * ^definition = "A list of additional data, other then presented form of the report, associated with this report. This data is generally created during the diagnostic process, and may be directly of the patient, or of treated specimens (i.e. slides of interest)."
  * ^requirements = "Some diagnostic reports may include additional data such as images, diagrams or documents that are relevant to the report. This additional information can provide further context and support for the findings presented in the report."
  * ^alias = "DICOM; Slides; Scans; Pictures; Documents; Diagrams"
  * comment
    * ^short = "Comment about the image or data (e.g. explanation)"
    * ^definition = "Allows for a comment about the image or data, such as an explanation of its significance or context within the diagnostic report."
    * ^requirements = "The provider of the report should make a comment about each image or data included in the report. This comment can provide valuable context and help the reader understand the significance of the image or data in relation to the overall findings of the report."
  * link
    * ^short = "Reference to the image or data"
    * ^definition = "A reference to the image or data associated with this report."



Invariant: presentedform-01
Description: "At least one of presented form has PDF format"
Severity: #warning
Expression: "presentedForm.where(contentType = 'application/pdf').count() > 0"