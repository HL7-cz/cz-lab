<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"> 
<blockquote class="stu-note"> 
<b>Informativní pro tuto verzi průvodce</b> 
<p>Do této verze příručky byly přidány povinnosti pouze jako informativní materiál ke shromažďování zpětné vazby o jejich používání.</p> 
</blockquote>
</div>

### Přehled

Povinnosti (Obligations) jsou prostředkem, kterým se v  HL7 FHIR specifikuje schopnosti, které definovaní aktéři MOHOU (MAY), MĚLI BY (SHOULD) nebo MUSÍ (SHALL) mít implementovány specifikovanými profily.

Definujeme tři základní úrovně plnění standardu:
- L1 – nestrukturovaný dokument – předáváno jako nezbytná metadata dokumentu a lidsky čitelný dokument v PDF formátu
- L2 – strukturovaný dokument rozdělený do identifikovatelných sekcí (vstupní vyšetření, anamnéza, rizikové faktory, medikace, doporučení, …), obsah je stále veden pouze v textové neformalizované formě
- L3 – Dokument je strukturovaný do identifikovatelných sekcí (stejných jako v L2), některé informace lze vést ve formalizované podobě, vybrané informace budou povinně vedeny ve formalizované a kódované formě

Tato stránka také popisuje aktéry, kteří byli definováni pro specifikaci povinností.

### Aktéři

{% include fsh-link-references.md %}

Byli specifikováni aktéři ve těchto rolích:

| Role                                                 | Popis                                                                                                                                             |
| ---------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Tvůrce úrovně L1](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L1.html)     | Jedná se o aktéra úrovně L1, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv.         |
| [Konzument úrovně L1](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L1.html) | Tento aktér představuje systém úrovně L1, který přijatou nebo načtenou zprávu používá.                                                          |
| [Tvůrce úrovně L2](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L2.html)     | Jedná se o aktéra úrovně L2, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv.         |
| [Konzument úrovně L2](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L2.html) | Tento aktér představuje systém úrovně L2, který přijatou nebo načtenou zprávu používá.                                                          |
| [Tvůrce úrovně L3](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L3.html)     | Jedná se o aktéra úrovně L3, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv.         |
| [Konzument úrovně L3](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L3.html) | Tento aktér představuje systém úrovně L3, který přijatou nebo načtenou zprávu používá.                                                          |

<div style="margin: 1.5rem 0 2rem; padding: 1.25rem 1rem; background: linear-gradient(180deg, #f8fbff 0%, #eef5fb 100%); border: 1px solid #d7e6f2; border-radius: 14px;">

{% include img.html img="obligations-actors-cs.svg" caption="Obrázek 1: Přehled aktérů povinností a jejich interakcí" width="100%" %}

</div>

### Seznam povinností

- Povinnosti pro profil Pacient ([CZ_PatientObligationsLab](StructureDefinition-cz-patient-obl-lab.html))
- Povinnosti pro profil Adresa ([CZ_AddressObligationsLab](StructureDefinition-cz-address-obl-lab.html))
- Povinnosti pro profil Bundle ([CZ_BundleObligationsLab](StructureDefinition-cz-bundle-obl-lab.html))
- Povinnosti pro profil Composition ([CZ_CompositionObligationsLab](StructureDefinition-cz-composition-obl-lab.html))
- Povinnosti pro profil Úhrada ([CZ_CoverageObligationsLab](StructureDefinition-cz-coverage-obl-lab.html))
- Povinnosti pro profil Diagnostic Report ([CZ_DiagnosticReportObligationsLab](StructureDefinition-cz-diagnosticReport-obl-lab.html))
- Povinnosti pro profil DocumentReference ([CZ_DocumentReferenceObligationsLab](StructureDefinition-cz-documentReference-obl-lab.html))
- Povinnosti pro profil Encounter ([CZ_EncounterObligationsLab](StructureDefinition-cz-encounter-obl-lab.html))
- Povinnosti pro profil Observation Result ([CZ_ObservationResultObligationsLab](StructureDefinition-cz-observationResult-obl-lab.html))
- Povinnosti pro profil Organizace ([CZ_OrganizationObligationsLab](StructureDefinition-cz-organization-obl-lab.html))
- Povinnosti pro profil Zvířecí pacient ([CZ_PatientAnimalObligationsLab](StructureDefinition-cz-patientAnimal-obl-lab.html))
- Povinnosti pro profil Praktik ([CZ_PractitionerObligationsLab](StructureDefinition-cz-practitioner-obl-lab.html))
- Povinnosti pro profil Role praktika ([CZ_PractitionerRoleObligationsImg](StructureDefinition-cz-practitionerRole-obl-img.html))
- Povinnosti pro profil Související osoba ([CZ_RelatedPersonObligationsImg](StructureDefinition-cz-relatedPerson-obl-img.html))
- Povinnosti pro profil Žádanka ([CZ_ServiceRequestObligationsLab](StructureDefinition-cz-serviceRequest-obl-lab.html))
- Povinnosti pro profil Vzorek ([CZ_SpecimenObligationsLab](StructureDefinition-cz-specimen-obl-lab.html))
- Povinnosti pro profil Příloha ([CZ_AttachmentObligationsLab](StructureDefinition-cz-attachment-obl-lab.html))
