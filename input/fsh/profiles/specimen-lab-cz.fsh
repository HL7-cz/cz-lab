Profile: CZ_SpecimenLab
Parent: Specimen
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

* text.status = #empty
* identifier MS
* identifier ^definition = "Business identifier for specimen is RECOMMENDED to include when available."
* status MS
* type MS
* type ^definition = "The kind of material that forms the specimen. RECOMMENDED to include."
* type from CZ_MikrobiologickeVzorkyDASTAVS (preferred)
* subject only Reference(Group or Device or CZ_MedicalDevice or Substance or Location or CZ_PatientCore)
* subject MS
* subject ^short = "In the initial iteration of the Czech interoperability project, this is CZ_PatientCore."
* receivedTime MS
* parent only Reference(CZ_SpecimenLab)
* parent MS
* request MS
* collection MS
* collection.collected[x] ^mustSupport = false
* collection.duration ^mustSupport = false
* collection.quantity ^mustSupport = false
* collection.method ^mustSupport = false
* collection.bodySite ^mustSupport = false
* collection.fastingStatus[x] ^mustSupport = false
* processing ^short = "Processing and processing step details to include when not implicit from specimen."
//* processing ^mustSupport = false
//* container ^mustSupport = false
* container MS
* container.identifier MS
* container.type MS
* container.type from cz-lab-container-types-VS (preferred)
* condition MS
* note MS
