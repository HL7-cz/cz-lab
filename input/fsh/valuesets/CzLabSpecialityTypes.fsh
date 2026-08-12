ValueSet: CZ_LabSpecialty
Id: cz-lab-specialty
Title: "Laboratory Specialty Types (CZ)"
// Description: "Typy specializací laboratorní medicíny podle SNOMED CT pro použití v českých laboratorních implementacích (např. sekce v Composition, klasifikace laboratoře apod.)."
Description: "Types of laboratory medicine specialties based on SNOMED CT for use in Czech laboratory implementations, for example in Composition sections or laboratory classification."

* ^language = #cs
//* ^identifier.system = "urn:ietf:rfc:3986"
// add value * ^identifier.value = "urn:oid:1.2.203.24341.11.1.1"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-08-11"
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/cz-lab-specialty"

* insert SNOMEDCopyrightForVS
* insert SetFmmandStatusRule ( 2, trial-use)
* $sct#394596001    "klinická biochemie" //"Chemical pathology"
* $sct#394916005    "hematologie" //"Hematopathology"
* $sct#421661004    "transfuzní lékařství" //"Blood banking and transfusion medicine"
* $sct#394915009    "všeobecná patologie (specializace)" //"General pathology"
* $sct#394598000    "klinická imunologie" //"Immunopathology"
* $sct#408454008    "klinická mikrobiologie" //mikrobiologie "Clinical microbiology"
* $sct#1236877003   "laboratorní genetika" //"Genetic pathology"
* $sct#1236878008   "histokompatibilita a imunogenetika" //"Histocompatibility and Immunogenetics"