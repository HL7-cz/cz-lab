/*

Instance: SimpleChemistryResultReport
InstanceOf: CZ_Bundle_Lab
Title: "Laboratorní výsledková zpráva"
Description: "Příklad jednoduché laboratorní výsledkové zprávy s jednu sekcí obsahující dvě biochemická vyšetření. Kazždé vyšetření je z jiného vzorku (krev a moč).
Administrativní část příkladu byla převzata z balíčku italských příkladů, takže se mohou vyskytnout určité nesrovnalosti."
Usage: #example
* identifier.system = "urn:oid:1.2.203.24341.1.10.9999.4"  // identifikační prostor vydavatele identifikátoru
* identifier.value = "422b8cb1-195d-43a1-be94-ce4f07c5676d"
* identifier.assigner.display = "Laboratoř XYZ"
* type = #document
* timestamp = "2023-03-27T13:13:19+02:00"
* entry[composition].fullUrl = "urn:uuid:26032a57-083a-4ddf-b019-e566ae02f740"  // composition
* entry[composition].resource = Inline-Instance-for-Composition-26032a57-083a-4ddf-b019-e566ae02f740
* entry[patient].fullUrl = "urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8" // Patient
* entry[patient].resource = Inline-Patient-de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8
* entry[specimen][+].fullUrl = "urn:uuid:5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb" // Specimen 1
* entry[specimen][=].resource = Inline-Instance-for-Specimen-5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb
* entry[specimen][+].fullUrl = "urn:uuid:25dfb673-e7d6-43d0-b50b-6739f1ea9c91"  // Specimen 2
* entry[specimen][=].resource = Inline-Instance-Specimen-25dfb673-e7d6-43d0-b50b-6739f1ea9c91
* entry[serviceRequest][+].fullUrl = "urn:uuid:1d4cbcd1-e0d3-49b6-92d8-1893da8d08e1"  // order:service request 1
* entry[serviceRequest][=].resource = Inline-ServiceRequest-1d4cbcd1-e0d3-49b6-92d8-1893da8d08e1
* entry[serviceRequest][+].fullUrl = "urn:uuid:3984573c-114e-4e36-9521-9280373b152d"  // order:service request 2
* entry[serviceRequest][=].resource = Inline-ServiceRequest-3984573c-114e-4e36-9521-9280373b152d
* entry[diagnosticReport][+].fullUrl = "urn:uuid:5679723c-4fae-4ba7-9f09-5438a827bfda"  // diagnostic report
* entry[diagnosticReport][=].resource = Inline-Instance-5679723c-4fae-4ba7-9f09-5438a827bfda
* entry[observation][+].fullUrl = "urn:uuid:763f7902-8103-4d10-8bd1-546a726d43ee"  // observation 1
* entry[observation][=].resource = Inline-Instance-for-Observation-763f7902-8103-4d10-8bd1-546a726d43ee
* entry[observation][+].fullUrl = "urn:uuid:18bd102e-0abf-42b0-b4e6-97e47fd385eb"  // observation 2
* entry[observation][=].resource = Inline-Instance-for-Observation-18bd102e-0abf-42b0-b4e6-97e47fd385eb
* entry[practitioner][+].fullUrl = "urn:uuid:e512e2e2-9600-4c69-a269-af3ab5421e09"  // Observation Performer: Practitioner (lab technitian)
* entry[practitioner][=].resource = Inl-Ins-Lab-technician-e512e2e2-9600-4c69-a269-af3ab5421e09
* entry[practitioner][+].fullUrl = "urn:uuid:0bbabe57-7c43-4211-9e19-81fcec65686d"  // profesisonal attester: Practitioner
* entry[practitioner][=].resource = Inline-Instance-0bbabe57-7c43-4211-9e19-81fcec65686d
* entry[practitionerRole][+].fullUrl = "urn:uuid:84476dc3-a732-455f-910e-f2b44428dcc9"  // legal attester: PractitionerRole
* entry[practitionerRole][=].resource = 84476dc3-a732-455f-910e-f2b44428dcc9
* entry[practitioner][+].fullUrl = "urn:uuid:8ba59ab8-3cad-47ef-8ba9-72d2fcb934c3"  // legal attester: Practitioner
* entry[practitioner][=].resource = 8ba59ab8-3cad-47ef-8ba9-72d2fcb934c3
* entry[practitionerRole][+].fullUrl = "urn:uuid:88868d3e-7ab1-4ee5-983e-b979c4971f5c"  // Author 1: Practitioner role
* entry[practitionerRole][=].resource = Inline-Instance-for-PractiotionerRole-88868d3e-7ab1-4ee5-983e-b979c4971f5c
* entry[practitioner][+].fullUrl = "urn:uuid:ab279a0b-320f-483b-9a5d-f1f7e8ceacb2"  // Author 1: Practitioner
* entry[practitioner][=].resource = Inl-Instance-Practitioner-ab279a0b-320f-483b-9a5d-f1f7e8ceacb2
* entry[practitionerRole][+].fullUrl = "urn:uuid:84b2e517-abc2-4268-975d-b12fa8174d30"  // Author 2: Practitioner role
* entry[practitionerRole][=].resource = Inline-Instance-for-PractitionerRole-84b2e517-abc2-4268-975d-b12fa8174d30
* entry[practitioner][+].fullUrl = "urn:uuid:68740937-f732-4ff9-a2e4-bf502d2d125f"  // Author 2: Practitioner
* entry[practitioner][=].resource = Inline-Instance-68740937-f732-4ff9-a2e4-bf502d2d125f
* entry[organization][+].fullUrl = "urn:uuid:ce122b36-f942-4cee-8c6d-b13ece8cf23c" // custodian: Organization
* entry[organization][=].resource = Inline-Instance-ce122b36-f942-4cee-8c6d-b13ece8cf23c

Instance: Inline-Instance-for-Composition-26032a57-083a-4ddf-b019-e566ae02f740
InstanceOf: CZ_CompositionLabReport
Usage: #inline
* id = "26032a57-083a-4ddf-b019-e566ae02f740"
* language = #cs-CZ
* identifier.system = "urn:oid:1.2.203.24341.1.10.99999.4"  // identifikátor odpovídá elementu setId v CDA a má obdobný význam
* identifier.value = "432e5da7-8132-471d-82f5-ce3b323a053f"
* identifier.assigner.display = "Laboratoř XYZ"
* status = #final
* type = http://loinc.org#11502-2 "Laboratory report"   // pro obsah dokumentu se používají typy kódované v systému LOINC, zde je kód fixní
* type.text = "Laboratorní zpráva"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* date = "2022-03-30T11:24:26+01:00"
* author[+] = Reference(urn:uuid:88868d3e-7ab1-4ee5-983e-b979c4971f5c)   // zpráva má dva autory
* author[+] = Reference(urn:uuid:84b2e517-abc2-4268-975d-b12fa8174d30)
* title = "Laboratorní zpráva"
* confidentiality = #N   // Note R5: Confidentiality should be expressed in Bundle.meta.security element!
* attester[+].mode = #professional
* attester[=].party = Reference(urn:uuid:0bbabe57-7c43-4211-9e19-81fcec65686d)
* attester[+].mode = #legal
* attester[=].time = "2022-03-25T11:00:00+01:00"
* attester[=].party = Reference(urn:uuid:84476dc3-a732-455f-910e-f2b44428dcc9)
* custodian = Reference(urn:uuid:ce122b36-f942-4cee-8c6d-b13ece8cf23c)
//* event.period.start = "2022-03-24T11:24:26+01:00"
//* event.detail = Reference(urn:uuid:1b4b120e-0371-4878-b4c9-b69434e84c72)
* section.title = "Laboratorní výsledková zpráva"
* section.code = $loinc#18719-5 "Biochemická studie"
* section.code.text = "Biochemie"
* section.section.title = "Vyšetření moči a krve"
//* section.section.code.coding[+] = http://loinc.org#14957-5 "Microalbumin [Mass/volume] in Urine"
//* section.section.code.coding[+] = urn:oid:2.16.840.1.113883.2.9.2.30.6.11#0090334.02 "XXX"
//* section.section.code.text = "Microalbumin Massa/Volume in Urine"
* section.section.text.status = #generated
* section.section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
    <ul>
        <li>
            <table id=\"note1\">
                <thead>
                    <tr>
                        <th>Test</th>
                        <th>Metoda měření</th>
                        <th>Typ vzorku</th>
                        <th>Výsledek</th>
                        <th>Poznámky a komentáře</th>
                        <th>Jednotka měření</th>
                        <th>Referenční meze</th>
                        <th>Typ referenčních mezí</th>
                        <th>Interpretace</th>
                        <th>Multimediální přílohy</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Urea, látková konc.</td>
                        <td>Absorpční spektrofotometrie</td>
                        <td>Moč</td>
                        <td>60</td>
                        <td />
                        <td>mmol/L</td>
                        <td> 67 - 580 </td>
                        <td />
                        <td>&lt;&lt;&lt;</td>
                        <td />
                    </tr>
                </tbody>
                <tbody>
                    <tr>
                        <td>Sodík, látková konc.</td>
                        <td>Absorpční spektrofotometrie</td>
                        <td>Sérum</td>
                        <td>157</td>
                        <td />
                        <td>mmol/L</td>
                        <td> 136 - 145 </td>
                        <td />
                        <td>&gt;&gt;&gt;&gt;</td>
                        <td />
                    </tr>
                </tbody>
            </table>
        </li>
    </ul>
</div>"
//* section.section.entry = Reference(urn:uuid:763f7902-8103-4d10-8bd1-546a726d43ee)
* section.entry = Reference(urn:uuid:763f7902-8103-4d10-8bd1-546a726d43ee)

Instance: Inline-Patient-de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8
InstanceOf: CZ_PatientLab
Usage: #inline
* id = "de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8"
* identifier[+].type = $v2-0203#NIIP
* identifier[=].system = "https://ncez.mzcr.cz/standards/fhir/sid/rcis"
* identifier[=].value = "740512852"
* identifier[+].system = "https://ncez.mzcr.cz/standards/fhir/sid/rid"
* identifier[=].value = "456789123"
* identifier[+].type = $v2-0203#PPN
* identifier[=].system = "urn:oid:2.16.840.1.113883.4.330.203"
* identifier[=].value = "5484136"
* name[+].family = "Očkovaný"
* name[=].given[+] = "František"
* name[=].text = "František Očkovaný"
* gender = #male
* birthDate = "2000-03-21"
* address[+].use = #home
* address[=].type = #physical
* address[=].text = "Malé náměstí 13a, 150 00, Praha 5"
* address[=].line[+] = "Malé náměstí 13a"
* address[=].line[=].extension[streetName].valueString = "Malé náměstí"
* address[=].line[=].extension[houseNumber].valueString = "13a"
* address[=].city = "Praha 5"
* address[=].postalCode = "150 00"
* address[=].country = "CZ"
* telecom[+].system = #email
* telecom[=].value = "frantisek.ockovany@gmail.com"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "+420332244556"
* telecom[=].use = #mobile

* contact[+].relationship.coding[+] = $v3-RoleCode#MTH "matka"
* contact[=].relationship.coding[+] = $v2-0131#N "příbuzný"
* contact[=].name.use = #usual
* contact[=].name.family = "Mrakomorová"
* contact[=].name.given[+] = "Biologická"
* contact[=].name.given[+] = "Matka"
* contact[=].name.text = "Biologická Matka Mrakomorová"
* contact[=].telecom[+].use = #mobile
* contact[=].telecom[=].system = #phone
* contact[=].telecom[=].value = "+420 604 123 456"

* contact[+].relationship.coding[+] = $v3-RoleCode#FRND "přítel/přítelkyně"
* contact[=].relationship.coding[+] = $v2-0131#C "Emergentní kontakt"
* contact[=].name.use = #usual
* contact[=].name.family = "Dlouhá"
* contact[=].name.given[0] = "Alena"
* contact[=].telecom.system = #phone
* contact[=].telecom.value = "+420 601 111 111"
* contact[=].telecom.use = #home
* contact[=].address[+].use = #home
* contact[=].address[=].type = #physical
* contact[=].address[=].text = "Horná ulica 18, 123 45, Trenčín, Slovensko"
* contact[=].address[=].line[+] = "Horná ulica 18"
* contact[=].address[=].line[=].extension[streetName].valueString = "Horná ulica"
* contact[=].address[=].line[=].extension[houseNumber].valueString = "18"
* contact[=].address[=].city = "Trenčín"
* contact[=].address[=].postalCode = "123 45"
* contact[=].address[=].country = "SK"

* communication.language = urn:ietf:bcp:47#cs
* generalPractitioner.identifier.system = "https://ncez.mzcr.cz/standards/fhir/sid/nrzp"
* generalPractitioner.identifier.value = "123456789"
* generalPractitioner.display = "MUDr. Josef Švejk"


Instance: Inline-Instance-for-Specimen-5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb  // specimen 1 - Urine
InstanceOf: CZ_SpecimenLab
Usage: #inline
* id = "5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb"
* type = $sct#122575003	"Urine specimen"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)

Instance: Inline-Instance-Specimen-25dfb673-e7d6-43d0-b50b-6739f1ea9c91    // specimen 2 - Blood
InstanceOf: CZ_SpecimenLab
Usage: #inline
* id = "25dfb673-e7d6-43d0-b50b-6739f1ea9c91"
* type = $sct#119297000	"Blood specimen"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)

Instance: Inline-Instance-for-PractiotionerRole-88868d3e-7ab1-4ee5-983e-b979c4971f5c  // autor 1: role
InstanceOf: CZ_PractitionerRoleLab
Usage: #inline
* id = "88868d3e-7ab1-4ee5-983e-b979c4971f5c"
* practitioner = Reference(urn:uuid:ab279a0b-320f-483b-9a5d-f1f7e8ceacb2)

Instance: Inl-Instance-Practitioner-ab279a0b-320f-483b-9a5d-f1f7e8ceacb2  // autor 1
InstanceOf: CZ_Practitioner
Usage: #inline
* identifier.system = "https://ncez.mzcr.cz/standards/fhir/sid/nrzp"
* identifier.value = "1234567893"
* identifier.assigner.display = "NRZP"
* name.family = "1"
* name.given = "Autor"
* name.prefix = "Dr."
* telecom[+].system = #email
* telecom[=].value = "matteo.cervone@gmail.it"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "matteo.cervone@pec.it"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "3478129873"
* telecom[=].use = #mobile
* address.line = "Via Milano 7"
* address.line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-censusTract"
* address.line.extension.valueString = "058091"
* address.city = "Roma"
* address.district = "RM"
* address.state = "120"
* address.postalCode = "00184"
* address.country = "100"


Instance: Inline-Instance-for-PractitionerRole-84b2e517-abc2-4268-975d-b12fa8174d30  // autor 2: role
InstanceOf: CZ_PractitionerRoleLab
Usage: #inline
* id = "84b2e517-abc2-4268-975d-b12fa8174d30"
* practitioner = Reference(urn:uuid:68740937-f732-4ff9-a2e4-bf502d2d125f)

Instance: Inline-Instance-68740937-f732-4ff9-a2e4-bf502d2d125f  // autor 2
InstanceOf: CZ_Practitioner
Usage: #inline
* id = "68740937-f732-4ff9-a2e4-bf502d2d125f"
* identifier.system = "https://ncez.mzcr.cz/standards/fhir/sid/nrzp"
* identifier.value = "1234567894"
* identifier.assigner.display = "NRZP"
* name.family = "2"
* name.given = "Autor"

Instance: Inline-Instance-ce122b36-f942-4cee-8c6d-b13ece8cf23c   // custodian
InstanceOf: CZ_Organization
Usage: #inline
* id = "ce122b36-f942-4cee-8c6d-b13ece8cf23c"
* identifier.system = "https://ncez.mzcr.cz/standards/fhir/sid/nrpzs"
* identifier.value = "120148"
* identifier.assigner.display = "Ministerstvo zdravotnictví"
* name = "Laboratoř XYZ"
* telecom.system = #phone
* telecom.value = "390 666 0581"
* telecom.use = #work
* address[+].line[+] = "Ulice 1600/15"
* address[=].line[=].extension[streetName].valueString = "Ulice"
* address[=].line[=].extension[houseNumber].valueString = "1600/15"
* address.city = "Zlín"
* address.postalCode = "16137"
* address.country = "CZ"

Instance: Inline-Instance-0bbabe57-7c43-4211-9e19-81fcec65686d  // professional attester
InstanceOf: CZ_Practitioner
Usage: #inline
* id = "0bbabe57-7c43-4211-9e19-81fcec65686d"
* identifier.system = "https://ncez.mzcr.cz/standards/fhir/sid/nrzp"
* identifier.value = "1234567892"
* identifier.assigner.display = "NRZP"
* name.family = "Validátor"
* name.given = "Zodpovědný"
* telecom.system = #phone
* telecom.value = "603123456"
* telecom.use = #work


Instance: Inl-Ins-Lab-technician-e512e2e2-9600-4c69-a269-af3ab5421e09  // laborant: performer
InstanceOf: CZ_Practitioner
Usage: #inline
* id = "e512e2e2-9600-4c69-a269-af3ab5421e09"
* identifier.system = "https://ncez.mzcr.cz/standards/fhir/sid/nrzp"
* identifier.value = "1234567890"
* identifier.assigner.display = "NRZP"
* name.family = "Technik/laborant"
* name.given = "Laboratorní"
* telecom.system = #phone
* telecom.value = "603 123 456"
* telecom.use = #work


Instance: 84476dc3-a732-455f-910e-f2b44428dcc9   // legal attester: role
InstanceOf: CZ_PractitionerRoleLab
Usage: #inline
* practitioner = Reference(urn:uuid:8ba59ab8-3cad-47ef-8ba9-72d2fcb934c3)

Instance: 8ba59ab8-3cad-47ef-8ba9-72d2fcb934c3  // legal attester
InstanceOf: CZ_Practitioner
Usage: #inline
* identifier.system = "https://ncez.mzcr.cz/standards/fhir/sid/nrzp"
* identifier.value = "1234567891"
* identifier.assigner.display = "NRZP"
* name.family = "Laboratoře"
* name.given = "Primář"
* name.prefix = "MUDr."
* telecom[+].system = #email
* telecom[=].value = "primar.laboratore@laborator.cz"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "330987986"
* telecom[=].use = #mobile
* address[+].line[+] = "Ulice 123"
* address[=].line[=].extension[streetName].valueString = "Ulice"
* address[=].line[=].extension[houseNumber].valueString = "123"
* address.city = "Zlín"
* address.postalCode = "15164"
* address.country = "CZ"

Instance: Inline-ServiceRequest-1d4cbcd1-e0d3-49b6-92d8-1893da8d08e1  // objednávka vyšetření 1
InstanceOf: CZ_ServiceRequestLab
Usage: #inline
* id = "1d4cbcd1-e0d3-49b6-92d8-1893da8d08e1"
* identifier.system = "urn:oid:1.2.203.24341.1.10.8888.4"
* identifier.value = "5267810d-380e-4ab0-b8aa-bae165945b63"
* identifier.assigner.display = "Nemocnice okresní"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* priority = #asap
* code = $nclp#03085 "Urea (S; látková konc. [mmol/l] *)"
* code.text = "Urea (S; látková konc. [mmol/l] *)"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* specimen = Reference(urn:uuid:5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb)   // urine specimen

Instance: Inline-ServiceRequest-3984573c-114e-4e36-9521-9280373b152d    // objednávka vyšertření 2
InstanceOf: CZ_ServiceRequestLab
Usage: #inline
* id = "3984573c-114e-4e36-9521-9280373b152d"
* identifier.system = "urn:oid:1.2.203.24341.1.10.8888.4"
* identifier.value = "7065bc3a-8da9-439f-8980-6bc17531599a"
* identifier.assigner.display = "Nemocnice okresní"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* priority = #asap
* code = $nclp#2503 "Na (S; látková konc. [mmol/l] *)"
* code.text = "Na (S; látková konc. [mmol/l] *)"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* specimen = Reference(urn:uuid:25dfb673-e7d6-43d0-b50b-6739f1ea9c91)   // blood specimen

Instance: Inline-Instance-5679723c-4fae-4ba7-9f09-5438a827bfda
InstanceOf: CZ_DiagnosticReportLab
Usage: #inline
* id = "5679723c-4fae-4ba7-9f09-5438a827bfda"
* extension[DiagnosticReportCompositionR5].url = $diagnostic-report-composition-r5
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/26032a57-083a-4ddf-b019-e566ae02f740)
* status = #registered
* category = $v2-0074#LAB "Laboratory"
* code = $loinc#18719-5 "CHEMISTRY STUDIES"
* code.text = "Biochemie"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* specimen[+] = Reference(urn:uuid:5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb)  // Urine specimen
* result[+] = Reference(urn:uuid:763f7902-8103-4d10-8bd1-546a726d43ee)
* specimen[+] = Reference(urn:uuid:25dfb673-e7d6-43d0-b50b-6739f1ea9c91)   // Blood specimen
* result[+] = Reference(urn:uuid:18bd102e-0abf-42b0-b4e6-97e47fd385eb)

Instance: Inline-Instance-for-Observation-763f7902-8103-4d10-8bd1-546a726d43ee
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
* id = "763f7902-8103-4d10-8bd1-546a726d43ee"
* status = #final
* code.coding[+] = $nclp#03086 "Urea (S; látková konc. [mmol/l] Absorpční spektrofotometrie)"
* code.text = "Urea, látková konc."
* method = $sct#70621000052105 "Absorpční spektrofotometrie"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer[+].display = "Eva Laborantka" // ToDo: consider cardinality
* valueQuantity.value = 60
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#mmol/L
* valueQuantity.unit = "mmol/L"
* interpretation = $obs-interpretation#LU "Significantly low"
* specimen = Reference(urn:uuid:5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb)  // urine specimen
* referenceRange.low.value = 67
* referenceRange.low.unit = "mmol/L"
* referenceRange.high.value = 580
* referenceRange.high.unit = "mmol/L"
* referenceRange.type = $reference-range-meaning#normal "Normal Range"

Instance: Inline-Instance-for-Observation-18bd102e-0abf-42b0-b4e6-97e47fd385eb
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
* id = "18bd102e-0abf-42b0-b4e6-97e47fd385eb"
* status = #final
* code.coding[+] = $nclp#2504 "Na (S; látková konc. [mmol/l] spektrofotometrie-FAES)"
* code.text = "Sodík, látková konc."
* method = $sct#70621000052105 "Absorpční spektrofotometrie"
* subject = Reference(urn:uuid:de17bfd2-8d73-45fa-b0bb-8eb0e463ddb8)
* effectiveDateTime = "2023-03-27T11:24:26+01:00"
* performer[+].display = "Jan Laborant"  // ToDo: consider cardinality
* performer[=] = Reference(urn:uuid:e512e2e2-9600-4c69-a269-af3ab5421e09)
* valueQuantity.value = 157
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#umol/L
* valueQuantity.unit = "umol/L"
* interpretation = $obs-interpretation#HH "Critical high"
* specimen = Reference(urn:uuid:25dfb673-e7d6-43d0-b50b-6739f1ea9c91)
* referenceRange.low.value = 136
* referenceRange.low.unit = "umol/L"
* referenceRange.high.value = 144
* referenceRange.high.unit = "umol/L"
* referenceRange.type = $reference-range-meaning#normal "Normal Range"

*/