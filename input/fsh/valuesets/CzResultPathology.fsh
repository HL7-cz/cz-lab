ValueSet: CZ_PathologyFinding
Id: cz-pathology-finding
Title: "Pathology Findings (CZ)"
Description: """Pathology finding value set. This value set includes codes from SNOMED CT®: all descendants of 106253005 |Histologic grading differentiation AND/OR behavior (qualifier value)|; all descendants of 373369003 |Finding of histologic grading differentiation AND/OR behavior (finding)|; all descendants of 399981008 |Neoplasm and/or hamartoma (disorder)|

SNOMED CT® ECL definition:
< 106253005 |Histologic grading differentiation AND/OR behavior (qualifier value)| OR < 373369003 |Finding of histologic grading differentiation AND/OR behavior (finding)| OR < 399981008 |Neoplasm and/or hamartoma (disorder)|

"""

* ^language = #cs
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2026-01-01"
* ^publisher = "NCEZ"
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/cz-pathology-finding"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 2, trial-use)

* codes from system $sct where concept descendent-of #106253005 // Histologic grading differentiation AND/OR behavior
* codes from system $sct where concept descendent-of #373369003 // Finding of histologic grading differentiation AND/OR behavior (finding)
* codes from system $sct where concept descendent-of #399981008 // Neoplasm and/or hamartoma (disorder)
