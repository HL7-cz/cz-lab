### Topic Description

#### Business Requirements

The laboratory domain is one of the fundamental domains used in diagnostics and decision-making in clinical practice. Laboratory services are in demand across all medical fields, both general and highly specialized. Not all healthcare providers have their own laboratory capacities, and some specific tests can only be performed in specialized laboratories. Therefore, access to external laboratories is essential for healthcare providers. Equally important is the method of information exchange (orders, test results, etc.) between laboratories and healthcare providers. Healthcare providers must also be able to correctly interpret results provided by a qualified laboratory. For this to be ensured flawlessly, laboratory results must be recorded and transmitted in a universal way using standardized code systems and data models for investigative techniques, specimens, results, etc. The exchange of laboratory results between departments and organizations minimizes the need for repeated testing, thereby reducing both the burden on the patient and financial costs.

In addition to their importance in patient care, there is growing demand for the secondary use of health data. Structured and standardized laboratory results are extremely valuable for clinical research, efficient healthcare management, and more.

#### Current State

In the Czech Republic, the standardization of laboratory test result exchange is currently based on the DASTA standard, a binding standard supported by the Ministry of Health of the Czech Republic, used for data transfer between healthcare information systems.

The original version of DASTA, which laid the conceptual foundations of the data standard but did not yet address the laboratory complement, was later extended to enable comprehensive communication with laboratory information systems. Alongside this, the National Laboratory Item Code System (NČLP) was developed, based on the IFCC nomenclature and in cooperation with this international organization. Later versions added data blocks, including a comprehensive solution for bidirectional formalized communication with LIS, and introduced the concept and formalization of clinical events.

Today, DASTA allows for the transfer of patient data from many areas, such as: patient identification and basic information, urgent data, payment relationships, insurance companies, work incapacity, anamnesis, medications, vaccinations, permanent and current diagnoses, various types of clinical events – orders, results, reports, and many others.

As can be seen, the DASTA standard already covers a large part of the needs of laboratory medicine as described in this functional specification. Therefore, the required changes will not be fundamental in scope, but rather extensions to the existing standard and the addition of new international formats (e.g., for cross-border data exchange) as well as effective control of their implementation.

Implementation, however, often has major shortcomings. Many systems still use obsolete versions of the standard (e.g., DASTA v3.x), implement only a basic unstructured form of laboratory findings, or neglect regular updates. The issue of keeping versions up to date applies not only to the DASTA standard but also to the NČLP.

The weaknesses of the current state mainly lie in the fact that DASTA is a purely national, proprietary standard that does not meet modern requirements for international interoperability. The second crucial factor is the absence of external compliance enforcement. The combination of both results in limited interoperability of existing laboratory data messages and documents. This issue is not unique to DASTA but is a general problem that must be solved regardless of the communication standard used.

#### Semantics

Healthcare is a knowledge-based sector, and clinical information derived from clinical data is among its key elements. The implementation of electronic medical documentation expands the capacity of information systems to collect, use, and exchange sensitive personal health data.

Semantic interoperability is the ability of information systems to exchange data without ambiguity in meaning. It is required to enable computable logic, inference, and aggregation of data across systems. This is achieved by adding metadata and linking each data element to a controlled, shared vocabulary. It is the shared vocabulary and its associated ontology links that provide the foundation for machine interpretation, inference, and logic.

##### Main Code Systems Used for Lab Test Orders and Results Reporting

Laboratory services are among the first areas in healthcare to receive support from information systems. Over the years, several coding systems have been developed worldwide. The most prominent include Logical Observation Identifiers Names and Codes (LOINC), Nomenclature for Properties and Units (NPU), and SNOMED Clinical Terms (SNOMED CT). In addition to these international ones, many national coding systems exist across Europe.

In the Czech Republic, the most widely used coding system is the National Laboratory Item Code System (NČLP), maintained centrally in cooperation with the Ministry of Health.

Sharing laboratory results across different healthcare providers requires standardized terminology that unambiguously defines the specific test, sample type (e.g., arterial blood, 24-hour urine collection, cerebrospinal fluid), anatomical location (e.g., skin from left knee), the examined system (e.g., blood, plasma, urine), analytes (also called components, such as sodium, ALT, or antibodies against Brucella), properties examined (quantities like mass concentration, volume, frequency, etc.), the specific procedure or technique, and the measurement units used.

###### NČLP (National Laboratory Item Code System)

NČLP is a data set containing basic definitions and descriptions of laboratory items required for order/result transfer and routine lab practice. It also includes definitions for creating standards for efficient care and lab quality management. It is widely used in LIS, NIS, and general practitioners’ systems.

NČLP is based on IUPAC/IFCC nomenclature for NPU codes. Although initially similar to NPU, it evolved differently in some aspects.

Practically, NČLP is mainly used with DASTA, LIS, some NIS, and is intended for use by advanced GP systems (ISPL). It is also used in laboratory/clinical domain standards, quality assessment (EQA), laboratory encyclopedias, educational texts, etc. Especially for laboratory and clinical standard creation, NČLP is continuously updated.

NČLP uses five core elements: system, component, property type, unit, and procedure. These are defined in internal code lists.

| **Element Name** | **Definition** |
|------------------|----------------|
| System | A defined structure of elements and relationships, i.e., subject of lab investigation (e.g., plasma). |
| Component | A measurable part of the system (e.g., glucose). |
| Property Type | A measurable property (e.g., mass concentration). |
| Unit | A standard measurement unit, tied to the property. |
| Procedure | The lab technique used to determine the component property. |

Each lab item is defined by a unique combination of these five elements, and assigned a unique identifier.

Additional metadata are attached to each item for use in information systems and clinical standards (e.g., name, category, ownership, data format, etc.).

Local Laboratory Code Systems (LČLP) are derived from NČLP as subsets with local adaptations, always based on a parent NČLP item.

NČLP is maintained collaboratively by clinical and informatics experts under the Ministry of Health and ČLS. It is published at [www.dastacr.cz](https://www.dastacr.cz).

###### LOINC (Logical Observation Identifier Names and Codes)

LOINC aims to be a universal code system for lab tests. It is the most widely used worldwide, covering 98% of typical lab tests (A.W. Forrey, 1996).

International EHR interoperability efforts often cite LOINC as the reference standard.

LOINC terms are defined using six axes: system, component, property type, timing, scale, and method. Unlike NČLP or NPU, it does not define standard units.

LOINC is maintained by the Regenstrief Institute, USA, and translated into many languages. More info: [https://loinc.org](https://loinc.org), or search: [https://loinc.org/search](https://loinc.org/search).

###### NPU (Nomenclature for Properties and Units)

NPU is a clinical lab terminology used in several Northern European countries. It is maintained by a joint IFCC/IUPAC committee.

National Release Centers in Denmark, Sweden, and Norway handle local translations and code subsets.

An NPU term identifies:
- the system (part of the universe);
- the component;
- the property;
- and, where applicable, the SI unit.

The International Release Centre under the Danish Health Data Authority maintains the English version. More: [https://labterminology.com](https://labterminology.com), search at: [https://www.npu-terminology.org](https://www.npu-terminology.org).

###### SNOMED CT

SNOMED CT is an international, multilingual clinical terminology covering findings, symptoms, diagnoses, procedures, body structures, organisms, substances, medications, devices, and specimens in a computable format.

Its primary purpose is to enable semantic encoding of clinical information for indexing, retrieval, aggregation, and interoperability.

SNOMED CT is managed by SNOMED International. Online search: [https://browser.ihtsdotools.org](https://browser.ihtsdotools.org).

##### NČLP and Interoperability in the EU

With increasing international collaboration needs, NČLP was mapped to an international counterpart. NPU was chosen due to its conceptual similarity. Both are based on IUPAC/IFCC nomenclature and use system, component, property type, and unit (NČLP adds procedure).

Despite shared philosophy, their structures differ due to divergent evolution. NPU was originally a nomenclature; NČLP a code system for daily practice.

Mapping between NČLP and NPU was done on several levels:
- mapping individual element code lists (systems, properties, components),
- mapping full items with quality of linkage indicated.

NPU is also being mapped to LOINC, enabling indirect NČLP–LOINC mapping.

In addition to preserving NČLP, international terminologies (notably SNOMED CT) should be supported for encoding other lab report elements. SNOMED CT is the most comprehensive health terminology today and supports qualitative result coding.

Most lab result values fall under these SNOMED CT hierarchies:
- Organism (410607006)
- Substance (105590001)
- Evaluation finding (441742003)
- Presence findings (260411009)
- Absence findings (272519000)

Using SNOMED CT for microbiology, histopathology, and similar areas should be considered—not only for EU interoperability, but also for financial reasons (maintenance, mapping costs, etc.).
