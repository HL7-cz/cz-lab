/* Profile: Profile_HiGHmed_InfectionControl_Keimzahl
Parent: ProfileObservationLaboruntersuchung
Id: Profile-HiGHmed-InfectionControl-Keimzahl
Title: "Profile - HiGHmed - Infection Control - Keimzahl"
* ^url = "http://highmed.org/fhir/StructureDefinition/ic/Keimzahl"
* ^version = "1.0.0"
* category.coding contains loinc-microbiology-studies 1..1
* category.coding[loinc-microbiology-studies] = $loinc#18725-2
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains keimzahl-loinc 1..1 MS
* code.coding[keimzahl-loinc] from VS_HiGHmed_Mikrobiologischer_Befund_Keimzahl_LOINC (required)
* value[x] only CodeableConcept or Quantity
* valueQuantity from VS_HiGHmed_Mikrobiologischer_Befund_Keimzahl_Einheit_UCUM (required)
* valueCodeableConcept from $Laborergebnis-semiquantitativ (required)
* specimen 1..
* specimen only Reference(Profile_HiGHmed_InfectionControl_Specimen) */