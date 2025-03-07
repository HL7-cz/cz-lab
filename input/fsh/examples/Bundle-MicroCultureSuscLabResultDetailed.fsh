/*

Instance: BundleMicroCultureSuscLabResult
InstanceOf: CZ_Bundle_Lab
Title: "Bundle Microbiology Culture + Susceptibility Lab Result"
Description: "Mikrobiologické kultivační vyšetřní + citlivost. Tento příklad je pouze ilustrativní a dosud nebyl lokalizován pro použití v ČR!"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:bfcf00e2-e2bb-4a7d-adaa-3de9d419d27e"
* type = #document
* timestamp = "2023-02-25T14:30:00+01:00"
* entry[+].fullUrl = "urn:uuid:2ae95a5c-9094-41a3-a437-ce6d34c55a54"
* entry[=].resource = Inline-Composition-micro
* entry[+].fullUrl = "urn:uuid:56f19992-e73e-45b5-bbdd-6d9aeb60b15a"
* entry[=].resource = Inline-Patient-micro
* entry[+].fullUrl = "urn:uuid:49f2b0d4-0498-4ee1-b03c-812dd89e9ba0"
* entry[=].resource = Inline-Organization-micro
* entry[+].fullUrl = "urn:uuid:ec1447fb-7c90-4065-bfa0-3da11de3364a"
* entry[=].resource = Inline-Diag-Report-micro
* entry[+].fullUrl = "urn:uuid:168d4960-0a0b-43af-8025-180f0965f324"
* entry[=].resource = Inline-Specimen-micro
* entry[+].fullUrl = "urn:uuid:333b62b2-47b0-43b5-9745-abec1f0c4656"
* entry[=].resource = Inline-Observation-gram-stain
* entry[+].fullUrl = "urn:uuid:2b209d21-dc7b-4267-a089-d3b61667945a"
* entry[=].resource = Inline-Observation-wbc
* entry[+].fullUrl = "urn:uuid:516884c4-8a1f-4e5b-8492-a7dd190f1fb0"
* entry[=].resource = Inline-Observation-gs-org1
* entry[+].fullUrl = "urn:uuid:9018b020-6e21-4afa-9131-5832132092c1"
* entry[=].resource = Inline-Observation-gs-org1-quant
* entry[+].fullUrl = "urn:uuid:25c5aa73-387d-4b80-9245-8e1adfa470f5"
* entry[=].resource = Inline-Observation-gs-org2
* entry[+].fullUrl = "urn:uuid:f2e48d96-a153-46b3-a15b-58b5aa761853"
* entry[=].resource = Inline-Observation-gs-org2-quant
* entry[+].fullUrl = "urn:uuid:297c84f2-28d6-41b5-a270-6f563ef0fdfc"
* entry[=].resource = Inline-Observation-aerobic-culture
* entry[+].fullUrl = "urn:uuid:6b103ad8-1870-45bb-884a-86675ad404f1"
* entry[=].resource = Inline-Observation-org-id1
* entry[+].fullUrl = "urn:uuid:a99f7742-c77d-4650-918b-1e9a6e28cefd"
* entry[=].resource = Inline-Observation-org-id1-growth
* entry[+].fullUrl = "urn:uuid:31747c3c-0a07-4937-9529-378140609e96"
* entry[=].resource = Inline-Observation-org-id1-susc-panel
* entry[+].fullUrl = "urn:uuid:652d16a5-91d9-40fb-9c5c-3950683e5d9f"
* entry[=].resource = Inline-Observation-org-id1-susc-1
* entry[+].fullUrl = "urn:uuid:ccf32a29-d9f5-435a-9c67-e59d7104adff"
* entry[=].resource = Inline-Observation-org-id1-susc-2
* entry[+].fullUrl = "urn:uuid:60f23552-dfb9-4142-95a2-911a41180c78"
* entry[=].resource = Inline-Observation-org-id1-susc-3
* entry[+].fullUrl = "urn:uuid:848e01c5-1565-4708-92c3-304418a43a40"
* entry[=].resource = Inline-Observation-org-id1-susc-4
* entry[+].fullUrl = "urn:uuid:424aba49-cc38-4207-b9a0-c484062ecb26"
* entry[=].resource = Inline-Observation-org-id2
* entry[+].fullUrl = "urn:uuid:ed8a917b-2e94-4aa9-b824-5dceee2deb90"
* entry[=].resource = Inline-Observation-org-id2-growth
* entry[+].fullUrl = "urn:uuid:4bc004e5-e77b-46c7-b0d5-3dfa127b48b4"
* entry[=].resource = Inline-Observation-org-id2-susc-panel
* entry[+].fullUrl = "urn:uuid:4edf70e9-b332-4804-a3bf-5d1c14e9f892"
* entry[=].resource = Inline-Observation-org-id2-susc-1
* entry[+].fullUrl = "urn:uuid:20e0ab9e-2ce4-431a-adfb-6a727bd49355"
* entry[=].resource = Inline-Observation-org-id2-susc-2
* entry[+].fullUrl = "urn:uuid:33db08be-9853-4027-ba51-ce646bea8a76"
* entry[=].resource = Inline-Observation-org-id2-susc-3
* entry[+].fullUrl = "urn:uuid:b4502905-747f-4f96-bfe0-05cc958e6510"
* entry[=].resource = Inline-Observation-org-id2-susc-4
* entry[+].fullUrl = "urn:uuid:e271a348-4f54-4667-86ed-d9ecfb7430f6"
* entry[=].resource = Inline-Observation-anaerobic-culture

Instance: Inline-Composition-micro
InstanceOf: CZ_CompositionLabReport
Usage: #inline
* id = "2ae95a5c-9094-41a3-a437-ce6d34c55a54"
//* extension[+].url = $composition-diagnostic-report-reference
//* extension[=].valueReference = Reference(DiagnosticReport/b864303b-91ab-4e29-ad74-31a7d6566875)
//* extension[diagnostic-report].valueReference = Reference(DiagnosticReport/ec1447fb-7c90-4065-bfa0-3da11de3364a)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b9fbe06b-8a5c-4b0e-be9c-fc1a52cedc3d"
* status = #final
* type = $loinc#11502-2 "Laboratorní nález"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* date = "2023-02-25T14:30:00+01:00"
* author[+].display = "MUDr. Aleš Procházka"
* title = "Laboratorní nález Mikrobiologie aerobní a anaerobní kultivace a citlivost - 25.2.2023 14:30"
* confidentiality = #N
* attester[+].mode = #legal
* attester[=].time = "2023-02-25T12:45:00+01:00"
* attester[=].party = Reference(Organization/49f2b0d4-0498-4ee1-b03c-812dd89e9ba0)
* custodian = Reference(Organization/49f2b0d4-0498-4ee1-b03c-812dd89e9ba0)
* section[+].title = "Aerobní a anaerobní bakteriální kultivace a citlivost"
* section[=].code = $loinc#18725-2 "Mikrobiologická studie"
* section[=].code.text = "Aerobní a anaerobní bakteriální kultivace a citlivost"
* section.section[+].code.text = "Gram Stain"
* section.section[=].entry = Reference(Observation/40278a69-87aa-470f-a38f-bff1e8aee175) // Inline-Observation-gram-stain
* section.section[+].code.text = "Aerobic Culture"
* section.section[=].entry = Reference(Observation/297c84f2-28d6-41b5-a270-6f563ef0fdfc) // Inline-Observation-aerobic-culture
* section.section[+].code.text = "Anaerobic Culture"
* section.section[=].entry = Reference(Observation/e271a348-4f54-4667-86ed-d9ecfb7430f6) // Inline-Observation-anaerobic-culture

Instance: Inline-Patient-micro
InstanceOf: CZ_PatientLab
Usage: #inline
* id = "56f19992-e73e-45b5-bbdd-6d9aeb60b15a"
//* identifier[+].type = $v2-0203#NIIP
* identifier[+].system = "https://ncez.mzcr.cz/standards/fhir/sid/rcis"
//* identifier[=].system = "urn:oid:1.2.203.24341.1.20.2"
* identifier[=].value = "7405128521"
* identifier[+].system = "urn:oid:1.2.203.24341.1.20.9.1"
* identifier[=].value = "A225961454"
//* identifier[+].type = $v2-0203#PPN
//* identifier[=].system = "urn:oid:2.16.840.1.113883.4.330.203"
* identifier[+].system = "https://ncez.mzcr.cz/standards/fhir/sid/rid"
* identifier[=].value = "5484136"
* name[+].family = "Pokusný"
* name[=].given[+] = "František"
* gender = #male
* birthDate = "1974-05-28"

Instance: Inline-Organization-micro
InstanceOf: Organization
Usage: #inline
* id = "49f2b0d4-0498-4ee1-b03c-812dd89e9ba0"
// * identifier[+].system = "urn:oid:1.2.203" // this is a valid OID representing the Czech Republic, though it is not being recognized as valid by the IG Publisher
* identifier[+].system = "http://example.org/czech-orgs"
* identifier[=].value = "24341"
* name = "Ministry of Health of the Czech Republic"

Instance: Inline-Diag-Report-micro
InstanceOf: cz-diagnostic-report-lab
Usage: #inline
* id = "ec1447fb-7c90-4065-bfa0-3da11de3364a"
* extension[DiagnosticReportCompositionR5].url = $diagnostic-report-composition-r5
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/4789a3ee-92b1-41b2-9b97-83daacf2a239)
* status = #final
* category = $v2-0074#LAB
* code = $loinc#18725-2 "Mikrobiologická studie"
* code.text = "Bakteriální aerobní a anaerobní kultura a citlivost"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* specimen = Reference(Specimen/bab0016e-1800-4e54-b595-72bd9041ffbc)
* result[+] = Reference(Observation/40278a69-87aa-470f-a38f-bff1e8aee175) // Inline-Observation-gram-stain
* result[+] = Reference(Observation/297c84f2-28d6-41b5-a270-6f563ef0fdfc) // Inline-Observation-aerobic-culture
* result[+] = Reference(Observation/e271a348-4f54-4667-86ed-d9ecfb7430f6) // Inline-Observation-anaerobic-culture

Instance: Inline-Specimen-micro
InstanceOf: cz-specimen-lab
Usage: #inline
* id = "168d4960-0a0b-43af-8025-180f0965f324"
* status = #available
* type = $sct#258580003 "Whole blood specimen"
//* type = $ncmpspm#SPCVUL_SWSUR "výtěr z chirurgické rány"
* collection.collectedDateTime = "2022-10-25T07:20:00+01:00"
//* container.type = $sct#706048002 "Blood specimen receptacle"


Instance: Inline-Observation-gram-stain
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "333b62b2-47b0-43b5-9745-abec1f0c4656"
* status = #final
* category[laboratory] = $observation-category#laboratory
// * category[laboratory][+] = $v2-0074#MB "Microbiology"
* code.text = "Gram Stain"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* hasMember[+] = Reference(Observation/2b209d21-dc7b-4267-a089-d3b61667945a) // Inline-Observation-wbc
* hasMember[+] = Reference(Observation/516884c4-8a1f-4e5b-8492-a7dd190f1fb0) // Inline-Observation-gs-org1
* hasMember[+] = Reference(Observation/25c5aa73-387d-4b80-9245-8e1adfa470f5) // Inline-Observation-gs-org2

Instance: Inline-Observation-wbc
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "2b209d21-dc7b-4267-a089-d3b61667945a"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#72163-9 "Leukocytes [Presence] in Specimen by Gram stain"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#2667000 "Absent"
* valueCodeableConcept.text = "None observed"

Instance: Inline-Observation-gs-org1
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "516884c4-8a1f-4e5b-8492-a7dd190f1fb0"
* status = #final
* category[laboratory] = $observation-category#laboratory
// * category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#70003006 "Gram-positive cocci in clusters"
* hasMember[+] = Reference(Observation/9018b020-6e21-4afa-9131-5832132092c1) // Inline-Observation-gs-org1-quant

Instance: Inline-Observation-gs-org1-quant
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "9018b020-6e21-4afa-9131-5832132092c1"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code.text = "Observed Quantity"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#441614007 "Present + out of +++"
* valueCodeableConcept.text = "+"

Instance: Inline-Observation-gs-org2
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "25c5aa73-387d-4b80-9245-8e1adfa470f5"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#87172008 "Gram-negative rods"
* hasMember[+] = Reference(Observation/f2e48d96-a153-46b3-a15b-58b5aa761853) // Inline-Observation-gs-org2-quant

Instance: Inline-Observation-gs-org2-quant
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "f2e48d96-a153-46b3-a15b-58b5aa761853"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code.text = "Observed Quantity"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"

Instance: Inline-Observation-aerobic-culture
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "297c84f2-28d6-41b5-a270-6f563ef0fdfc"
* status = #final
* category[laboratory] = $observation-category#laboratory
// * category[+] = $v2-0074#MB "Microbiology"
* code.text = "Aerobic Culture"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* hasMember[+] = Reference(Observation/6b103ad8-1870-45bb-884a-86675ad404f1) // Inline-Observation-org-id1
* hasMember[+] = Reference(Observation/424aba49-cc38-4207-b9a0-c484062ecb26) // Inline-Observation-org-id2

Instance: Inline-Observation-org-id1
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "6b103ad8-1870-45bb-884a-86675ad404f1"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#634-6 "Bacteria identified in Specimen by Aerobe culture"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#3092008 "Staphylococcus aureus"
* hasMember[+] = Reference(Observation/a99f7742-c77d-4650-918b-1e9a6e28cefd) // Inline-Observation-org-id1-growth
* hasMember[+] = Reference(Observation/31747c3c-0a07-4937-9529-378140609e96) // Inline-Observation-org-id1-susc-panel

Instance: Inline-Observation-org-id1-growth
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "a99f7742-c77d-4650-918b-1e9a6e28cefd"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code.text = "Microorganism Growth"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"

Instance: Inline-Observation-org-id1-susc-panel
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "31747c3c-0a07-4937-9529-378140609e96"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#29576-6 "Bacterial susceptibility panel"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* hasMember[+] = Reference(Observation/85230b86-9b90-4faf-a750-d5fa82520ce9)
* hasMember[+] = Reference(Observation/1fb64f47-4272-43ae-a119-c3b4c3367829)
* hasMember[+] = Reference(Observation/af249f79-f487-4533-9935-d19ab7043724)
* hasMember[+] = Reference(Observation/a4469ca9-d0be-4c58-853a-44cea24484b8)

Instance: Inline-Observation-org-id1-susc-1
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "652d16a5-91d9-40fb-9c5c-3950683e5d9f"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#18900-1 "Cephalothin [Susceptibility]"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 2
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

Instance: Inline-Observation-org-id1-susc-2
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "ccf32a29-d9f5-435a-9c67-e59d7104adff"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#20629-2 "levoFLOXacin [Susceptibility]"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 4
* valueQuantity.comparator = #>
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#R "Resistant"

Instance: Inline-Observation-org-id1-susc-3
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "60f23552-dfb9-4142-95a2-911a41180c78"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#18961-3 "Oxacillin [Susceptibility]"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 0.5
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

Instance: Inline-Observation-org-id1-susc-4
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "848e01c5-1565-4708-92c3-304418a43a40"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#19000-9 "Vancomycin [Susceptibility]"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 1
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

Instance: Inline-Observation-org-id2
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "424aba49-cc38-4207-b9a0-c484062ecb26"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#634-6 "Bacteria identified in Specimen by Aerobe culture"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#40886007 "Klebsiella oxytoca"
* hasMember[+] = Reference(Observation/ed8a917b-2e94-4aa9-b824-5dceee2deb90) // Inline-Observation-org-id2-growth
* hasMember[+] = Reference(Observation/4bc004e5-e77b-46c7-b0d5-3dfa127b48b4) // Inline-Observation-org-id2-susc-panel

Instance: Inline-Observation-org-id2-growth
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "ed8a917b-2e94-4aa9-b824-5dceee2deb90"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code.text = "Microorganism Growth"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#263866000 "Scanty growth"

Instance: Inline-Observation-org-id2-susc-panel
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "4bc004e5-e77b-46c7-b0d5-3dfa127b48b4"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#29576-6 "Bacterial susceptibility panel"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* hasMember[+] = Reference(Observation/7b52c241-226a-43d3-ba6a-f2ca18d5b0dd)
* hasMember[+] = Reference(Observation/3923e71d-31b0-49d3-94f0-2c311600e54d)
* hasMember[+] = Reference(Observation/66e76861-53ed-4560-aa54-2efa5b4aff64)
* hasMember[+] = Reference(Observation/5601b27d-69a7-44eb-be1a-af632aa54109)

Instance: Inline-Observation-org-id2-susc-1
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "4edf70e9-b332-4804-a3bf-5d1c14e9f892"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#18864-9 "Ampicillin [Susceptibility]"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 16
* valueQuantity.comparator = #>
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#R "Resistant"

Instance: Inline-Observation-org-id2-susc-2
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "20e0ab9e-2ce4-431a-adfb-6a727bd49355"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#18906-8 "Ciprofloxacin [Susceptibility]"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 0.5
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

Instance: Inline-Observation-org-id2-susc-3
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "33db08be-9853-4027-ba51-ce646bea8a76"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#18928-2 "Gentamicin [Susceptibility]"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 8
* valueQuantity.comparator = #>
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#R "Resistant"

Instance: Inline-Observation-org-id2-susc-4
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "b4502905-747f-4f96-bfe0-05cc958e6510"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#18932-4 "Imipenem [Susceptibility]"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity.value = 1
* valueQuantity.comparator = #<=
* valueQuantity.code = #1
* valueQuantity.system = $ucum
* interpretation = $obs-interpretation#S "Susceptible"

Instance: Inline-Observation-anaerobic-culture
InstanceOf: cz-observation-result-laboratory
Usage: #inline
* id = "e271a348-4f54-4667-86ed-d9ecfb7430f6"
* status = #final
* category[laboratory] = $observation-category#laboratory
//* category[+] = $v2-0074#MB "Microbiology"
* code = $loinc#635-3 "Bacteria identified in Specimen by Anaerobe culture"
* code.text = "Anaerobic Culture"
* subject = Reference(Patient/56f19992-e73e-45b5-bbdd-6d9aeb60b15a)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#264868006 "No growth"

*/