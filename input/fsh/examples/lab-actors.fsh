// Pacient
Instance: Zyrgana
InstanceOf: CZ_PatientCore
Usage: #example
Description: "Fictional patient for the purpose of the example"
* id = "c60b7c0e-0d8c-4e43-9f52-86d1dcf1a43c"

//* contained[+] = RegisteringProviderExample
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rcis"
  * value = "8203171234"
  * use = #official
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rid"
  * value = "1122334455"
* identifier[+]
  * system = "http://hl7.org/fhir/sid/passport-CZE"
  * value = "CZE9876543"
  * use = #official
  * type = $v2-0203#PPN
* identifier[+]
  * system = "http://hl7.org/fhir/sid/passport-FRA"
  * value = "FRA1234567"
  * use = #official
  * type = $v2-0203#PPN

* extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#CZ
* name.use = #usual
* name.family = "Prouzdalová"
* name.given = "Zyrgana"
* telecom.system = #phone
* telecom.value = "+420777123987"
* telecom.use = #mobile
* gender = #female
* birthDate = "1982-03-17"
* address[+]
  * use = #home
  * type = #physical
  * text = "U Roury 42, 999 99, Počernice n. Mokrou"
  * line[+] = "U Roury 42"
    * extension[streetName].valueString = "U Roury"
    * extension[houseNumber].valueString = "42"
  * city = "Počernice nad Mokrou"
  * postalCode = "99999"
  * country = "Česko"
    * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"

* communication[+].language = urn:ietf:bcp:47#cs
* communication[=].preferred = true
* communication[+].language = urn:ietf:bcp:47#fr

* generalPractitioner.identifier.system = "https://ncez.mzcr.cz/fhir/sid/nrzp"
* generalPractitioner.identifier.value = "876543210"
* generalPractitioner.display = "MUDr. Kvido Polštář"

//* extension[registeringProvider][+].extension[value].valueReference = Reference(RegisteringProviderExample)
//* extension[registeringProvider][=].extension[category].valueCodeableConcept = $sct#700232004 "Všeobecné lékařské služby"
//* extension[registeringProvider][+].extension[value].valueReference = Reference(RegisteringProviderExample)
//* extension[registeringProvider][=].extension[category].valueCodeableConcept = $sct#408443003 "Léčba bolesti"


Instance: Mracena
InstanceOf: CZ_PatientCore
Usage: #example
Title: "Patient Mracena"
Description: "Patient Mracena with contact information and practitioner"

* id = "3f2a1b9e-6d4f-4c2e-9a7b-2d8f0b3e1c9a"

* identifier[RC][+].system = "https://ncez.mzcr.cz/fhir/sid/rcis"
* identifier[RC][=].value = "7161264528"
* identifier[RC][=].use = #official
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "2066425387"

//* extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#CZ
* name.use = #usual
* name.family = "Mrakomorová"
* name.given = "Mračena"
* telecom.system = #phone
* telecom.value = "+420 603 853 227"
* telecom.use = #home
* gender = #female
* birthDate = "1971-11-26"
* address[+].use = #home
* address[=].type = #physical
* address[=].text = "Malé náměstí 13a, 150 00, Praha 5"
* address[=].line[+] = "Malé náměstí 13a"
* address[=].line[=].extension[streetName].valueString = "Malé náměstí"
* address[=].line[=].extension[houseNumber].valueString = "13a"
* address[=].city = "Praha"
* address[=].postalCode = "15000"
* address[=].country = "Česko"
  * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"

* communication[+].language = urn:ietf:bcp:47#cs
* communication[=].preferred = true
* communication[+].language = urn:ietf:bcp:47#en
* communication[+].language = urn:ietf:bcp:47#de

* generalPractitioner.identifier.system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* generalPractitioner.identifier.value = "123456789"
* generalPractitioner.display = "MUDr. Josef Švejk"


// Registrující lékař
Instance: RegisteringProviderExample
InstanceOf: CZ_OrganizationCore
Title: "Organization: Registering healthcare provider example"
Description: "Fictional registering healthcare provider example"
Usage: #example

* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "999888777"
* type[+] = $drzar#320 "Samost. ordinace všeob. prakt. lékaře"
* name = "Ordinace MUDr. Kvida Polštáře"


// Nemocnice s laboratoří
Instance: NemocniceZlabekDolni
InstanceOf: CZ_OrganizationCore
Title: "Hospital Žlábek Dolní"
Description: "Healthcare facility requesting a laboratory examination."
Usage: #example

* id = "bc2b8a3e-999a-4f10-91ce-1dc12fa0e123"

* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "11223344"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krpzs"
* identifier[=].value = "ZD112233"

* active = true
* name = "Nemocnice Žlábek Dolní"

* telecom[+].system = #phone
* telecom[=].value = "+420510987654"

* telecom[+].system = #email
* telecom[=].value = "ordinace@zlabekdolni.cz"

* address[+].use = #work
* address[=].line = "Blatouchová 77"
* address[=].city = "Žlábek Dolní"
* address[=].postalCode = "54321"
* address[=].country = "Česko"
  * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"

// laboratorní pracovník
Instance: practitionerSejdlova
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Fictional laboratory technician Mgr. Kvilda Šejdlová"
* id = "fab321ab-7777-4444-cccc-abcdefabcdef"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "192837465"
* name.use = #usual
* name.prefix = "Mgr."
* name.given = "Kvilda"
* name.family = "Šejdlová"
* gender = #female


Instance: practitionerRoleSejdlova
InstanceOf: CZ_PractitionerRoleCore
Usage: #example
Description: "Role of Mgr. Kvilda Šejdlová (performing laboratory technician)"
* id = "aabbccdd-2222-3333-dddd-112233445566"
* practitioner = Reference(urn:uuid:fab321ab-7777-4444-cccc-abcdefabcdef)
* organization = Reference(urn:uuid:bc2b8a3e-999a-4f10-91ce-1dc12fa0e123) // Nemocnice Horní Dolní (laboratoř)
* code[NRZP_POVOLANI] = https://ncez.mzcr.cz/terminology/CodeSystem/nrzp-povolani#NL25 "Odborný pracovník v laboratorních metodách a v přípravě léčivých přípravků"
* active = true
* telecom[+].system = #email
* telecom[=].value = "kvilda.sejdlova@horni-dolni.eu"


// Lékař, který autorizuje/uvolňuje výsledky
Instance: practitionerZybradlo
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Fictional physician MUDr. Kvido Zýbradlo"
* id = "aabbccdd-1111-4222-9333-ffeeddccbbcc"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "975318642"
* name.use = #usual
* name.prefix = "MUDr."
* name.given = "Kvido"
* name.family = "Zýbradlo"
* gender = #male

Instance: practitionerRoleZybradlo
InstanceOf: CZ_PractitionerRoleCore
Usage: #example
Description: "Role of MUDr. Kvido Zýbradlo (legal authenticator of the result)"
* id = "ff223344-5566-4777-8899-ccbbccddeeff"
* practitioner = Reference(urn:uuid:aabbccdd-1111-4222-9333-ffeeddccbbcc)
* organization = Reference(urn:uuid:bc2b8a3e-999a-4f10-91ce-1dc12fa0e123)
* code[NRZP_POVOLANI] = https://ncez.mzcr.cz/terminology/CodeSystem/nrzp-povolani#L00 "Lékař"
* active = true
* telecom[+].system = #email
* telecom[=].value = "kvido.zybradlo@zlabekdolni.cz"

/*
// Žádající lékař
Instance: practitionerVycichlo
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Fictional physician MUDr. Erazim Vyčichlo"
* id = "c2a7b9de-3b44-4e6f-9e51-9a1b8f1c82f4"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "135792468"
* name.use = #usual
* name.prefix = "MUDr."
* name.given = "Erazim"
* name.family = "Vyčichlo"
* gender = #male
*/

// Lékař, který autorizuje/uvolňuje výsledky
Instance: practitionerFranc
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Fictional physician MUDr. Kvido Zýbradlo"
* id = "c2a7b9de-3b44-4e6f-9e51-9a1b8f1c82f4"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "275318649"
* name.use = #usual
* name.prefix = "MUDr."
* name.given = "Karel"
* name.family = "Franc"
* gender = #male


Instance: practitionerRoleFranc
InstanceOf: CZ_PractitionerRoleCore
Usage: #example
Description: "Role of MUDr. Karel Franc (requesting physician)"
* id = "3e4f8b7c-9a25-49cf-8b2a-2a8f1e7f3d66"
* practitioner = Reference(urn:uuid:c2a7b9de-3b44-4e6f-9e51-9a1b8f1c82f4)
* organization = Reference(urn:uuid:bc2b8a3e-999a-4f10-91ce-1dc12fa0e123)
* code[NRZP_POVOLANI] = https://ncez.mzcr.cz/terminology/CodeSystem/nrzp-povolani#L3 "Lékař po absolvování specializačního vzdělání (L3)"
* active = true
* telecom[+].system = #email
* telecom[=].value = "karel.franc@zlabekdolni.cz"