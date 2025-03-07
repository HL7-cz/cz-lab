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
* obeys cz-lab-2
* language MS
* identifier MS
//* basedOn ^mustSupport = false
* partOf ^mustSupport = false
* status MS

* category ^definition = "A code that classifies the general type of observation being made. In this profile, fixed to \"laboratory\"."
* category ^comment = "\"laboratory\" includes laboratory medicine and pathology"
// (LN) * category only CZ_CodeableConcept
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies the general type of observation being made. In this profile, fixed to \"laboratory\"."
* category ^comment = "\"laboratory\" includes laboratory medicine and pathology"
// (LN) * category contains laboratory 1..1 MS
// (LN) * category[laboratory] only CZ_CodeableConcept
// (LN) * category[laboratory] = $observation-category#laboratory

/*
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open

* category.coding contains
//    loinc-observation 1..1 MS and
    observation-category 1..1 MS
//* category.coding[loinc-observation] = $loinc#26436-6
* category.coding[observation-category] = $observation-category#laboratory
*/

* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".\r\n\r\nThe implementer SHALL adhere to the preferred codes to use.\r\nThe recommended codification used is NCLP. It is allowed to use multiple codes within the FHIR CodeableConcept datatype. But the first code given must follow the following rules.(Other codes given will be for information purposes.)\r\n\r\nThe actual observation is preferably coded in NCLP \r\n\r\nIf that is not possible, laboratory may send its own local code plus obligatory a text element to further explain. \r\n\r\nIf that is not possible the kind of observation is expressed only in text (allowed but NOT RECOMMENDED)"
* code from CZ_NclpLabpolVS (preferred)

* subject ^short = "In the initial iteration of the Czech interoperability project: this is Patient (CZ)."

* effective[x] obeys cz-lab-1 // efective datetime musí být uveden s přesností alespoň na den
* effective[x].extension ^slicing.discriminator.type = #value
* effective[x].extension ^slicing.discriminator.path = "url"
* effective[x].extension ^slicing.rules = #open
* effective[x].extension contains CZ_LabClinicallyRelevantTime named ClinicallyRelevantTime 0..1 MS
//----------


* issued MS

// TODO: add standard extension for different performer roles to support all roles in current DASTA standard
* performer only Reference(CareTeam or RelatedPerson or CZ_PatientCore or CZ_OrganizationCore or CZ_PractitionerRoleCore or CZ_PractitionerCore)
* performer MS
* performer ^short = "In the initial iteration of the Czech interoperability project: this is Organization (CZ) or Practitioner (CZ)"
* value[x] MS
* dataAbsentReason MS
* interpretation MS

* note MS
//* note only CZ_CodedAnnotation

//* bodySite MS  // MS flag is releavant for lab observation or not?

* method MS  // doplnit binding na xeh-metod-VS - prodiskutovat s Mirkem

* specimen only Reference(CZ_SpecimenLab)
* specimen MS
//* device ^mustSupport = false
* device MS
* device only Reference(CZ_DeviceObserver or  DeviceMetric)
* referenceRange MS
//* referenceRange.extension contains CZ_ReferenceRangeComment named Comment 0..*

* hasMember only Reference(QuestionnaireResponse or MolecularSequence or CZ_ObservationResultLaboratory)
* hasMember MS
* hasMember ^short = "In the initial iteration of the Czech interoperability project: this is ObservationLaboratory (CZ)"

* derivedFrom only Reference(DocumentReference or ImagingStudy or Media or QuestionnaireResponse or MolecularSequence or CZ_ObservationResultLaboratory)
* derivedFrom MS
* derivedFrom ^short = "In the initial iteration of the Czech interoperability project: this can be ObservationLaboratory (CZ) or Media"

* component MS
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
//* subject only Reference(Patient or Group or Device or Location or BePatient)
//* performer 1..
//* performer only Reference(Practitioner or PractitionerRole or Organization or CareTeam or Patient or RelatedPerson or BePatient or BeOrganization or BePractitionerRole or BePractitioner)
//* performer ^comment = "References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc.). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository.\r\n\r\nSpecial remarks for KMEHR users:\r\nIn a KMEHR context, this would be 'author'."

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