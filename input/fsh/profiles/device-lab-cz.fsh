Profile: CZ_DeviceMeasuring
Parent: Device
Id: cz-device-measuring
Title: "Device: Measuring instrument (CZ)"
Description: "Device used as a measuring instrument for a laboratory observation. Aligned with the EU laboratory 2.0.0 profile Device-measuring-eu-lab."

* insert ImposeProfile($Device-measuring-eu-lab)
* insert SetFmmandStatusRule (0, draft)

* ^jurisdiction = $iso3166#CZ


Profile: CZ_DeviceSpecimen
Parent: Device
Id: cz-device-specimen
Title: "Device: Specimen-related device (CZ)"
Description: "Device associated with a specimen (e.g. collection device, container device). Aligned with the EU laboratory 2.0.0 profile Device-specimen-eu-lab."

* insert ImposeProfile($Device-specimen-eu-lab)
* insert SetFmmandStatusRule (0, draft)

* ^jurisdiction = $iso3166#CZ


Profile: CZ_SpecimenAdditiveSubstance
Parent: Substance
Id: cz-specimen-additive-substance
Title: "Substance: Specimen additive (CZ)"
Description: "Substance used as a specimen additive. Aligned with the EU laboratory 2.0.0 profile specimen-additive-substance-eu-lab."

* insert ImposeProfile($SpecimenAdditiveSubstance-eu-lab)
* insert SetFmmandStatusRule (0, draft)

* ^jurisdiction = $iso3166#CZ
