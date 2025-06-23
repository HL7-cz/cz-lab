{% include variable-definitions.md %}

### Introduction

This implementation guide is based on [FHIR version R4](https://hl7.org/fhir/R4/). Specify a set of rules that will be used for HL7 FHIR to define how to represent Laboratory Report in the Czech national context, in line with European eHN guidelines.

Its main objective is to define the content components and the preferred structure to be used to construct a laboratory report. The purpose of this standard is to define the representation of the laboratory report as a patient's medical record for the purpose of electronic exchange of health information between individuals, healthcare providers and infrastructure in the Czech Republic. 

This guide does not describe how to exchange this message.

### Content Overview

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction, scope short, references, dependencies, cross version analysis and IP statement for this guide.
- Introduction:
  - [Scope and content](scope-and-content-en.html): This segment contains general information about Laboratory Report.
  - [Background](background-en.html): This segment contains background information about Laboratory Report. 
- Functional:
  - [Use cases](use-cases-en.html): This segment contains information about use cases. 
  - [Workflow](workflow-en.html): This segment contains information about workflow. 
  - [Logical models](logical-models-en.html): This segment contains information about logical models. 
  - [Terminology considerations](terminology-considerations-en.html): This segment contains information about terminology. 
- Implementation:
  - [Mapping to profiles](model-map-en.html): This segment contains information about logical model maps to profiles.
  - [Examples](examples-en.html): This segment contains information about examples.
  - [Obligations](obligations-en.html): This segment contains information about obligations.
- About:
  - [Authors](authors-en.html): This segment contains informaction about authors.
  - [Downloads](downloads-en.html): This segment contains informaction about downloads.
  - [Dependencies](dependencies-en.html): This segment contains informaction about dependencies.
  - [Copyright](copyright-en.html): This segment contains informaction about copyright.
- [Artifacts](artifacts.html): This page provides a list of the FHIR artifacts defined as part of this implementation guide.

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

### Dependencies

{% include dependency-table.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### IP statements

{% include ip-statements.xhtml %}

