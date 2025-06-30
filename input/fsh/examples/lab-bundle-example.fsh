Instance: CZ-LabReport-Bundle-Example
InstanceOf: CZ_BundleLab
Usage: #example
Title: "CZ Lab Report Bundle Example"
Description: "Czech Lab Report - example of a bundle containing lab observation(s)"

* identifier.system = "http://hospital.example.org/lab-results"
* identifier.value = "LR123456"
* type = #document
* timestamp = "2025-04-25T10:30:00+01:00"
// composition
* entry[composition].fullUrl = "urn:uuid:05f95a04-cb07-4bd2-8833-c40521f1182c"
* entry[composition].resource = CZ-LabReport-Composition-Example
// diagnostic report
* entry[diagnosticReport].fullUrl = "urn:uuid:41ae1cd0-7f48-4d86-9643-21442d8e418e"
* entry[diagnosticReport].resource = CZ-LabReport-DiagnosticReport-Example
// patient
* entry[patient].fullUrl = "urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9"
* entry[patient].resource = patientJakotyc
// coverage
* entry[coverage].fullUrl = "urn:uuid:8d08dca4-bf95-4b46-bcb4-e5b127aa2e30"
* entry[coverage].resource = JakotycInsurance
// practitioner
* entry[practitioner][+].fullUrl = "urn:uuid:7e243f25-5292-4f5a-9a8c-2a2a9a3e8f7f"
* entry[practitioner][=].resource = practitionerSlofak
* entry[practitioner][+].fullUrl = "urn:uuid:fa4f28b1-1234-4f78-9cda-dcf01f228acf"
* entry[practitioner][=].resource = practitionerHrcalkova
// practitionerRole
* entry[practitionerRole][+].fullUrl = "urn:uuid:cc8e6b12-2b99-48cf-9c3c-3c8d74805821"
* entry[practitionerRole][=].resource = practitionerRoleSlofak
* entry[practitionerRole][+].fullUrl = "urn:uuid:a03d1fcb-c3dc-4c3f-803f-3b7ae3b5e47a"
* entry[practitionerRole][=].resource = practitionerRoleHrcalkova
// organization - nemocnice
* entry[organization][+].fullUrl = "urn:uuid:fd0cbd93-d65e-47b2-86c9-792268a2c1ff"
* entry[organization][=].resource = NemocniceHorniDolni
// organization - pojistovna
* entry[organization][+].fullUrl = "urn:uuid:abcdef12-3456-7890-abcd-1234567890ab"
* entry[organization][=].resource = pojistovna

// Specimens
* entry[+].fullUrl = "urn:uuid:9014ce97-a357-4a4a-b0e0-32e7ba85801d"
* entry[=].resource = Specimen-Krev-Serologie
* entry[+].fullUrl = "urn:uuid:b7a2f9d3-760f-4a89-bbbf-12199808f2e5"
* entry[=].resource = Specimen-Krev-Hematologie
* entry[+].fullUrl = "urn:uuid:04bb3e5b-83fb-41a5-b260-c91cdba5df80"
* entry[=].resource = Specimen-Moc

// Observations - moč
* entry[+].fullUrl = "urn:uuid:172bc194-10b5-4e82-a9c3-2936b3b2523e"
* entry[=].resource = Observation-SpecHmotnost
* entry[+].fullUrl = "urn:uuid:b470bdf4-93ab-42d2-b5fb-c0dc69f87c72"
* entry[=].resource = Observation-pH

// Observations - krev - minerály
* entry[+].fullUrl = "urn:uuid:ad631612-fb27-4a7c-930e-73e22aff18f1"
* entry[=].resource = Observation-Sodium
* entry[+].fullUrl = "urn:uuid:9ba0669f-1a1e-4361-8d9b-70af9225fb4b"
* entry[=].resource = Observation-Potassium
* entry[+].fullUrl = "urn:uuid:5e058858-c126-4f0e-9202-ece18d3c9c3e"
* entry[=].resource = Observation-Chloride

// Observations - krev - zanet. markery
* entry[+].fullUrl = "urn:uuid:e2d39425-bc9b-4fcd-88fb-3499d14d8670"
* entry[=].resource = Observation-CRP
* entry[+].fullUrl = "urn:uuid:f53d66a1-c9c4-4b58-b04b-3c86a2ec0c16"
* entry[=].resource = Observation-Prokalcitonin
/*
// Observations - krev - serologie
* entry[+].fullUrl = "urn:uuid:b0f7fc5d-d204-4e1c-b72f-83736e73efa4"
* entry[=].resource = Observation-antiHAVIgM
* entry[+].fullUrl = "urn:uuid:5eb7e3de-27a2-47bc-b67c-c085343f11eb"
* entry[=].resource = Observation-antiHAVIgG
* entry[+].fullUrl = "urn:uuid:dd34ef38-f949-4cc7-9b98-e2e3b55c84d5"
* entry[=].resource = Observation-AntiHCV
*/
// Observations - krev - hematologie
* entry[+].fullUrl = "urn:uuid:a6c9f96b-23ea-4644-aadc-b11b8d3a17e2"
* entry[=].resource = Observation-Leukocyty
* entry[+].fullUrl = "urn:uuid:c4a42d64-5e43-449a-9460-3fd15cbbeff1"
* entry[=].resource = Observation-Erytrocyty
* entry[+].fullUrl = "urn:uuid:9b4c7d7f-8495-42bc-877f-b9864317ed38"
* entry[=].resource = Observation-Hemoglobin



Instance: CZ-LabReport-Composition-Example
InstanceOf: CZ_CompositionLabReport 
Usage: #inline
Title: "Lab Result Composition Example"
Description: "An example of a laboratory report Composition for a glucose result"

* id = "05f95a04-cb07-4bd2-8833-c40521f1182c"
* language = #cs-CZ
* status = #final
* type = http://loinc.org#11502-2 "Laboratory report"
* category = $loinc#26436-6 "Laboratory studies (set)" 
* title = "Laboratorní nález"
* date = "2025-04-25T10:00:00+01:00"
* confidentiality = #N
* extension[diagnosticReport-reference].valueReference = Reference(urn:uuid:41ae1cd0-7f48-4d86-9643-21442d8e418e)

* custodian = Reference(urn:uuid:fd0cbd93-d65e-47b2-86c9-792268a2c1ff)
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* author[0] = Reference(urn:uuid:7e243f25-5292-4f5a-9a8c-2a2a9a3e8f7f) 


// Sekce: Moč
* section[lab-no-subsections]
  * title = "Moč"
  * code = $loinc#18719-5 "Chemistry studies (set)"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Výsledky vyšetření moči</div>"
  * entry[+] = Reference(urn:uuid:172bc194-10b5-4e82-a9c3-2936b3b2523e) // spec. hmotnost
  * entry[+] = Reference(urn:uuid:b470bdf4-93ab-42d2-b5fb-c0dc69f87c72) // pH

// Sekce: Biochemie s podsekcemi
* section[lab-subsections]
  * title = "Biochemie"
  * code = $loinc#18719-5 "Chemistry studies (set)"
  * section[+]
    * title = "Základní vyšetření sérum/plazma"
    * code = $loinc#18719-5 "Chemistry studies (set)"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Základní vyšetření sérum/plazma</div>"
    * entry[+] = Reference(urn:uuid:ad631612-fb27-4a7c-930e-73e22aff18f1) // sodik
    * entry[+] = Reference(urn:uuid:9ba0669f-1a1e-4361-8d9b-70af9225fb4b) // draslik
    * entry[+] = Reference(urn:uuid:5e058858-c126-4f0e-9202-ece18d3c9c3e) // chloridy
  * section[+]
    * title = "Markery zánětu"
    * code = $loinc#18719-5 "Chemistry studies (set)"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Markery zánětu</div>"
    * entry[+] = Reference(urn:uuid:e2d39425-bc9b-4fcd-88fb-3499d14d8670) // CRP
    * entry[+] = Reference(urn:uuid:f53d66a1-c9c4-4b58-b04b-3c86a2ec0c16) // prokalcitonin
 /* * section[+]
    * title = "Serologická vyšetření"
    * code = $loinc#18719-5 "Chemistry studies (set)"
    * text.status = #generated
    * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Serologická vyšetření</div>"
    * entry[+] = Reference(urn:uuid:b0f7fc5d-d204-4e1c-b72f-83736e73efa4) // anti-HAV-IgM
    * entry[+] = Reference(urn:uuid:5eb7e3de-27a2-47bc-b67c-c085343f11eb) // anti-HAVI-gG
    * entry[+] = Reference(urn:uuid:dd34ef38-f949-4cc7-9b98-e2e3b55c84d5) // anti-HCV
*/
// Sekce: Hematologie
* section[lab-no-subsections]
  * title = "Hematologie"
  * code = $loinc#18723-7 "Hematology studies (set)"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Výsledky krevního obrazu</div>"
  * entry[+] = Reference(urn:uuid:a6c9f96b-23ea-4644-aadc-b11b8d3a17e2) // leukocyty
  * entry[+] = Reference(urn:uuid:c4a42d64-5e43-449a-9460-3fd15cbbeff1) // erytrocyty
  * entry[+] = Reference(urn:uuid:9b4c7d7f-8495-42bc-877f-b9864317ed38) // hemoglobin


Instance: CZ-LabReport-DiagnosticReport-Example
InstanceOf: CZ_DiagnosticReportLab
Usage: #inline
Title: "Lab Result DiagnosticReport"
Description: "Example of DiagnosticReport for lab result"

* id = "41ae1cd0-7f48-4d86-9643-21442d8e418e"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(urn:uuid:05f95a04-cb07-4bd2-8833-c40521f1182c)
* status = #final
* category[studyType] = $loinc#26436-6 "Laboratory studies (set)" 
* code = http://loinc.org#11502-2 "Laboratory report"

* effectiveDateTime = "2025-04-24T08:45:00+01:00"
* issued = "2025-04-24T09:30:00+01:00"

* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* specimen[+] = Reference(urn:uuid:9014ce97-a357-4a4a-b0e0-32e7ba85801d)
* specimen[+] = Reference(urn:uuid:b7a2f9d3-760f-4a89-bbbf-12199808f2e5)
* specimen[+] = Reference(urn:uuid:04bb3e5b-83fb-41a5-b260-c91cdba5df80)

* performer[+] = Reference(urn:uuid:cc8e6b12-2b99-48cf-9c3c-3c8d74805821)
* performer[+] = Reference(urn:uuid:a03d1fcb-c3dc-4c3f-803f-3b7ae3b5e47a)

* result[+] = Reference(urn:uuid:172bc194-10b5-4e82-a9c3-2936b3b2523e)
* result[+] = Reference(urn:uuid:b470bdf4-93ab-42d2-b5fb-c0dc69f87c72)

* result[+] = Reference(urn:uuid:ad631612-fb27-4a7c-930e-73e22aff18f1)
* result[+] = Reference(urn:uuid:9ba0669f-1a1e-4361-8d9b-70af9225fb4b)
* result[+] = Reference(urn:uuid:5e058858-c126-4f0e-9202-ece18d3c9c3e)

* result[+] = Reference(urn:uuid:e2d39425-bc9b-4fcd-88fb-3499d14d8670)
* result[+] = Reference(urn:uuid:f53d66a1-c9c4-4b58-b04b-3c86a2ec0c16)

/*
* result[+] = Reference(urn:uuid:b0f7fc5d-d204-4e1c-b72f-83736e73efa4)
* result[+] = Reference(urn:uuid:5eb7e3de-27a2-47bc-b67c-c085343f11eb)
* result[+] = Reference(urn:uuid:dd34ef38-f949-4cc7-9b98-e2e3b55c84d5)
*/
* result[+] = Reference(urn:uuid:a6c9f96b-23ea-4644-aadc-b11b8d3a17e2)
* result[+] = Reference(urn:uuid:c4a42d64-5e43-449a-9460-3fd15cbbeff1)
* result[+] = Reference(urn:uuid:9b4c7d7f-8495-42bc-877f-b9864317ed38)



Instance: patientJakotyc
InstanceOf: CZ_PatientCore
Usage: #inline
Description: "Virtuální pacient: Stojan Jakotyc"

* id = "11af8e2a-3e10-426e-b80f-4c9f9c7de3c9"

* identifier[CPOJ][+].system = "https://ncez.mzcr.cz/fhir/sid/cpoj"
* identifier[CPOJ][=].value = "0998877665"
* identifier[CPOJ][=].use = #official

* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "1234567890"

* extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#CZ

* name.use = #usual
* name.family = "Jakotyc"
* name.given = "Stojan"
* name.prefix = "Bc."

* gender = #male
* birthDate = "1980-01-23"

* address[+].use = #home
* address[=].type = #physical
* address[=].text = "U Křivého stromu 99, 99999 Dolejší Lhoty"
* address[=].line[+] = "U Křivého stromu 99"
* address[=].line[=].extension[streetName].valueString = "U Křivého stromu"
* address[=].line[=].extension[houseNumber].valueString = "99"
* address[=].city = "Dolejší Lhoty"
* address[=].postalCode = "99999"
* address[=].country = "CZ"

* telecom[+].system = #phone
* telecom[=].value = "+420777000999"
* telecom[=].use = #mobile

* telecom[+].system = #email
* telecom[=].value = "stojan.jakotyc@example.cz"
* telecom[=].use = #home



Instance: JakotycInsurance
InstanceOf: CZ_Coverage
Description: "Příklad pojištění"
Usage: #inline
Title: "Příklad pojištění zdravotní pojišťovnou"

* id = "8d08dca4-bf95-4b46-bcb4-e5b127aa2e30"
* status = #active
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/rc"
* identifier[=].value = "8001231234"
* identifier[=].use = #official

* beneficiary = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* payor = Reference(urn:uuid:abcdef12-3456-7890-abcd-1234567890ab)



Instance: practitionerSlofak
InstanceOf: CZ_PractitionerCore
Usage: #inline
Description: "Virtuální lékař Záboj Šlofák"
* id = "7e243f25-5292-4f5a-9a8c-2a2a9a3e8f7f"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "123456789"
* name.use = #usual
* name.prefix = "MUDr."
* name.given = "Záboj"
* name.family = "Šlofák"
* gender = #male


Instance: practitionerHrcalkova
InstanceOf: CZ_PractitionerCore
Usage: #inline
Description: "Virtuální lékařka Milbožena Hrčálková"
* id = "fa4f28b1-1234-4f78-9cda-dcf01f228acf"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "987654321"
* name.use = #usual
* name.prefix = "MUDr."
* name.given = "Milbožena"
* name.family = "Hrčálková"
* gender = #female


Instance: practitionerRoleSlofak
InstanceOf: CZ_PractitionerRoleCore
Usage: #inline
Description: "Role MUDr. Záboje Šlofáka"
* id = "cc8e6b12-2b99-48cf-9c3c-3c8d74805821"
* practitioner = Reference(urn:uuid:7e243f25-5292-4f5a-9a8c-2a2a9a3e8f7f)
* organization = Reference(urn:uuid:fd0cbd93-d65e-47b2-86c9-792268a2c1ff)
* code[NRZP_POVOLANI] = https://ncez.mzcr.cz/fhir/CodeSystem/nrzp-povolani#NL25 "Odborný pracovník v laboratorních metodách a v přípravě léčivých přípravků"
* active = true
* telecom[+].system = #phone
* telecom[=].value = "+420775111222"


Instance: practitionerRoleHrcalkova
InstanceOf: CZ_PractitionerRoleCore
Usage: #inline
Description: "Role MUDr. Milboženy Hrčálkové"
* id = "a03d1fcb-c3dc-4c3f-803f-3b7ae3b5e47a"
* practitioner = Reference(urn:uuid:fa4f28b1-1234-4f78-9cda-dcf01f228acf)
* organization = Reference(urn:uuid:fd0cbd93-d65e-47b2-86c9-792268a2c1ff)
* code[NRZP_POVOLANI] = https://ncez.mzcr.cz/fhir/CodeSystem/nrzp-povolani#NL25 "Odborný pracovník v laboratorních metodách a v přípravě léčivých přípravků"
* active = true
* telecom[+].system = #email
* telecom[=].value = "milbozena.hrcalkova@vzor-nemocnice.cz"



Instance: NemocniceHorniDolni
InstanceOf: CZ_OrganizationCore
Title: "Nemocnice Horní Dolní"
Description: "Virtuální nemocnice pro účely příkladu."
Usage: #inline

* id = "fd0cbd93-d65e-47b2-86c9-792268a2c1ff"

* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "12345678"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krpzs"
* identifier[=].value = "ICZ123456"

* active = true
* name = "Nemocnice Horní Dolní"

* telecom[+].system = #phone
* telecom[=].value = "+420555123456"

* telecom[+].system = #email
* telecom[=].value = "info@horni-dolni.eu"

* address[+].use = #work
* address[=].line = "Masarykova 1"
* address[=].city = "Horní Dolní"
* address[=].postalCode = "12345"
* address[=].country = "CZ"


Instance: pojistovna
InstanceOf: CZ_OrganizationCore
Usage: #inline
Description: "Example of insurance organisation"
Title: "Organization - Healthcare insurance company"

* id = "abcdef12-3456-7890-abcd-1234567890ab"
* name = "Všeobecná zdravotní pojišťovna ČR"
* identifier[KP].system =  "https://ncez.mzcr.cz/fhir/sid/kp"
* identifier[KP].value = "111"


// =====================
// SPECIMENS
// =====================
Instance: Specimen-Krev-Serologie
InstanceOf: CZ_SpecimenLab
Usage: #inline
* id = "9014ce97-a357-4a4a-b0e0-32e7ba85801d"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">-</div>"
* type = http://terminology.hl7.org/CodeSystem/v2-0487#BLDV "Blood venous"
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* receivedTime = "2025-04-24T09:30:00+02:00"
* collection.collectedDateTime = "2025-04-24T08:00:00+02:00"
* container.type = $sct#706049000 "Blood collection tube"


Instance: Specimen-Krev-Hematologie
InstanceOf: CZ_SpecimenLab
Usage: #inline
* id = "b7a2f9d3-760f-4a89-bbbf-12199808f2e5"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vzorek nesrážlivé žilní krve pro hematologii</div>"
* type = http://terminology.hl7.org/CodeSystem/v2-0487#BLDV "Blood venous"
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* receivedTime = "2025-04-24T09:30:00+02:00"
* collection.collectedDateTime = "2025-04-24T08:00:00+02:00"
//* container.type = $sct#706049000 "Blood collection tube"
//* container.additiveCodeableConcept = $sct#125141000146109 "EDTA solution (substance)"



Instance: Specimen-Moc
InstanceOf: CZ_SpecimenLab
Usage: #inline
* id = "04bb3e5b-83fb-41a5-b260-c91cdba5df80"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">-</div>"
* type = http://terminology.hl7.org/CodeSystem/v2-0487#URINM "Urine, Midstream"
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* receivedTime = "2025-04-24T09:30:00+02:00"
* collection.collectedDateTime = "2025-04-24T08:15:00+02:00"
//* container.type = $sct#702224000 "Midstream urine specimen container"

// =====================
// OBSERVATIONS
// =====================
// Moč
Instance: Observation-SpecHmotnost
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
* id = "172bc194-10b5-4e82-a9c3-2936b3b2523e"
* status = #final
* category[laboratory] = $observation-category#laboratory
* effectiveDateTime = "2025-04-24T08:15:00+02:00"
* code = $nclp#05143
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* specimen = Reference(urn:uuid:04bb3e5b-83fb-41a5-b260-c91cdba5df80)
* performer = Reference(urn:uuid:a03d1fcb-c3dc-4c3f-803f-3b7ae3b5e47a)
* valueQuantity = 1.035 'kg/m3'
* interpretation = $ObservationInterpretation#N "Normal"

Instance: Observation-pH
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
* id = "b470bdf4-93ab-42d2-b5fb-c0dc69f87c72"
* status = #final
* effectiveDateTime = "2025-04-24T08:15:00+02:00"
* code = $nclp#03410
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* specimen = Reference(urn:uuid:04bb3e5b-83fb-41a5-b260-c91cdba5df80)
* performer = Reference(urn:uuid:a03d1fcb-c3dc-4c3f-803f-3b7ae3b5e47a)
* valueQuantity.value = 6.0
* valueQuantity.unit = "pH"
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#pH
* referenceRange.low.value = 5.5
* referenceRange.high.value = 7.0
* interpretation = $ObservationInterpretation#N "Normal"


// Krev - Minerály
Instance: Observation-Sodium
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
* id = "ad631612-fb27-4a7c-930e-73e22aff18f1"
* status = #final
* effectiveDateTime = "2025-04-24T08:00:00+02:00"
* code = $nclp#05272
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* specimen = Reference(urn:uuid:9014ce97-a357-4a4a-b0e0-32e7ba85801d)
* performer = Reference(urn:uuid:a03d1fcb-c3dc-4c3f-803f-3b7ae3b5e47a)
* valueQuantity.value = 146.2
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#mmol/L
* interpretation = $ObservationInterpretation#H "High"

Instance: Observation-Potassium
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
* id = "9ba0669f-1a1e-4361-8d9b-70af9225fb4b"
* status = #final
* effectiveDateTime = "2025-04-24T08:00:00+02:00"
* code = $nclp#05254
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* specimen = Reference(urn:uuid:9014ce97-a357-4a4a-b0e0-32e7ba85801d)
* performer = Reference(urn:uuid:a03d1fcb-c3dc-4c3f-803f-3b7ae3b5e47a)
* valueQuantity.value = 3.92
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#mmol/L
* interpretation = $ObservationInterpretation#N "Normal"

Instance: Observation-Chloride
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
* id = "5e058858-c126-4f0e-9202-ece18d3c9c3e"
* status = #final
* effectiveDateTime = "2025-04-24T08:00:00+02:00"
* code = $nclp#05187
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* specimen = Reference(urn:uuid:9014ce97-a357-4a4a-b0e0-32e7ba85801d)
* performer = Reference(urn:uuid:a03d1fcb-c3dc-4c3f-803f-3b7ae3b5e47a)
* valueQuantity.value = 115.1
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#mmol/L
* interpretation = $ObservationInterpretation#HU "Significantly high"


// Krev - zanet. markery
Instance: Observation-CRP
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
* id = "e2d39425-bc9b-4fcd-88fb-3499d14d8670"
* status = #final
* effectiveDateTime = "2025-04-24T08:00:00+02:00"
* code = $nclp#01522 "C-reaktivní protein"
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* specimen = Reference(urn:uuid:9014ce97-a357-4a4a-b0e0-32e7ba85801d)
* performer = Reference(urn:uuid:a03d1fcb-c3dc-4c3f-803f-3b7ae3b5e47a)
* valueQuantity.value = 99.7
* valueQuantity.unit = "mg/L"
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#mg/L
* interpretation = $ObservationInterpretation#H "High"

Instance: Observation-Prokalcitonin
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
* id = "f53d66a1-c9c4-4b58-b04b-3c86a2ec0c16"
* status = #final
* effectiveDateTime = "2025-04-24T08:00:00+02:00"
* code = $nclp#12233 "Prokalcitonin"
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* specimen = Reference(urn:uuid:9014ce97-a357-4a4a-b0e0-32e7ba85801d)
* performer = Reference(urn:uuid:a03d1fcb-c3dc-4c3f-803f-3b7ae3b5e47a)
* valueQuantity.value = 0.22
* valueQuantity.unit = "µg/L"
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#ug/L
* interpretation = $ObservationInterpretation#N "Normal"


/*
// Krev - Serologie
Instance: Observation-antiHAVIgM
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
* id = "b0f7fc5d-d204-4e1c-b72f-83736e73efa4"
* status = #final
* effectiveDateTime = "2025-04-24T08:00:00+02:00"
* code = $nclp#19353
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* specimen = Reference(urn:uuid:9014ce97-a357-4a4a-b0e0-32e7ba85801d)
* performer = Reference(urn:uuid:a03d1fcb-c3dc-4c3f-803f-3b7ae3b5e47a)
* valueCodeableConcept = $sct#260385009 "Negative"
* interpretation = $ObservationInterpretation#NEG "Negative"

Instance: Observation-antiHAVIgG
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
* id = "5eb7e3de-27a2-47bc-b67c-c085343f11eb"
* status = #final
* effectiveDateTime = "2025-04-24T08:00:00+02:00"
* code = $nclp#16517
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* specimen = Reference(urn:uuid:9014ce97-a357-4a4a-b0e0-32e7ba85801d)
* performer = Reference(urn:uuid:a03d1fcb-c3dc-4c3f-803f-3b7ae3b5e47a)
* valueCodeableConcept = $sct#10828004 "Positive"
* interpretation = $ObservationInterpretation#POS "Positive"

Instance: Observation-AntiHCV
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
* id = "dd34ef38-f949-4cc7-9b98-e2e3b55c84d5"
* status = #final
* effectiveDateTime = "2025-04-24T08:00:00+02:00"
* code = $nclp#00384
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* specimen = Reference(urn:uuid:9014ce97-a357-4a4a-b0e0-32e7ba85801d)
* performer = Reference(urn:uuid:a03d1fcb-c3dc-4c3f-803f-3b7ae3b5e47a)
* valueCodeableConcept = $sct#260385009 "Negative"
* interpretation = $ObservationInterpretation#NEG "Negative"
*/

// Krevni obraz
Instance: Observation-Leukocyty
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
* id = "a6c9f96b-23ea-4644-aadc-b11b8d3a17e2"
* status = #final
* effectiveDateTime = "2025-04-24T08:00:00+02:00"
* code = $nclp#13808 "Leukocyty"
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* specimen = Reference(urn:uuid:b7a2f9d3-760f-4a89-bbbf-12199808f2e5)
* performer = Reference(urn:uuid:cc8e6b12-2b99-48cf-9c3c-3c8d74805821)
* valueQuantity.value = 6.9
* valueQuantity.unit = "10^9/L"
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#10*9/L
* interpretation = $ObservationInterpretation#N "Normal"

Instance: Observation-Erytrocyty
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
* id = "c4a42d64-5e43-449a-9460-3fd15cbbeff1"
* status = #final
* effectiveDateTime = "2025-04-24T08:00:00+02:00"
* code = $nclp#01675 "Erytrocyty"
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* specimen = Reference(urn:uuid:b7a2f9d3-760f-4a89-bbbf-12199808f2e5)
* performer = Reference(urn:uuid:cc8e6b12-2b99-48cf-9c3c-3c8d74805821)
* valueQuantity.value = 3.83
* valueQuantity.unit = "10^12/L"
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#10*12/L
* interpretation = $ObservationInterpretation#N "Normal"

Instance: Observation-Hemoglobin
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
* id = "9b4c7d7f-8495-42bc-877f-b9864317ed38"
* status = #final
* effectiveDateTime = "2025-04-24T08:00:00+02:00"
* code = $nclp#01991 "Hemoglobin"
* subject = Reference(urn:uuid:11af8e2a-3e10-426e-b80f-4c9f9c7de3c9)
* specimen = Reference(urn:uuid:b7a2f9d3-760f-4a89-bbbf-12199808f2e5)
* performer = Reference(urn:uuid:cc8e6b12-2b99-48cf-9c3c-3c8d74805821)
* valueQuantity.value = 92
* valueQuantity.unit = "g/L"
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#g/L
* interpretation = $ObservationInterpretation#L "Low"