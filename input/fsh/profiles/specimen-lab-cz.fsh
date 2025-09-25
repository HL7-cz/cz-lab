Profile: CZ_SpecimenLab
Parent: CZ_Specimen
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

* collection MS

* container MS
* container.identifier MS
* container.type MS

//* request only Reference(CZ_ServiceRequestLab)