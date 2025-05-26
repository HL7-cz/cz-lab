Profile: CZ_ObservationResultLaboratory
Parent: Observation
Id: cz-observation-result-laboratory
Title: "Observation Laboratory (CZ)"
Description: """This profile constrains the Observation resource to represent results produced by laboratory tests or panels/studies.

This observation may represent the result of a simple laboratory test such as hematocrit or it may group the set of results produced by a multi-test study or panel such as a complete blood count, a dynamic function test, a urine specimen study. In the latter case, the observation carries the overall conclusion of the study and or a global interpretation by the producer of the study in the comment element; and references the atomic results of the study as "has-member" child observations.
"""

* insert ImposeProfile($Observation-resultslab-eu-lab)
* insert SetFmmandStatusRule ( 0, draft )

//* ^url = "https://ncez.mzcr.cz/standards/fhir/ig/lab/StructureDefinition/cz-observation-laboratory"
//* ^publisher = "Národní centrum elektronického zdravotnictví"
//* ^contact.telecom.system = #url
//* ^contact.telecom.value = "http://ncez.mzcr.cz"
* ^jurisdiction = $iso3166#CZ
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^purpose = "This profile constrains the Observation resource to represent a laboratory in vitro diagnostic test or panel/study. In case of a panel/study, the results of the panel appear as sub-observations. In this case this top-level Observation acts as a grouper of all the observations belonging to the panel or study. The top-level observation may carry a conclusion in the value element and or a global interpretation by the producer of the study, in the comment element."
* . ^short = "Laboratory result for a simple test or for a panel/study"
* . ^definition = "This observation may represent the result of a simple laboratory test such as hematocrit or it may group the set of results produced by a multi-test study or panel such as a complete blood count, a dynamic function test, a urine specimen study. In the latter case, the observation carries the overall conclusion of the study and references the atomic results of the study as \"has-member\" child observations"
* . ^comment = "Represents either a lab simple observation or the group of observations produced by a laboratory study."


//* text.status = #empty
* status ^short = "Status of this observation (e.g. preliminary, final,...)"
* category only $CodeableConcept-uv-ips
* code only $CodeableConcept-uv-ips
// * code MS
* subject 1..
* subject only Reference(CZ_PatientAnimal or CZ_PatientCore or Group or Device or CZ_LocationCore)
* subject.reference 1..

* obeys cz-lab-0
* obeys cz-lab-2
* extension contains $workflow-supportingInfo named supportingInfo 0..*

* extension contains $observation-triggeredBy-r5 named triggeredBy-r5 0..*
* extension[triggeredBy-r5].extension[observation] ^short = "Triggering observation."
* extension[triggeredBy-r5].extension[type] ^short = "The type of trigger" // from http://hl7.org/fhir/ValueSet/observation-triggeredbytype

* extension contains ObservationCertifiedRefMaterialCodeable named certifiedRefMaterialCodeable 0..*
* extension contains ObservationCertifiedRefMaterialIdentifer named certifiedRefMaterialIdentifer 0..*

* extension contains DeviceLabTestKit named labTestKit 0..*
  * ^short = "Laboratory Test Kit"
  * ^definition = """The laboratory test kit used for this test."""

* category only $CodeableConcept-uv-ips
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies the general type of observation being made."
* category ^comment = "\"laboratory\" includes laboratory medicine and pathology"
* category contains laboratory 1..1
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* category contains studyType 0..*
* category[studyType] only $CodeableConcept-uv-ips
* category[studyType] from CZ_LabStudyTypesVS
* category[studyType] ^short = "The way of grouping of the test results into clinically meaningful domains (e.g. hematology study, microbiology study, etc.)"
* category contains specialty 0..*
* category[specialty] only $CodeableConcept-uv-ips
* category[specialty] from CZ_LabSpecialityTypesVS
* category[specialty] ^short = "The clinical domain of the laboratory performing the observation (e.g. microbiology, toxicology, chemistry)"

* code
* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".\r\n\r\nThe implementer SHALL adhere to the preferred codes to use.\r\nThe recommended codification used is NCLP. It is allowed to use multiple codes within the FHIR CodeableConcept datatype. But the first code given must follow the following rules.(Other codes given will be for information purposes.)\r\n\r\nThe actual observation is preferably coded in NCLP \r\n\r\nIf that is not possible, laboratory may send its own local code plus obligatory a text element to further explain. \r\n\r\nIf that is not possible the kind of observation is expressed only in text (allowed but NOT RECOMMENDED)"
* code ^comment = "In the context of this Observation-laboratory profile, when the observation plays the role of a grouper of member sub-observations, the code represent the group (for instance a panel code). In case no code is available, at least a text shall be provided."
* code from CZ_NclpLabpolVS (preferred)

* effective[x] 1..
* effective[x] only dateTime or Period
* effective[x] obeys cz-lab-1 // efective datetime musí být uveden s přesností alespoň na den
* effective[x].extension ^slicing.discriminator.type = #value
* effective[x].extension ^slicing.discriminator.path = "url"
* effective[x].extension ^slicing.rules = #open
* effective[x].extension contains CZ_LabClinicallyRelevantTime named ClinicallyRelevantTime 0..1 MS
* effective[x].extension contains $ext-data-absent-reason named data-absent-reason 0..1
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."


* performer 1..
* performer only Reference(CareTeam or CZ_RelatedPersonCore or CZ_PatientCore or CZ_OrganizationCore or CZ_PractitionerRoleCore or CZ_PractitionerCore)

* performer.extension contains $event-performerFunction named performerFunction 0..*
* performer.extension[performerFunction]
// * performer.extension[performerFunction] ^meaningWhenMissing = """The Performer Function is Participant"""

* dataAbsentReason ^short = "Provides a reason why the expected value is missing."
* insert ObservationResultsValueCz

* interpretation only $CodeableConcept-uv-ips

* method ^definition = "Laboratory technigue that has been used"
* method ^comment = "Laboratory technique (method of measurement) are integral parts of the test specification of some laboratory test coding systems (e.g. NPU), in LOINC hovewer measurement principle is not always present in the test definition. In some cases however knowledge of the used measurment techique is important for proper interpretation of the test result.
That's why it is important to explicitly include informaiton about measurement method is such cases."
* method only $CodeableConcept-uv-ips
* method from CZ_LabTechniqueVs (preferred) // added binding to an agreed eu lab measurement method value set

* specimen only Reference(CZ_SpecimenLab)
  * ^comment = "When the specimen is applicable and known it shall be documented"

* device ^short = "Measuring instrument"
* device only Reference(CZ_DeviceObserver or DeviceMetric)
//* referenceRange.extension contains CZ_ReferenceRangeComment named Comment 0..*

* hasMember only Reference(CZ_ObservationResultLaboratory)
* hasMember ^definition = "A reference to another Observation profiled by Observation-results-laboratory-uv-ips. The target observation (for instance an individual test member of a panel) is considered as a sub-observation of the current one, which plays the role of a grouper."
* hasMember ^comment = "This element is used in the context of international patient summary when there is a need to group a collection of observations, because they belong to the same panel, or because they share a common interpretation comment, or a common media attachment (illustrative image or graph). In these cases, the current observation is the grouper, and its set of sub-observations are related observations using the type \"has-member\".  For a discussion on the ways Observations can be assembled in groups together see [Observation Grouping](http://hl7.org/fhir/observation.html#obsgrouping)."
* issued ^short = "Date/Time this result was made available"


* derivedFrom only Reference(DocumentReference or ImagingStudy or Media or QuestionnaireResponse or MolecularSequence or CZ_ObservationResultLaboratory)
* derivedFrom ^short = "In the initial iteration of the Czech interoperability project: this can be ObservationLaboratory (CZ) or Media"

* component
  * code only $CodeableConcept-uv-ips
  * code from CZ_NclpLabpolVS (preferred)
  * insert ObservationResultsValueCz

/*
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.coding.code"
* component ^slicing.rules = #open
* component contains
    relativeTimeQualifier 0..1 and
    substanceAmountQualifier 0..1 and
    productNameQualifier 0..1
* component[relativeTimeQualifier] ^short = "If a testing code does not include a time interval but needs one to qualify the code."
* component[relativeTimeQualifier].code.coding.system 1..
* component[relativeTimeQualifier].code.coding.system = "http://snomed.info/sct" (exactly)
* component[relativeTimeQualifier].code.coding.code 1..
* component[relativeTimeQualifier].code.coding.code = #118578006 (exactly)
* component[relativeTimeQualifier].code.coding.display 1..
* component[relativeTimeQualifier].code.coding.display = "Relative time" (exactly)
* component[relativeTimeQualifier].value[x] 1..
* component[relativeTimeQualifier].value[x] only Quantity
* component[relativeTimeQualifier].value[x] ^short = "UCUM"
* component[substanceAmountQualifier] ^short = "If a testing code does not include a substance amount but needs one to qualify the code"
* component[substanceAmountQualifier].code.coding.system 1..
* component[substanceAmountQualifier].code.coding.system = "http://snomed.info/sct" (exactly)
* component[substanceAmountQualifier].code.coding.code 1..
* component[substanceAmountQualifier].code.coding.code = #118555000 (exactly)
* component[substanceAmountQualifier].code.coding.display 1..
* component[substanceAmountQualifier].code.coding.display = "Substance amount" (exactly)
* component[substanceAmountQualifier].value[x] 1..
* component[substanceAmountQualifier].value[x] only Quantity
* component[substanceAmountQualifier].value[x] ^short = "UCUM"
* component[productNameQualifier] ^short = "If a testing code does not include a product name but needs one to qualify the code"
* component[productNameQualifier].code.coding.system 1..
* component[productNameQualifier].code.coding.system = "http://snomed.info/sct" (exactly)
* component[productNameQualifier].code.coding.code 1..
* component[productNameQualifier].code.coding.code = #774167006 (exactly)
* component[productNameQualifier].code.coding.display 1..
* component[productNameQualifier].code.coding.display = "Product name" (exactly)
* component[productNameQualifier].value[x] 1..
* component[productNameQualifier].value[x] only CodeableConcept or string
*/


// DE
// * value[x] only Quantity or CodeableConcept or Range or Ratio
// * value[x] MS
// * valueQuantity only Quantity
// * valueQuantity MS
// * valueQuantity ^sliceName = "valueQuantity"
// * valueQuantity.value 1.. MS
// * valueQuantity.unit 1.. MS
// * valueQuantity.system 1.. MS
// * valueQuantity.system = "http://unitsofmeasure.org" (exactly)
// * valueQuantity.code 1.. MS
// * valueQuantity.code ^comment = "The mandatory system is UCUM."
// * valueCodeableConcept only CodeableConcept
// * valueCodeableConcept MS
// * valueCodeableConcept ^sliceName = "valueCodeableConcept"
// * valueCodeableConcept.coding 1.. MS
// * valueCodeableConcept.coding.system 1.. MS
// * valueCodeableConcept.coding.code 1.. MS
// * dataAbsentReason MS
// * interpretation MS
// * note MS
// * bodySite ..0
// * method MS
// * specimen MS
// * specimen.reference MS
// * specimen.identifier MS
// * device MS
// * referenceRange MS
// ----------------

// ToDo: vyřešit urgentnost sdělení z rozhodnutí laboratoře viz blok ku_z_lab
// ToDo: jak sdělovat výsledky funkčních testů viz položky sci a atribut ind_vazb_fv


Invariant: cz-lab-0
Description: "If observation status is other then \"registered\" or \"cancelled\", at least one of these Observation elements shall be provided:  \"value\", \"dataAbsentReason\", \"hasMember\" or \"component\""
Severity: #error
Expression: "(status in ('registered'|'cancelled')) or value.exists() or hasMember.exists() or component.exists() or dataAbsentReason.exists()"

Invariant: cz-lab-2
Description: "If observation has components and observation status is other then \"registered\" or \"cancelled\", at least one of these Observation.component elements shall be provided:  \"value\" or \"dataAbsentReason\""
Severity: #error
Expression: "component.exists() implies (status in ('registered'|'cancelled')) or component.value.exists() or component.dataAbsentReason.exists()"
