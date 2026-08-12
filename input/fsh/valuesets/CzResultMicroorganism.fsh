ValueSet: CZ_Microorganism
Id: cz-microorganism
Title: "Microorganism Findings (CZ)"
Description: """Microorganism Findings value set. This value set includes codes from SNOMED CT®: all descendants of 409822003 |Domain Bacteria (organism)|; all descendants of 441649000 |Class Cestoda and/or Class Trematoda and/or Phylum Nemata (organism)|; all descendants of 414561005 |Kingdom Fungi (organism)|; all descendants of 84676004 |Prion (organism)|; all descendants of 49872002 |Virus (organism)|; all descendants of 417396000 |Kingdom Protozoa (organism)|; all descendants of 419036000 |Domain Archaea (organism)|; all descendants of 426785004 |Kingdom Chromista (organism)|; all descendants of 370570004 |Kingdom Protoctista (organism)|; all descendants of 417377004 |Kingdom Viridiplantae (organism)|; all descendants of 243565002 |Slime mold (organism)|; all descendants of 106763003 |Class Insecta (organism)|

SNOMED CT® ECL definition:
< 409822003 |Domain Bacteria (organism)| OR
< 441649000 |Class Cestoda and/or Class Trematoda and/or Phylum Nemata (organism)| OR
< 414561005 |Kingdom Fungi (organism)| OR
< 84676004 |Prion (organism)| OR
< 49872002 |Virus (organism)| OR
< 417396000 |Kingdom Protozoa (organism)| OR
< 419036000 |Domain Archaea (organism)| OR
< 426785004 |Kingdom Chromista (organism)| OR
< 370570004 |Kingdom Protoctista (organism)| OR
< 417377004 |Kingdom Viridiplantae (organism)| OR
< 243565002 |Slime mold (organism)| OR
< 106763003 |Class Insecta (organism)|
"""

* ^language = #cs
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2026-01-01"
* ^publisher = "NCEZ"
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/cz-microorganism"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule (2, trial-use)

* codes from system $sct where concept descendent-of #409822003  // doména bakterie
* codes from system $sct where concept descendent-of #441649000  // třída Cestoda a/nebo třída Trematoda a/nebo Phylum Nemata
* codes from system $sct where concept descendent-of #414561005  // houby
* codes from system $sct where concept descendent-of #84676004 // priony
* codes from system $sct where concept descendent-of #49872002 // viry
* codes from system $sct where concept descendent-of #417396000  // říše prvoci
* codes from system $sct where concept descendent-of #419036000  // doména archebakterie
* codes from system $sct where concept descendent-of #426785004  // Chromista
* codes from system $sct where concept descendent-of #370570004  // Protoctista
* codes from system $sct where concept descendent-of #417377004  // říše rostliny
* codes from system $sct where concept descendent-of #243565002  // slizovka (Mycetozoa)
* codes from system $sct where concept descendent-of #106763003  // hmyz
