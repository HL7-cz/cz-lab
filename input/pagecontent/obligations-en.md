<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<blockquote class="stu-note">
<b>Informative for this version of the guide</b>
<p>The obligations have been added to this version of the guide only as informative material to gather feedback on their use.</p>
</blockquote>
</div>

### Overview 

Obligations are a mean offered by HL7 FHIR to specify functional capabilities that defined actors MAY, SHOULD or SHALL to the data elements specified by the profiles.

We define three basic levels of compliance with the standard:
- L1 – unstructured document – ​​transmitted as necessary document metadata and a human-readable document in PDF format
- L2 – structured document divided into identifiable sections (entry examination, medical history, risk factors, medication, recommendations, …), the content is still kept only in textual non-formalized form
- L3 – The document is structured into identifiable sections (same as in L2), some information can be kept in formalized form, selected information will be kept in formalized and coded form

This page describes also the actors that have been defined for specifying the obligations.

### Actors

{% include fsh-link-references.md %}

Actors were specified in these roles:

| Role                                                    | Description                                                                                                                          |
| ------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| the [Level 1 Creator](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L1.html)   | This is a L1 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 1 Consumer](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L1.html) | This L1 actor represents the system that uses the received or retrieved report.                                                     |
| the [Level 2 Creator](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L2.html)   | This is a L2 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 2 Consumer](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L2.html) | This L2 actor represents the system that uses the received or retrieved report.                                                     |
| the [Level 3 Creator](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L3.html)   | This is a L3 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 3 Consumer](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L3.html) | This L3 actor represents the system that uses the received or retrieved report.                                                     |

<div style="margin: 1.5rem 0 2rem; padding: 1.25rem 1rem; background: linear-gradient(180deg, #f8fbff 0%, #eef5fb 100%); border: 1px solid #d7e6f2; border-radius: 14px;">

{% include img.html img="obligations-actors-en.svg" caption="Figure 1: Overview of obligations actors and their interactions" width="100%" %}

</div>

### Obligations List

- Obligations for profile Patient ([CZ_PatientObligationsLab](StructureDefinition-cz-patient-obl-lab.html))
- Obligations for profile Address ([CZ_AddressObligationsLab](StructureDefinition-cz-address-obl-lab.html))
- Obligations for profile Bundle ([CZ_BundleObligationsLab](StructureDefinition-cz-bundle-obl-lab.html))
- Obligations for profile Composition ([CZ_CompositionObligationsLab](StructureDefinition-cz-composition-obl-lab.html))
- Obligations for profile Coverage ([CZ_CoverageObligationsLab](StructureDefinition-cz-coverage-obl-lab.html))
- Obligations for profile Diagnostic Report ([CZ_DiagnosticReportObligationsLab](StructureDefinition-cz-diagnosticReport-obl-lab.html))
- Obligations for profile DocumentReference ([CZ_DocumentReferenceObligationsLab](StructureDefinition-cz-documentReference-obl-lab.html))
- Obligations for profile Encounter ([CZ_EncounterObligationsLab](StructureDefinition-cz-encounter-obl-lab.html))
- Obligations for profile Observation Result ([CZ_ObservationResultObligationsLab](StructureDefinition-cz-observationResult-obl-lab.html))
- Obligations for profile Organization ([CZ_OrganizationObligationsLab](StructureDefinition-cz-organization-obl-lab.html))
- Obligations for profile Patient Animal ([CZ_PatientAnimalObligationsLab](StructureDefinition-cz-patientAnimal-obl-lab.html))
- Obligations for profile Practitioner ([CZ_PractitionerObligationsLab](StructureDefinition-cz-practitioner-obl-lab.html))
- Obligations for profile Practitioner Role ([CZ_PractitionerRoleObligationsImg](StructureDefinition-cz-practitionerRole-obl-img.html))
- Obligations for profile Related Person ([CZ_RelatedPersonObligationsImg](StructureDefinition-cz-relatedPerson-obl-img.html))
- Obligations for profile Service Request ([CZ_ServiceRequestObligationsLab](StructureDefinition-cz-serviceRequest-obl-lab.html))
- Obligations for profile Specimen ([CZ_SpecimenObligationsLab](StructureDefinition-cz-specimen-obl-lab.html))
- Obligations for profile Attachment ([CZ_AttachmentObligationsLab](StructureDefinition-cz-attachment-obl-lab.html))

