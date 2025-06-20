{% include variable-definitions.md %}

### Úvod

Tato implementační příručka je založena na [FHIR version R4](https://hl7.org/fhir/R4/). Specifikuje sadu pravidel, které jsou použity k definování toho, jak reprezentovat Zprávu z laboratorního vyšetření v českém národním kontextu, v souladu s evropskými směrnicemi eHN.

Jeho hlavním cílem je definovat obsahové komponenty a preferovanou strukturu, která má být použita pro konstrukci Zprávy z laboratorního vyšetření. Účelem tohoto standardu je definovat formu Zprávu z laboratorního vyšetření jako lékařského záznamu pacienta za účelem elektronické výměny zdravotních informací mezi jednotlivci, poskytovateli zdravotní péče a infrastrukturou v České republice.

Tato příručka nepopisuje způsob výměny této zprávy.

### Stručný rozsah

Tato příručka je rozdělena na několik stránek, které jsou uvedeny v horní části každé stránky na liště nabídek.

- [Home - Domovská stránka](index-cs.html): Tato stránka poskytuje úvodní informace, stručný rozsah použití, reference, závislosti, rozdílovou analýzu verzí a prohlášení o duševním vlastnictví.
- Introduction:
  - [Rozsah použití a obsah](scope-and-content-cs.html): Tento segment obsahuje úvodní obecné informace o Zprávě z laboratorního vyšetření.
  - [Background](background-cs.html): Tento segment obsahuje obecné informace o původu definice Zprávy z laboratorního vyšetření. 
- Functional:
  - [Případy užití](use-cases-cs.html): Tento segment obsahuje informace o případech použití. 
  - [Workflow](workflow-cs.html): Tento segment obsahuje informace o pracovním postupu. 
  - [Logické modely](logical-models-cs.html): Tento segment obsahuje informace o logických modelech. 
  - [Terminologické aspekty](terminology-considerations-cs.html): Tento segment obsahuje informace o terminologii. 
- Implementation:
  - [Mapování logického modelu](model-map-cs.html): Tento segment obsahuje informace o mapování logického modelu na profily Zprávy z laboratorního vyšetření.
  - [Příklady](examples-cs.html): Tento segment obsahuje informace o příkladech.
  - [Povinnosti](obligations-cs.html): Tento segment obsahuje informace o povinnostech.
- About:
  - [Autoři](authors-cs.html): Tento segment obsahuje informace o autorech.
  - [Downloads](downloads-cs.html): Tento segment obsahuje informace o možnostech stahování obsahu implementační specifikace.
  - [Závislosti](dependencies-cs.html): Tento segment obsahuje informace o závislostech.
  - [Autorská práva](copyright-cs.html): Tento segment obsahuje informace o autorských právech.
- [Artifacts](artifacts.html): Tato stránka poskytuje seznam FHIR artefaktů definovaných jako součást této implementační příručky.

### References

* Related specifications:
  * {{hl7XtEHR}}
    * This specification has inspired many of the design patterns defined in this IG.
  * {{czLabOrder}}
    * This specification has many of together design patterns defined in this IG.
  * {{hl7EuLab}}
    * This specification has many of together design patterns defined in this IG.
  * {{czCore}}
    * Where possible this specification has been aligned with choices made in CZ core.

### Závisloti

{% include dependency-table.xhtml %}

### Rozdílová analýza verzí

{% include cross-version-analysis.xhtml %}

### Prohlášení o duševním vlastnictví

{% include ip-statements.xhtml %}

