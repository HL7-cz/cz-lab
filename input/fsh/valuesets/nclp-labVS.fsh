ValueSet: CZ_NclpLabpolVS
Id: cz-nclp-labpol-vs
// Title: "Národní číselník laboratorních položek"
Title: "National Code List of Laboratory Items"
// Description: "Sada obsahuje všechny položky kódového systému NČLP, které se používají pro identifikaci laboratorních testů, a to jak na laboratorních žádankách, tak v laboratorních nálezech a jiných typech zdravotnické dokumentace."
Description: "This value set contains all items from the NCLP code system used to identify laboratory tests in laboratory requests, laboratory reports, and other types of health documentation."
//* ^url = "https://hl7.cz/fhir/lab/ValueSet/cz-nclp-labpol-vs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^publisher = "https://ncez.mzcr.cz"
* ^date = "2023-01-01"

// obsah
* include codes from system $nclp