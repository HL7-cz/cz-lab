ValueSet: CZ_PresenceAbsence
Id: cz-presence-absence
Title: "Presence/Absence Findings (CZ)"
Description: "Presence/Absence finding value set. This value set includes codes from SNOMED CT®: all descendants of 260411009 |Presence findings (qualifier value)|; all descendants of 272519000 |Absence findings (qualifier value)|"

* ^language = #cs
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2026-01-01"
* ^publisher = "NCEZ"
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/cz-presence-absence"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 2, trial-use)

* codes from system $sct where concept descendent-of #260411009 //(nález přítomnosti)
* codes from system $sct where concept descendent-of #272519000 //(nález nepřítomnosti)