ValueSet: CZ_BloodGroup
Id: cz-blood-group
Title: "Blood Group Finding Codes (CZ)"
Description: "Blood group finding value set. This value set includes codes from SNOMED CT®: all descendants of 365636006 |Finding of blood group (finding)|"

* ^language = #cs
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2026-01-01"
* ^publisher = "NCEZ"
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/cz-blood-group"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 2, trial-use)

* codes from system $sct where concept descendent-of #365636006 // krevní skupina jako nález