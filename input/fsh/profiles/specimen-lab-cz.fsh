Profile: CZ_SpecimenLab
Parent: CZ_Specimen           // SpecimenEu
Id: cz-specimen-lab
Title: "Specimen Laboratory (CZ)"
Description: "Czech profile for a specimen in a laboratory report. In some laboratory reports, specimen information is allowed to be minimal as many informations concerning the specimen are implied by the observations done."
//* ^url = "https://ncez.mzcr.cz/standards/fhir/ig/lab/StructureDefinition/cz-specimen-lab"
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-09-27T14:58:00+01:00"
* ^publisher = "Národní centrum elektronického zdravotnictví"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://ncez.mzcr.cz"
* ^jurisdiction = $iso3166#CZ //$m49.htm#001
//* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1

* insert ImposeProfile($Specimen-eu-lab)
* insert SetFmmandStatusRule ( 0, draft )

// EU lab 2.0.0 alignment – type SHALL be present and preferably from the EU lab specimen types value set
* type 1..1
* type from $LabSpecimenTypesCzVs (preferred)

* collection //MS

// EU lab 2.0.0 alignment – container.additive[x] is closed (replaced by the R5 cross-version
// container.device extension for device-based containers).
* container //MS
* container.identifier //MS
* container.type //MS
* container.type from CZ_LabContainerTypes
* container.additive[x] 0..0
//* container.extension[device] 0..1
//  * ^short = "R5 cross-version backport of Specimen.container.device"

// EU lab 2.0.0 alignment – allow R5 collection.device backport
* collection.extension contains $specimen-collection-device-r5 named collection-device 0..*
  * ^short = "R5 cross-version backport of Specimen.collection.device"

* request only Reference(CZ_ServiceRequestLab)