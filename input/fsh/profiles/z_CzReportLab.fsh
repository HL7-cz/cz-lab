/*

Profile: CZ_LaboratoryReport
Parent: DiagnosticReport
Id: cz-laboratory-report
Title: "Laboratory Report (CZ)"
Description: "Czech profile for a laboratory report"
//* ^url = "https://ncez.mzcr.cz/standards/fhir/ig/lab/StructureDefinition/cz-laboratory-report"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-09-27T14:20:00+02:00"
* ^publisher = "NCEZ"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://ncez.mzcr.cz"
* ^jurisdiction = $iso3166#CZ
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    CZ_ExtNote named note 0..* MS
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
//* text.status = #empty
* identifier 1.. MS
/* * identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^definition = "An identifier for this laboratory report.\r\n\r\n This identifier will be used to determine if a new resource is needed, or if this resource is an update of an existing one. When an identifier is given, a consumer SHALL NOT ignore it."
* identifier contains DRID 1..1
* identifier[DRID] ^definition = "The identifier SHALL at least contain 1 identifier of type BeLabReportDiagnosticReportId. The unicity of this identifier is guaranteed by using the NIHDI number of the lab and a unique number for that lab, separated by a dot."
* identifier[DRID].system = "https://www.ehealth.fgov.be/lab-report/diagnostic-report-id" (exactly)
* identifier[DRID].value 1..1
 */






 /*
* basedOn 1..1 MS
* basedOn only Reference(ServiceRequest)
* basedOn ^short = "A reference to a ServiceRequest SHALL be given here that minimally includes the time of prescription."
* basedOn ^definition = "Details concerning the prescription this laboratory report fullfills. A reference to a ServiceRequest SHALL be given here that includes the time of prescription in its .authoredOn element. It is RECOMMENDED to also use the .identifier element of the ServiceRequest to identify the original order number. Note, within the Observation resource it is possible to define they were defined on a different serviceRequest (e.g. to clarify it was a sub ordering)"
* status MS
* status ^short = "Status of the report: consult the HL7 list of permitted values"
* status ^definition = "The status of the diagnostic report. Consult the HL7 list of allowed values here. Note when a report should actually replace a previous one, use the Replaces extension."
//* category 1.. MS
* category MS
* category ^short = "The subject of this specialty, expressed in a LOINC code."
* category ^definition = "The subject of this specialty, expressed in a LOINC code.\r\n\r\nThe choice of what observations to categorize under what specialty are left ultimately to the discretion of the laboratory sending the results. Some non-restrictive guidelines:\r\n*18721-1 (THERAPEUTIC DRUG MONITORING STUDIES) will be used for a section carrying pharmacologyobservations on a patient.\r\n*Mycology and parasitology, as well as bacteriology, are part of the 18725-2 (MICROBIOLOGY STUDIES) specialty.\r\n*665 Virology MAY be included in 18725-2 (MICROBIOLOGY STUDIES) specialty or 18727-8 (SEROLOGY STUDIES)or split between both specialties, depending upon the Content Creator Actor’s choice"
* category from CZ_LabReportTypesVS (preferred)
/* * category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "code"
* category.coding ^slicing.rules = #open
* category.coding.system 1..
* category.coding.code 1..
* category.coding.display 1.. */
/* * category.coding contains LABREPORT 1..1
* category.coding[LABREPORT].system 1..
* category.coding[LABREPORT].system = "http://terminology.hl7.org/CodeSystem/v2-0074" (exactly)
* category.coding[LABREPORT].code = #LAB (exactly)
* category.coding[LABREPORT].display = "Laboratory" (exactly)
* category.coding contains MICREPORT 1..1
* category.coding[MICREPORT].system 1..
* category.coding[MICREPORT].system = "http://terminology.hl7.org/CodeSystem/v2-0074" (exactly)
* category.coding[MICREPORT].code = #MB (exactly)
* category.coding[MICREPORT].display = "Microbiology" (exactly)
 */






 /*
* code MS
* code from CZ_LabStudyTypesVS (preferred)
//* code = $loinc#11502-2 or $loinc#11502-1 (exactly)
* code 1..
* subject 1.. MS
* subject only Reference(CZ_PatientCore or Group or CZ_MedicalDevice or Location)
* subject ^short = "In the initial iteration of the Czech interoperability project: this is CZ_PatientLab."
* effective[x] MS
* effective[x] ^short = "Time of the specimen collection - is overruled when collection time is given in .specimen element."
* effective[x] ^definition = "The time or time-period the observed values are related to. This is the time specimen collection(s)"
* issued 1.. MS
* performer 1.. MS
* performer only Reference(CZ_OrganizationCore or CZ_PractitionerCore or CareTeam or CZ_PractitionerRoleCore)
* performer ^short = "In the initial iteration of the Czech interoperability project: this is CZ_Organization."
* performer ^definition = "The diagnostic service that is responsible for issuing the report. In the laboratory report, this is typically an organization (i.e. the laboratory)\r\nNote the Observation MAY have a different performer."
* resultsInterpreter 1.. MS
* resultsInterpreter only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam)
* resultsInterpreter ^short = "In the initial iteration of the Czech interoperability project: this is CZ_Practitioner."
* specimen only Reference(CZ_SpecimenLab)
* specimen MS
* result only Reference(CZ_ObservationResultLaboratory)
* result MS
* media MS
* conclusion MS
* conclusionCode MS
* presentedForm MS


*/