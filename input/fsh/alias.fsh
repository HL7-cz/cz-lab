//============== ALIAS ===============

//------- Code Systems
Alias: $nclp = https://ncez.mzcr.cz/nclp/CodeSystem/nclppol
Alias: $nclpmtv = https://ncez.mzcr.cz/nclp/CodeSystem/nclpmtv
Alias: $ncmpspm = https://ncez.mzcr.cz/nclp/CodeSystem/ncmpspm //Specifikace mikrobiologických materiálů
Alias: $loinc = http://loinc.org
Alias: $v3-ActClass = http://terminology.hl7.org/CodeSystem/v3-ActClass
Alias: $icd11 = http://id.who.int/icd11/mms
Alias: $iso3166 = urn:iso:std:iso:3166
//Alias: $Immunization-recommendation-status = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status
Alias: $sct =  http://snomed.info/sct
//Alias: $atc = http://www.whocc.no/atc
Alias: $v3-NullFlavor = http://terminology.hl7.org/CodeSystem/v3-NullFlavor
Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $icd-10 = http://hl7.org/fhir/sid/icd-10
Alias: $ema = https://ec.europa.eu/health/documents/community-register/html
Alias: $spor = https://spor.ema.europa.eu/v1/organisations
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $ucum =  http://unitsofmeasure.org
Alias: $v2-0074 = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $reference-range-meaning = http://terminology.hl7.org/CodeSystem/referencerange-meaning
Alias: $drzar = https://ncez.mzcr.cz/terminology/CodeSystem/cz-drzar
Alias: $hl7CoverageType = http://terminology.hl7.org/CodeSystem/coverage-type
Alias: $mkn-10 = https://uzis.cz/terminology/CodeSystem/mkn-10
Alias: $performer-function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType

//------- Value Sets
Alias: $event-performerFunction = http://hl7.org/fhir/StructureDefinition/event-performerFunction
Alias: $mkn-10-list = https://uzis.cz/terminology/ValueSet/mkn-10
Alias: $documentCategory = https://ncez.mzcr.cz/terminology/ValueSet/document-category
Alias: $nclp-vs = https://ncez.mzcr.cz/nclp/ValueSet/nclppol

//----------- Profiles
// Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
// Alias: $MedicationStatement-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips
// Alias: $Immunization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips
Alias: $clinicaldocument = http://hl7.org/fhir/StructureDefinition/clinicaldocument
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips


//----------- EU lab profiles
Alias: $Observation-resultslab-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab
Alias: $Observation-results-laboratory-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips
Alias: $Patient-eu-core = http://hl7.eu/fhir/base/StructureDefinition/Patient-eu-core
//Alias: $Patient-animal-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Patient-animal-eu-lab
Alias: $Address-eu = http://hl7.eu/fhir/laboratory/StructureDefinition/Address-eu
Alias: $HumanName-eu = http://hl7.eu/fhir/laboratory/StructureDefinition/HumanName-eu
Alias: $Specimen-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Specimen-eu-lab
Alias: $substance-additive-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/specimen-additive-substance-eu-lab
Alias: $Composition-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab
Alias: $Bundle-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab
Alias: $Practitioner-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/Practitioner-eu-lab
Alias: $PractitionerRole-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/PractitionerRole-eu-lab
Alias: $DiagnosticReport-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab
Alias: $ServiceRequest-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/ServiceRequest-eu-lab

//----------- EU lab 2.0.0 – new profiles / extensions
Alias: $MedicalTestResult-eu-core   = http://hl7.eu/fhir/base/StructureDefinition/medicalTestResult-eu-core
Alias: $Device-measuring-eu-lab     = http://hl7.eu/fhir/laboratory/StructureDefinition/Device-measuring-eu-lab
Alias: $Device-specimen-eu-lab      = http://hl7.eu/fhir/laboratory/StructureDefinition/Device-specimen-eu-lab
Alias: $animal-specimen-eu-lab      = http://hl7.eu/fhir/laboratory/StructureDefinition/animal-specimen-eu-lab
Alias: $SpecimenAdditiveSubstance-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/specimen-additive-substance-eu-lab
Alias: $LaboratoryAccreditedEu      = http://hl7.eu/fhir/laboratory/StructureDefinition/laboratory-accredited-eu
Alias: $DeviceLabTestKit-eu-lab     = http://hl7.eu/fhir/laboratory/StructureDefinition/device-lab-test-kit
Alias: $ObservationCRMCodeable-eu-lab  = http://hl7.eu/fhir/laboratory/StructureDefinition/observation-certifiedRefMaterial-codeable
Alias: $ObservationCRMIdentifier-eu-lab = http://hl7.eu/fhir/laboratory/StructureDefinition/observation-certifiedRefMaterial-identifier
Alias: $SpecimenFocus-eu-lab        = http://hl7.eu/fhir/laboratory/StructureDefinition/specimen-focus

Alias: $LabSpecimenTypesCzVs           = https://ncez.mzcr.cz/terminology/ValueSet/lab-specimenType
Alias: $CZ_LabStudyType                = https://ncez.mzcr.cz/terminology/ValueSet/cz-lab-study-type

//----------- EU lab 2.0.0 – new value sets
//Alias: $LabPresenceAbsenceEuVs       = http://hl7.eu/fhir/laboratory/ValueSet/lab-presenceAbsence-eu
//Alias: $LabMedicalDeviceEuVs         = http://hl7.eu/fhir/laboratory/ValueSet/lab-medicalDevice-eu-lab
//Alias: $LabSpecimenTypesEuVs         = http://hl7.eu/fhir/laboratory/ValueSet/lab-specimenType-eu-lab
//Alias: $LabTechniqueEuVs             = http://hl7.eu/fhir/laboratory/ValueSet/lab-technique-eu-lab
//Alias: $LabSpecialtyEuVs             = http://hl7.eu/fhir/laboratory/ValueSet/lab-specialty-eu-lab
//Alias: $LabReportTypesEuVs           = http://hl7.eu/fhir/laboratory/ValueSet/lab-reportTypes-eu-lab
//Alias: $LaboratoryResultStandardEuVs = http://hl7.eu/fhir/laboratory/ValueSet/lab-obsCode-eu-lab

//----------- R5 cross-version extensions (used by EU lab 2.0.0 parents)
Alias: $composition-diagnosticReport-r5  = http://hl7.org/fhir/5.0/StructureDefinition/extension-Composition.diagnosticReport
Alias: $specimen-feature-r5              = http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature
Alias: $specimen-feature-type-r5         = http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.feature.type
Alias: $specimen-collection-device-r5    = http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.collection.device
Alias: $specimen-container-device-r5     = http://hl7.org/fhir/5.0/StructureDefinition/extension-Specimen.container.device
Alias: $diagnosticReport-media-link-r5   = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.media

//----------- Extensions
Alias: $workflow-supportingInfo = http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo
Alias: $ext-data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $event-performerFunction = http://hl7.org/fhir/StructureDefinition/event-performerFunction
Alias: $event-basedOn = http://hl7.org/fhir/StructureDefinition/event-basedOn
Alias: $composition.version-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-Composition.version
Alias: $information-recipient = http://hl7.eu/fhir/StructureDefinition/information-recipient
Alias: $diagnostic-report-composition-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition
Alias: $allergy-intolerance-certainty-url = http://hl7.org/fhir/StructureDefinition/allergyintolerance-certainty
Alias: $artifact-title-url                = http://hl7.org/fhir/StructureDefinition/artifact-description
Alias: $artifact-description-url          = http://hl7.org/fhir/StructureDefinition/artifact-title
Alias: $artifact-version-url              = http://hl7.org/fhir/StructureDefinition/artifact-version
Alias: $data-absent-reason-url            = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $diagnostic-report-composition-url = http://hl7.org/fhir/StructureDefinition/extension-DiagnosticReport.composition
Alias: $event-basedOn-url                 = http://hl7.org/fhir/StructureDefinition/event-basedOn|4.0.1
Alias: $individual-genderIdentity         = http://hl7.org/fhir/StructureDefinition/individual-genderIdentity
Alias: $information-recipient-url         = http://hl7.eu/fhir/StructureDefinition/information-recipient
Alias: $document-reference-thumbnail-url  = http://hl7.org/fhir/StructureDefinition/documentreference-thumbnail
Alias: $note-url                          = http://hl7.org/fhir/StructureDefinition/note
Alias: $cvDocumentReference-basedOn       = http://hl7.org/fhir/5.0/StructureDefinition/extension-DocumentReference.basedOn
Alias: $obligation                        = http://hl7.org/fhir/StructureDefinition/obligation
Alias: $cvDiagnosticReport-supportingInfo = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo
Alias: $cvDiagnosticReport-composition    = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition
Alias: $artifact-version-url-5            = http://hl7.org/fhir/StructureDefinition/artifact-version
Alias: $diagnosticReport-link-xver        = http://hl7.org/fhir/StructureDefinition/alternate-reference
Alias: $observation-triggeredBy-r5        = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy
Alias: $observation-value-r5              = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.value[x]
Alias: $service-request-body-structure-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-ServiceRequest.bodyStructure
Alias: $bodySite-reference                = http://hl7.org/fhir/StructureDefinition/bodySite
Alias: $cz-organization-logo              = https://hl7.cz/fhir/core/StructureDefinition/cz-organization-logo
Alias: $composition.version-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-Composition.version
//Alias: $patient-animal = http://hl7.org/fhir/StructureDefinition/patient-animal
Alias: $laboratory-accredited = http://hl7.eu/fhir/StructureDefinition/laboratory-accredited
Alias: $diagnosticReportReference = http://hl7.eu/fhir/extensions/StructureDefinition/composition-diagnosticReportReference
Alias: $compositionBasedOnOrderOrRequisition = http://hl7.eu/fhir/StructureDefinition/composition-basedOn-order-or-requisition

//----------- Actors
Alias: $creatorL1 = https://hl7.cz/fhir/core/ActorDefinition/actor-creator-L1
Alias: $consumerL1 = https://hl7.cz/fhir/core/ActorDefinition/actor-consumer-L1
Alias: $creatorL2 = https://hl7.cz/fhir/core/ActorDefinition/actor-creator-L2
Alias: $consumerL2 = https://hl7.cz/fhir/core/ActorDefinition/actor-consumer-L2
Alias: $creatorL3 = https://hl7.cz/fhir/core/ActorDefinition/actor-creator-L3
Alias: $consumerL3 = https://hl7.cz/fhir/core/ActorDefinition/actor-consumer-L3
