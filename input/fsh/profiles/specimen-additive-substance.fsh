Profile: CZ_SpecimenAdditiveSubstance
Parent: Substance
Id: cz-specimen-additive-substance
Title: "Substance: Specimen additive (CZ)"
Description: "Substance used as a specimen additive. Aligned with the EU Laboratory 2.0.0 profile Substance-additive-eu-lab."

* insert ImposeProfile($SpecimenAdditiveSubstance-eu-lab)
* insert SetFmmandStatusRule (2, trial-use)

* ^jurisdiction = $iso3166#CZ
* code from $CZ_LabSpecimenAdditive
